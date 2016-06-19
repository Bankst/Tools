using System;
using System.Collections.Generic;

namespace FiestaBot
{
    public static class Extensions
    {
        public static TValue GetOrDefault<TKey, TValue>(this IDictionary<TKey, TValue> pThis, TKey pKey, TValue pDefault)
        {
            TValue result;
            return pThis.TryGetValue(pKey, out result) ? result : pDefault;
        }
    }

    public class Position
    {
        public int X;
        public int Y;

        public Position(int pX, int pY)
        {
            this.X = pX;
            this.Y = pY;
        }
    }
}
