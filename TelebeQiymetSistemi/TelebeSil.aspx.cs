using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class TelebeSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["TLBID"].ToString());

            DataSet1TableAdapters.TBL_TELEBELERTableAdapter dt = new DataSet1TableAdapters.TBL_TELEBELERTableAdapter();
            dt.TelebeSil(id);
            Response.Redirect("Default.aspx");
        }
    }
}