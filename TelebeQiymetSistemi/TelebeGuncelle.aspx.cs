using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class TelebeGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                try
                {
                     id = Convert.ToInt32(Request.QueryString["TLBID"].ToString());
                    txtTlbId.Text = id.ToString();
                    DataSet1TableAdapters.TBL_TELEBELERTableAdapter dt = new DataSet1TableAdapters.TBL_TELEBELERTableAdapter();
                    txtTlbAd.Text = dt.TelebeSec(id)[0].TLBAD;
                    txtTlbSoyad.Text = dt.TelebeSec(id)[0].TLBSOYAD;
                    txtTlbPoctUnvani.Text = dt.TelebeSec(id)[0].TLBPOCTUNVANI;
                    txtTlbTelefon.Text = dt.TelebeSec(id)[0].TLBTELEFON;
                    txtTlbSifre.Text = dt.TelebeSec(id)[0].TLBSIFRE;
                    txtTlbSekil.Text = dt.TelebeSec(id)[0].TLBSEKIL;
                }
                catch (Exception)
                {

                    txtTlbSekil.Text = "Link Daxil Edin";
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_TELEBELERTableAdapter dt = new DataSet1TableAdapters.TBL_TELEBELERTableAdapter();
            dt.TelebeGuncelle(txtTlbAd.Text, txtTlbSoyad.Text, txtTlbTelefon.Text, txtTlbPoctUnvani.Text, txtTlbSifre.Text, txtTlbSekil.Text, Convert.ToInt32(txtTlbId.Text));
            Response.Redirect("Default.aspx");
        }
    }
}