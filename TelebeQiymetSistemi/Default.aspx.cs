using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_TELEBELERTableAdapter dt = new DataSet1TableAdapters.TBL_TELEBELERTableAdapter();
            Repeater1.DataSource = dt.TelebeListi();
            Repeater1.DataBind();
        }
    }
}