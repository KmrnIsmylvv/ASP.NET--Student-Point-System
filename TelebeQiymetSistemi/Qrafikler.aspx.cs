using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TelebeQiymetSistemi
{
    public partial class Qrafikler : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-50U56HO;Initial Catalog=Db_TelebeQiymetSistemiAsp;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sorgu 1
            baglanti.Open();
            SqlCommand emr = new SqlCommand("Execute QRAFIK1", baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            while (oxu.Read())
            {
                Chart5.Series["Dərslər"].Points.AddXY(Convert.ToString(oxu[0]), int.Parse(oxu[1].ToString()));
            }
            baglanti.Close();



            //Sorgu 2
            baglanti.Open();
            SqlCommand emr2 = new SqlCommand("Execute QRAFIK2", baglanti);
            SqlDataReader oxu2 = emr2.ExecuteReader();
            while (oxu2.Read())
            {
                Chart7.Series["Cinsiyyət"].Points.AddXY(Convert.ToString(oxu2[0]), int.Parse(oxu2[1].ToString()));
            }
            baglanti.Close();

            //Sorgu 3
            baglanti.Open();
            SqlCommand emr3 = new SqlCommand("Execute QRAFIK3", baglanti); 
            SqlDataReader oxu3 = emr3.ExecuteReader();
            while (oxu3.Read())
            {
                Chart8 .Series["Müəllimlər"].Points.AddXY(Convert.ToString(oxu3[0]), int.Parse(oxu3[1].ToString()));
            }
            baglanti.Close();
        }


    }
}
