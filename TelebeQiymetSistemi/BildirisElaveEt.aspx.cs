using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class BildirisElaveEt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBL_MUELLIMLERTableAdapter dt = new DataSet1TableAdapters.TBL_MUELLIMLERTableAdapter();
                DropDownList1.DataSource = dt.MuellimlerListi();
                DropDownList1.DataTextField = "MLMADSOYAD";
                DropDownList1.DataValueField = "MLMID";
                DropDownList1.DataBind();
            }
        }

        protected void btnElaveEt_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter dt = new DataSet1TableAdapters.TBL_BILDIRISLERTableAdapter();
            dt.BildirisElaveEt(txtBildirisBasliq.Text, txtaMezmun.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("BildirisListi.aspx");
        }
    }
}