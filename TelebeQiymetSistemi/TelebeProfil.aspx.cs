using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class TelebeDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNomre.Text ="Nömrə: "+ Request.QueryString["TLBNOMRE"];

            //DataSet1TableAdapters.TBL_TELEBELERTableAdapter dt = new DataSet1TableAdapters.TBL_TELEBELERTableAdapter();
      
            //txtAdSoyad.Text = dt.TelebeMelumatlariGetir(txtNomre.Text)[0].TLBAD;
        }
    }
}