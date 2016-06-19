using System.Windows.Media.Imaging;

namespace HändlerEditor.Code
{
    public class Item
    {
        public uint ID { get; set; }
        public string InxName { get; set; }
        public string Name { get; set; }
        public string IconFile { get; set; }
        public uint IconIndex { get; set; }
        public uint DemandLevel { get; set; }

        public BitmapImage Icon
        {
            get
            {
                if(IconBuffer.Icons.ContainsKey(IconFile))
                    return IconBuffer.Icons[IconFile][(int)IconIndex];
                return null;
            }
        }
    }
}
