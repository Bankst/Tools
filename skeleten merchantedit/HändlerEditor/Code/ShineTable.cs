using System;
using System.Collections.Generic;
using System.Data;
using System.IO;

namespace HändlerEditor.Code
{
    /// <summary>
    /// Class for Shine Tables.
    /// </summary>
    public partial class ShineTable
    {
        #region Variablen und Konstructoren

        public readonly List<string> CommentHeader;
        public readonly List<string> FileHeader;
        private int _curTable;
        private bool _eof;
        private string _fileName;

        private StreamReader _srFile;
        private bool _stop;
        private StreamWriter _swFile;

        private List<Table> _tables;

        public ShineTable()
        {
            _fileName = "";

            _stop = false;
            _eof = false;

            _srFile = null;
            _swFile = null;

            FileHeader = new List<string>();
            CommentHeader = new List<string>();
            _tables = new List<Table>();

            _curTable = 0;
        }

        /// <summary>
        /// List of ShineTable.Table's in the opened File.
        /// </summary>
        public IEnumerable<Table> Tables
        {
            get { return _tables; }
        }

        #endregion

        #region Open und Save

        /// <summary>
        /// Opens a Shine Table File.
        /// </summary>
        /// <param name="fileName">Path to the File</param>
        public void Open(string fileName)
        {
            _fileName = fileName;
            ResetValues();
            _tables = new List<Table>();

            if (_srFile != null)
                _srFile.Close();
            _srFile = new StreamReader(_fileName);

            ReadFile();
            _curTable = 0;
        }

        /// <summary>
        /// Saves a Shine Table File.
        /// </summary>
        /// <param name="fileName">Path to the File</param>
        public void Save(string fileName)
        {
            _fileName = fileName;
            if (File.Exists(_fileName + ".bak"))
                File.Delete(_fileName + ".bak");
            if (File.Exists(_fileName))
            {
                File.Copy(_fileName, _fileName + ".bak");
                File.Delete(_fileName);
            }
            var tmp = File.Create(_fileName);
            tmp.Close();

            _swFile = new StreamWriter(_fileName);

            foreach (var str in FileHeader)
                _swFile.WriteLine(str);

            foreach (var str in CommentHeader)
                _swFile.WriteLine(str);

            _swFile.Flush();
            _swFile.AutoFlush = true;

            foreach (var tData in _tables)
            {
                _swFile.WriteLine();
                _swFile.WriteLine(tData.NameLine);
                _swFile.WriteLine(tData.TypeLine);
                _swFile.WriteLine(tData.CollumnNameLine);

                foreach (DataRow drData in tData.Content.Rows)
                {
                    _swFile.Write("#Record");
                    foreach (var oData in drData.ItemArray)
                    {
                        if (oData == DBNull.Value)
                        {
                            _swFile.Write("\t" + "");
                        }
                        else
                            _swFile.Write("\t" + (string) oData);
                    }
                    _swFile.WriteLine();
                }

                foreach (var comment in tData.Comments)
                    _swFile.WriteLine(comment);

                _swFile.Flush();
            }
            _swFile.WriteLine("#end");
            _swFile.Close();
        }

        #endregion

        #region alte Funktionen...

        private void NextTable()
        {
            _curTable++;
            if (_curTable >= _tables.Count)
                _curTable = _tables.Count - 1;
        }

        #endregion

        #region private Helfer funktionen

        private void ResetValues()
        {
            _eof = false;
            _stop = false;
        }

        private bool Reading()
        {
            return (!(_eof || _stop || _srFile.EndOfStream));
        }

        #endregion

        #region Verarbeitung der Datei

        private void ReadFile()
        {
            string line;

            // Verarbeite Datei
            while (Reading())
            {
                line = _srFile.ReadLine();

                if (line != null)
                {
                    var rec = line.Split('\t');
                    var inx = 0;
                    for (var i = 0; i < rec.Length; ++i)
                        if (rec[i].StartsWith("#"))
                            inx = i;

                    #region Verarbeitung

                    switch (rec[inx].ToLower())
                    {
                            // Ende der Datei
                        case "#end":
                            ProcessEnd();
                            break;

                            // Definition der Spalten-Typen (wird vorerst nur gespeichert, um danach ganze datei speichern zu können)
                        case "#columntype":
                            ProcessColumntype(line);
                            break;

                        case "#columnname":
                            ProcessColumnname(line);
                            break;

                            // Beginn einer neuen Tabelle
                        case "#table":
                            ProcessTable(line, rec, inx);
                            break;

                            // Begin einer neuen Zeile
                        case "#recordin":
                            ProcessRecordin(rec);
                            break;
                        case "#record":
                            ProcessRecord(rec, inx);
                            break;

                        default:
                            ProcessDefault(line, rec, inx);
                            break;
                    }
                }

                #endregion
            }
            _srFile.Close();
        }

        #region Verarbeitungs-Funktionen

        /// <summary>
        /// Processes a #End line
        /// </summary>
        private void ProcessEnd()
        {
            _eof = true; // Ende der Datei
        }

        /// <summary>
        /// Processes a #Columntype line.
        /// </summary>
        /// <param name="line">Complete line wich starts with "#Columntype"</param>
        private void ProcessColumntype(string line)
        {
            _tables[_curTable].TypeLine = line;
			while (_tables[_curTable].TypeLine.StartsWith("\t"))
				_tables[_curTable].TypeLine = _tables[_curTable].TypeLine.Remove(0, 1);
        }

        /// <summary>
        /// Processes a #Columnname line
        /// </summary>
        /// <param name="line">Complete line</param>
        private void ProcessColumnname(string line)
        {
            var rec = line.Split("\t\n".ToCharArray());
            var y = 0;
        	foreach (var str in rec)
        	{
        	    if (!str.StartsWith("#"))
        	        if (!_tables[_curTable].Content.Columns.Contains(str))
        	            if (!str.StartsWith(";"))
        	                if (str == "")
        	                {
        	                    _tables[_curTable].Content.Columns.Add("Empty" + y);
        	                    ++y;
        	                }
        	                else
        	                    _tables[_curTable].Content.Columns.Add(str);
        	}
        	_tables[_curTable].CollumnNameLine = line;
            while (_tables[_curTable].CollumnNameLine.StartsWith("\t"))
                _tables[_curTable].CollumnNameLine = _tables[_curTable].CollumnNameLine.Remove(0, 1);
        }

        /// <summary>
        /// Processes a #table line
        /// </summary>
        /// <param name="line"></param>
        /// <param name="rec"></param>
        /// <param name="inx"></param>
        private void ProcessTable(string line, string[] rec, int inx)
        {
            var dt = new Table {Name = rec[inx + 1], Content = new DataTable()};
            _tables.Add(dt);
            NextTable();
            _tables[_curTable].NameLine = line;
            while (_tables[_curTable].NameLine.StartsWith("\n"))
                _tables[_curTable].NameLine = _tables[_curTable].NameLine.Remove(0, 1);
        }

        /// <summary>
        /// Processes a #recordin line
        /// </summary>
        /// <param name="rec"></param>
        private void ProcessRecordin(string[] rec)
        {
			// TODO: BUG
            int nextVal;
            for (nextVal = 1; nextVal < rec.Length; nextVal++)
                if (rec[nextVal] != "")
                    break;
            var tab = new Table();
            foreach (var table in _tables)
                if (table.Name == rec[nextVal])
                    tab = table;
            var dData = tab.Content.NewRow();
            var x = 0;
            for (var i = nextVal + 1; i < rec.Length; i++)
            {
                if (x < tab.Content.Columns.Count)
                {
                    dData[x + 1] = rec[i];
                    x++;
                }
            }
            tab.Content.Rows.Add(dData);
        }

        /// <summary>
        /// processes a unknown line
        /// </summary>
        /// <param name="line"></param>
        /// <param name="rec"></param>
        /// <param name="inx"></param>
        private void ProcessDefault(string line, string[] rec, int inx)
        {
            if (_tables.Count >= 1)
            {
                // nur fals tabellen vorhanden sind
                if (rec[inx].StartsWith(";") || rec[inx].Contains(";"))
                    _tables[_curTable].Comments.Add(line);
            }
            else if (rec[inx].StartsWith(";"))
                CommentHeader.Add(line);
            else
                FileHeader.Add(line);
        }

        /// <summary>
        /// processes a #record line
        /// </summary>
        /// <param name="rec"></param>
        /// <param name="inx"></param>
        private void ProcessRecord(string[] rec, int inx)
        {
            var drData = _tables[_curTable].Content.NewRow();
            var u = 0;
            for (var i = inx + 1; i < rec.Length; i++)
            {
                if (u < _tables[_curTable].Content.Columns.Count)
                {
                    drData[u] = rec[i];
                    u++;
                }
            }

            _tables[_curTable].Content.Rows.Add(drData);
        }

        #endregion

        #endregion

        public void AddTable(Table tab)
        {
            _tables.Add(tab);
        }
    }
}