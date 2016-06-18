using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FiestaLib.Util
{
    class MathUtils
    {
        private static Random rand = new Random();

        public static int RandomizeInt(int lower, int upper)
        {
            return rand.Next(lower, upper);
        }

        public static int RandomizeInt(int upper)
        {
            return RandomizeInt(0, upper);
        }

        public static short RandomizeShort(short lower, short upper)
        {
            return (short)rand.Next(lower, upper);
        }

        public static short RandomizeShort(short upper)
        {
            return RandomizeShort(0, upper);
        }
    }
}
