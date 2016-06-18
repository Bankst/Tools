using System;
using System.IO;
using System.Text;

namespace QuestEditor
{
    public class QuestScript
    {
        public QuestScript()
        {
            Start = new QuestStream();
            Finish = new QuestStream();
            Action = new QuestStream();

            ScriptData = new byte[]
            {
                0x00, 0x00, 0xC0, 0xE4,
                0xF0, 0x03, 0x38, 0x55,
                0xEE, 0x03, 0x70, 0x0B,
                0x00, 0x01, 0x00, 0x00,
                0x00, 0x00
            };
        }

        public string Read(ScriptType type)
        {
            switch (type)
            {
                case ScriptType.Start:
                    return Start.ToString();

                case ScriptType.Action:
                    return Action.ToString();

                case ScriptType.Finish:
                    return Finish.ToString();
            }

            return string.Empty;
        }

        public void Write(ScriptType type, string data)
        {
            switch (type)
            {
                case ScriptType.Start:
                    Start.Clear();
                    Start.Write(data);
                    Start.Write(Seperator);
                    StartLength = Convert.ToInt16(Start.Length);
                    break;

                case ScriptType.Finish:
                    Finish.Clear();
                    Finish.Write(data);
                    Finish.Write(Seperator);
                    FinishLength = Convert.ToInt16(Finish.Length);
                    break;

                case ScriptType.Action:
                    Action.Clear();
                    Action.Write(data);
                    Action.Write(Seperator);
                    ActionLength = Convert.ToInt16(Action.Length);
                    break;
            }
        }

        public void Write(ScriptType type, byte[] data)
        {
            switch (type)
            {
                case ScriptType.Start:
                    Start.Clear();
                    Start.Write(data);
                    StartLength = Convert.ToInt16(Start.Length);
                    break;

                case ScriptType.Finish:
                    Finish.Clear();
                    Finish.Write(data);
                    FinishLength = Convert.ToInt16(Finish.Length);
                    break;

                case ScriptType.Action:
                    Action.Clear();
                    Action.Write(data);
                    ActionLength = Convert.ToInt16(Action.Length);
                    break;
            }
        }

        public void Write(ScriptType type, char data)
        {
            Write(type, data.ToString());
        }

        public byte[] ToArray()
        {
            QuestStream qStream;

            qStream = new QuestStream();

            qStream.Write(StartLength);
            qStream.Write(FinishLength);
            qStream.Write(ActionLength);

            qStream.Write(ScriptData);

            qStream.Write(Start.ToArray());
            qStream.Write(Action.ToArray());
            qStream.Write(Finish.ToArray());

            return qStream.ToArray();
        }

        public uint Length
        {
            get
            {
                return (uint)(StartLength + FinishLength + ActionLength);
            }
        }

        public short StartLength;
        public short FinishLength;
        public short ActionLength;

        public QuestStream Start;
        public QuestStream Finish;
        public QuestStream Action;

        public byte[] ScriptData;

        public const byte Seperator = 00;
    }
}
