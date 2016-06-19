using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace HändlerEditor.Code
{
    public static class StaticValues
    {
        public static string GetNameLine(int tab)
        {
            return string.Format("#Table	Tab{0:00}	        									\n",
                                    tab);
        }
        public static string TypeLine
        {
            get
            {
                return "#ColumnType	BYTE	String[33]	String[33]	String[33]	String[33]	String[33]	String[33]					\n";
            }
        }
        public static string ColumnLine
        {
            get
            {
                return "#ColumnName	Rec	Column00	Column01	Column02	Column03	Column04	Column05					\n";
            }
        }
        public static DataTable DataTableTemplate
        {
            get
            {
                DataTable tab = new DataTable();

                tab.Columns.Add(new DataColumn("Rec", typeof(string)));
                tab.Columns.Add(new DataColumn("Column00", typeof(string)));
                tab.Columns.Add(new DataColumn("Column01", typeof(string)));
                tab.Columns.Add(new DataColumn("Column02", typeof(string)));
                tab.Columns.Add(new DataColumn("Column03", typeof(string)));
                tab.Columns.Add(new DataColumn("Column04", typeof(string)));
                tab.Columns.Add(new DataColumn("Column05", typeof(string)));

                return tab;
            }
        }
        public static void AddFileHeader(ShineTable table)
        {
            table.FileHeader.Add("#ignore	\\o042			; ÀÎ¿ëºÎÈ£ ¹«½Ã		");
            table.FileHeader.Add("#exchange	#	\\x20		; # => space	");
        }
    }
}
