using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer
{
    public class OnHandShakeArgs : EventArgs
    {
        public OnHandShakeArgs(short pXorPos)
        {
            XorPos = pXorPos;
        }
        public short XorPos { get; private set; }
    }
}
