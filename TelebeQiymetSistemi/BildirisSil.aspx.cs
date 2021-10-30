using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class BildirisSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BILDIRISID"].ToString());
            DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter dt = new DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter();
            dt.BildirisSil(id);
            Response.Redirect("BildirisListi.aspx");
        }
    }
}