using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class Bildirisler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter dt = new DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter();
            Repeater1.DataSource = dt.BildirisListi();
            Repeater1.DataBind();
        }
    }
}