using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class BildirisGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["BILDIRISID"].ToString());
                DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter dt = new DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter();
                txtBildirisID.Text = id.ToString();
                txtBildirisBasliq.Text = dt.BildirisSec(id)[0].BILDIRISBASLIQ;
                txtaBildirisMezmun.Value = dt.BildirisSec(id)[0].BILDIRISMEZMUN;
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter dt = new DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter();
            dt.BildirisGuncelle(txtBildirisBasliq.Text, txtaBildirisMezmun.Value, Convert.ToInt32(txtBildirisID.Text));
            Response.Redirect("BildirisListi.aspx");
        }
    }
}