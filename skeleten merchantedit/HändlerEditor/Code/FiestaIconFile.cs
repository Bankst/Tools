using System.Windows.Media.Imaging;
using System.Drawing;
using System.IO;

namespace HändlerEditor.Code
{
    public class FiestaIconFile
    {
        private readonly BitmapImage[] _bitmaps;

        public FiestaIconFile(string path)
        {
            using (Bitmap _bmp = new Bitmap(Image.FromFile(path)))
            {
                _bitmaps = new BitmapImage[64];
                for(int index = 0; index < 64; index++)
                {
                    Bitmap bmp = new Bitmap(_bmp.Width / 8, _bmp.Height / 8);
                    long x, y;
                    x = index % 8;
                    x *= (_bmp.Width / 8);
                    y = (index - (index % 8)) / 8;
                    y *= (_bmp.Height / 8);

                    long w, h;
                    w = _bmp.Width / 8;
                    h = _bmp.Height / 8;

                    for (int dx = 0; dx < w; dx++)
                        for (int dy = 0; dy < h; dy++)
                        {
                            System.Drawing.Color cl = _bmp.GetPixel((int)(x + dx), (int)(y + dy));
                            bmp.SetPixel((int)dx, (int)dy, cl);
                        }

                    MemoryStream ms = new MemoryStream();
                    bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    ms.Seek(0, SeekOrigin.Begin);
                    BitmapImage b = new BitmapImage();
                    b.BeginInit();
                    b.StreamSource = ms;
                    b.EndInit();
                    _bitmaps[index] = b;
                }
                _bmp.Dispose();
            }
        }
        public BitmapImage this[int index]
        {
            get { return _bitmaps[index]; }
        }
    }
}
