using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DragonDataSniffer
{
    class Program
    {
        static void Main(string[] args)
        {
            if(!Parser.Load())
            {
                Log.WriteLine(LogLevel.Error, "Tunnel could not be started. Errors occured.");
                Console.ReadLine();
            }

        }
    }
}
