using System;
using System.IO;
using System.Xml.Serialization;
using System.Windows.Forms;
namespace QuestDataSQLConverter.Settings
{
    public class XmlSerializer<T>
    {

        public static bool Load(string path,out T pObj)
        {
            pObj = default(T);
            if (!File.Exists(path)) return false;
            try
            {
                T obj;
                using (var file = File.Open(path, FileMode.Open))
                {
                    XmlSerializer xser = new XmlSerializer(typeof(T));
                    obj = (T)xser.Deserialize(file);

                    pObj = obj;
                }
                return true; ;
            }
            catch
            {
               MessageBox.Show("Error reading settings.");
                return false;
            }
        }
        public void Write(string path)
        {
            try
            {
                if (File.Exists(path)) File.Delete(path);

                    XmlSerializer x = new XmlSerializer(typeof(T));
                    StreamWriter writer = new StreamWriter(path);
                    x.Serialize(writer, this);
                writer.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error write settings."+ex.ToString()+"");
            }
        }
    }
}
