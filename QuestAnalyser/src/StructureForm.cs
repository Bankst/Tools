using ScriptNET;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using WeifenLuo.WinFormsUI.Docking;

namespace QuestDataAnalyser
{
	public partial class StructureForm : DockContent
	{

		private QuestStream mParsing;
		private Stack<StructureNode> mSubNodes = new Stack<StructureNode>();

		public StructureForm()
		{
			InitializeComponent();
		}

		public AnalyserForm MainForm { get { return ParentForm as AnalyserForm; } }
		public TreeView Tree { get { return mTree; } }


		public void ParseQuestStream(QuestStream qr)
		{
			mTree.Nodes.Clear();
			mSubNodes.Clear();
			mParsing = qr;
            try
            {
                APIAddScript("QuestScript.txt");
            }
            catch (Exception ex)
            {
                OutputForm output = new OutputForm("Script Error");
                output.Append(ex.ToString());
            }
			if (qr.Remaining > 0) mTree.Nodes.Add(new StructureNode("Undefined", qr.InnerBuffer, qr.Cursor, qr.Remaining));

		}

      
        internal void APIAddScript(string name)
        {

            try
            {
                StringBuilder scriptCode = new StringBuilder();
                if (File.Exists(@"Scripts/"+name))
                {
                    scriptCode.Append(File.ReadAllText(@"Scripts/"+name));
                    Script script = Script.Compile(scriptCode.ToString());
                    script.Context.SetItem("ScriptAPI", new ScriptAPI(this));
                    script.Execute();
                }
            }
            catch (Exception ex)
            {
                OutputForm output = new OutputForm("Script Error");
                output.Append(ex.ToString());
                output.Show(DockPanel, new Rectangle(MainForm.Location, new Size(400, 400)));
            }
        }
	
		private TreeNodeCollection CurrentNodes { get { return mSubNodes.Count > 0 ? mSubNodes.Peek().Nodes : mTree.Nodes; } }
		internal byte APIAddByte(string pName)
		{
			byte value;
			if (!mParsing.ReadByte(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 1, 1));
			return value;
		}
		internal sbyte APIAddSByte(string pName)
		{
			sbyte value;
			if (!mParsing.ReadSByte(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 1, 1));
			return value;
		}
		internal ushort APIAddUShort(string pName)
		{
			ushort value;
			if (!mParsing.ReadUShort(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 2, 2));
			return value;
		}
		internal short APIAddShort(string pName)
		{
			short value;
			if (!mParsing.ReadShort(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 2, 2));

			return value;
		}
        internal void APIDropMessage(string pMSG)
        {
            mParsing.DropMessage(pMSG);
        }
		internal uint APIAddUInt(string pName)
		{
			uint value;
			if (!mParsing.ReadUInt(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 4, 4));
			return value;
		}
		internal int APIAddInt(string pName)
		{
			int value;
			if (!mParsing.ReadInt(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 4, 4));
			return value;
		}

		internal float APIAddFloat(string pName)
		{
			float value;
			if (!mParsing.ReadFloat(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 4, 4));
			return value;
		}
		internal long APIAddLong(string pName)
		{
			long value;
			if (!mParsing.ReadLong(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 8, 8));
			return value;
		}
		internal double APIAddDouble(string pName)
		{
			double value;
			if (!mParsing.ReadDouble(out value)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - 8, 8));
			return value;
		}
		internal string APIAddString(string pName)
		{
			APIStartNode(pName);
			short size = APIAddShort("Size");
			string value = APIAddPaddedString("String", size);
			APIEndNode(false);
			return value;
		}
		internal string APIAddPaddedString(string pName, int pLength)
		{
			string value;
			if (!mParsing.ReadPaddedString(out value, pLength)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - pLength, pLength));
			return "";
		}
		internal void APIAddField(string pName, int pLength)
		{
			byte[] buffer = new byte[pLength];
			if (!mParsing.ReadBytes(buffer)) throw new Exception("Insufficient packet data");
			CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - pLength, pLength));
		}
        internal void APINulledString(string pName)
        {
            string value;
            int index;
            if (!mParsing.ReadNulledString(out value,out index)) throw new Exception("Insufficient packet data");
            CurrentNodes.Add(new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor - index - 1, index));

        }
        internal void APIAddComment(string pComment)
		{
			CurrentNodes.Add(new StructureNode(pComment, mParsing.InnerBuffer, mParsing.Cursor, 0));
		}
		internal void APIStartNode(string pName)
		{
			StructureNode node = new StructureNode(pName, mParsing.InnerBuffer, mParsing.Cursor, 0);
			if (mSubNodes.Count > 0) mSubNodes.Peek().Nodes.Add(node);
			else mTree.Nodes.Add(node);
			mSubNodes.Push(node);
		}
		internal void APIEndNode(bool pExpand)
		{
			if (mSubNodes.Count > 0)
			{
				StructureNode node = mSubNodes.Pop();
				node.Length = mParsing.Cursor - node.Cursor;
				if (pExpand) node.Expand();
			}
		}
		internal int APIRemaining() { return mParsing.Remaining; }


		private void mTree_AfterSelect(object pSender, TreeViewEventArgs pArgs)
		{
			StructureNode node = pArgs.Node as StructureNode;
			if (node == null) { MainForm.pDataForm.HexBox.SelectionLength = 0; MainForm.PropertyForm.Properties.SelectedObject = null; return; }
            MainForm.pDataForm.HexBox.SelectionStart = node.Cursor;
            MainForm.pDataForm.HexBox.SelectionLength = node.Length;
            MainForm.PropertyForm.Properties.SelectedObject = new StructureSegment(node.Buffer, node.Cursor, node.Length);
		}

		private void mTree_KeyDown(object pSender, KeyEventArgs pArgs)
		{
			MainForm.CopyPacketHex(pArgs);
		}
	}
}
