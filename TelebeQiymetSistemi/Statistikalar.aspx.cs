using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class Statistikalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            TextBox1.Text = "Ümumi Tələbə Sayı: " + dt.Statistika1();
            TextBox2.Text = "Ümumi Müəllimlərin Sayı: " + dt.Statistika2();
            TextBox3.Text = "Ümumi Dərslərin Sayı: " + dt.Statistika3();
            TextBox4.Text = "Riyazi Analiz 1-ci İmtahandan Ən Yüksək Nəticə Göstərmiş Tələbə: " + dt.Statistika4();
            TextBox5.Text = "Proqramlaşdırmada 1-ci İmtahandan Ən Yüksək Nəticə Göstərmiş Tələbə: " + dt.Statistika5();
            TextBox6.Text = "İngilis Dilində 1-ci İmtahandan Ən Yüksək Nəticə Göstərmiş Tələbə: " + dt.Statistika6();
            TextBox7.Text = "Analitik Həndəsədə 1-ci İmtahandan Ən Yüksək Nəticə Göstərmiş Tələbə: " + dt.Statistika7();
            TextBox8.Text = "Xətti Cəbr 1-ci İmtahan Ortalaması: " + dt.Statistika8();
        }
    }
}