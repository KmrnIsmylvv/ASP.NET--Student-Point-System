using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class TelebeElaveEt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYaddaSaxla_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_TELEBELERTableAdapter dt = new DataSet1TableAdapters.TBL_TELEBELERTableAdapter();
            dt.TelebeElaveEt(txtTlbAd.Text, txtTlbSoyad.Text, txtTlbTelefon.Text, txtTlbPoctUnvani.Text, txtTlbSekil.Text, txtTlbSifre.Text);
            Response.Redirect("Default.aspx");
        }
    }
}