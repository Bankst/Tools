using Quest_Editor;
using System.Windows.Forms;

namespace Quest_Editor_Form
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();

            QuestFile qFile = new QuestFile(@"C:\Users\Alex\Desktop\Quest\QuestData.shn.bak");

            int i;

            foreach (Quest q in qFile.Quests)
                foreach (QuestMob mob in q.Mobs)
                    if (mob.IsNPC > 0) MessageBox.Show(mob.IsNPC.ToString());//MessageBox.Show(q.ID + " " + mob.ID + " " + mob.IsMob);

            this.Load += MainForm_Load;
        }

        private void MainForm_Load(object sender, System.EventArgs e)
        {
            
        }
    }
}
