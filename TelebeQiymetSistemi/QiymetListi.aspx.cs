using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class QiymetListi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TlbQiymetlerTableAdapter dt = new DataSet1TableAdapters.TlbQiymetlerTableAdapter();
            Repeater1.DataSource = dt.QiymetGetir();
            Repeater1.DataBind();
        }
    }
}