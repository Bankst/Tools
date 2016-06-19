using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Drawing;

namespace FiestaMapRender
{
    public class MapRender
    {
        private string filepath;
        public MapRender(string path)
        {
            filepath = path;
        }

        public Bitmap GetBitmap()
        {
            Bitmap output;
            using (BinaryReader reader = new BinaryReader(File.Open(filepath, FileMode.Open)))
            {
                int width = reader.ReadInt32();
                int height = reader.ReadInt32();
                output = new Bitmap(width * 8, height);
                for (int y = height - 1; y >= 0; y--)
                {
                    for (int x = 0; x < width; x++)
                    {
                        byte input = reader.ReadByte();
                        for (int i = 0; i < 8; i++)
                        {
                            //we unpack the bits
                            if ((input & (byte)Math.Pow(2, i)) != 0) //read 1 bit
                            {
                                output.SetPixel((x * 8) + i, y, Color.Black);
                            }
                            else //read 0 bit
                            {
                                output.SetPixel((x * 8) + i, y, Color.White);
                            }
                        }
                    }
                }
            }
            return output;
        }
    }
}
