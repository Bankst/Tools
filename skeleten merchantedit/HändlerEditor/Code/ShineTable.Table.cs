using System;
using System.Collections.Generic;
using System.Data;

namespace HändlerEditor.Code
{
    public partial class ShineTable
    {
        #region Nested type: Table

        public class Table
        {
            public String CollumnNameLine = "";
            public List<string> Comments;
            public DataTable Content;
            public String Name = "";
            public String NameLine = "";
            public String TypeLine = "";

            public Table()
            {
                Name = string.Empty;
                TypeLine = string.Empty;
                CollumnNameLine = string.Empty;
                Content = new DataTable();
                Comments = new List<string>();
            }
        }

        #endregion
    }
}