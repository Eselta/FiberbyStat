using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FiberStat_Updated_V1
{
    public partial class skema_test : System.Web.UI.Page
    {
        public String kanal { get; set; }
        public String emne { get; set; }
        public String status { get; set; }
        public String kommentar { get; set; }
        public String navn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gennemse_Click(object sender, EventArgs e)
        {
            kanal = source.SelectedItem.Text;
            emne = FejlValg.SelectedItem.Text;
            status = SolvedValg.SelectedItem.Text;
            kommentar = text.InnerText;
            navn = name.InnerText;

            label.InnerText = "Fra: \t\t" + kanal + "\r\nEmne: \t\t" + emne + "\r\nStatus: \t" + status + "\r\nEventuel kommentar: \r\n" + kommentar;

            CopyButton.Visible = true;

            Page.SetFocus(CopyButton);


        }

        protected void CopyButton_Click(object sender, EventArgs e)
        {

        }
    }
}