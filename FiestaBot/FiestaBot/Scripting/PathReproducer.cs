using System;
using System.Collections.Generic;
using System.Text;
using System.Timers;
using System.Xml.Serialization;
using System.IO;
namespace FiestaBot.Scripting
{
    public class PathReproducer
    {
        private Timer mTimer;
        public MoveArray mMoveArray;
        private DateTime mStart;
        private frmMain mMain;
        private bool Running = false;
        private int MoveIndex = -1;

        public delegate void OnFinished();
        public event OnFinished OnScriptFinished;

        public PathReproducer(string mPath, frmMain mainform)
        {
            mMain = mainform;
            if (!File.Exists(mPath)) throw new FileNotFoundException();
            XmlSerializer mXml = new XmlSerializer(typeof(MoveArray));
            FileStream mScript = File.Open(mPath, FileMode.Open);
            mMoveArray = (MoveArray)mXml.Deserialize(mScript);
            mScript.Close();
        }

        public void Start()
        {
            if (Distance(mMain.Player.Pos.X, mMoveArray.StartX, mMain.Player.Pos.Y, mMoveArray.StartY) > 1000)
                return;
            mTimer = new Timer(100);
            mTimer.Elapsed += new ElapsedEventHandler(mTimer_Elapsed);
            Running = true;
            mTimer.Start();
        }

        public void Stop()
        {
            Running = false;
            mTimer.Stop();
        }

        private double Distance(int x1, int x2, int y1, int y2)
        {
            return Math.Sqrt(Math.Pow(x1 - x2, 2) + Math.Pow(y1 - y2, 2));
        }

        void mTimer_Elapsed(object sender, ElapsedEventArgs e)
        {
            if (!Running) //just incase?
            {
                mTimer.Stop();
                return;
            }

            if (MoveIndex < 0)
            {
                mMain.MovePlayer(mMoveArray.StartX, mMoveArray.StartY, false);
                ++MoveIndex;
                mStart = DateTime.Now + new TimeSpan(0,0, 2);
                return;
            }
            double passed = (DateTime.Now - mStart).TotalMilliseconds;

            if (MoveIndex == mMoveArray.MoveStamps.Count)
            {
                if (mMoveArray.MoveStamps[MoveIndex - 1].X == -1) {
                    MoveIndex = -1; //restart
                    return;
                }
                else
                {
                    Running = false;
                    mTimer.Stop();
                    if (OnScriptFinished != null) OnScriptFinished.Invoke();
                    return;
                }
            }

            if (mMoveArray.MoveStamps[MoveIndex].Span <= passed)
            {
                mMain.MovePlayer(mMoveArray.MoveStamps[MoveIndex].X, mMoveArray.MoveStamps[MoveIndex].Y, false);
                ++MoveIndex;
            }
        }
    }
}
