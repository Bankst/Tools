using System;

namespace OSBot.Tools
{
    public static class StringHelper
    {
        public static string EscapeString(string Input, string EscapeChar = "\\")
        {
            return (Input + EscapeChar).Replace(EscapeChar + EscapeChar, EscapeChar);
        }
    }
}