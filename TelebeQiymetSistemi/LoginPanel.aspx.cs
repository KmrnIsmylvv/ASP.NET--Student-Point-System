using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace TelebeQiymetSistemi
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-50U56HO;Initial Catalog=Db_TelebeQiymetSistemiAsp;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand emr = new SqlCommand("Select * from TBL_MUELLIMLER    where MLMNOMRE=@p1 and MLMSIFRE=@p2", baglanti);
            emr.Parameters.AddWithValue("@p1", txtIstifadeciAdi.Text);
            emr.Parameters.AddWithValue("@p2", txtSifre.Text);
            SqlDataReader oxu = emr.ExecuteReader();
            if (oxu.Read())
            {
                Session.Add("MLMNOMRE", txtIstifadeciAdi.Text);
                Response.Redirect("Default.aspx");
            }
            else
            {
                txtSifre.Text = "Yanlış Şifrə";
            }
            baglanti.Close();
        }
    }
}