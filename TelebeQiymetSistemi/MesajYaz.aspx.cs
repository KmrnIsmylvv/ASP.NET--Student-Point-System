using System;

namespace TelebeQiymetSistemi
{
    public partial class MesajYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            txtGonderen.Text = Session["MLMNOMRE"].ToString();

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajYaz(txtGonderen.Text, txtAlici.Text, txtBasliq.Text, txtaMezmun.Value);
            Response.Redirect("GonderilenMesajlar.aspx");
        }
    }
}