using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TelebeQiymetSistemi
{
    public partial class QiymetGuncelle : System.Web.UI.Page
    {
        int qid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                qid = Convert.ToInt32(Request.QueryString["QIYMETID"].ToString());

                DataSet1TableAdapters.TlbQiymetlerTableAdapter dt = new DataSet1TableAdapters.TlbQiymetlerTableAdapter();
                txtTelebeID.Text = dt.QiymetGetir2(qid)[0].TELEBEID.ToString();
                txtDersAd.Text = dt.QiymetGetir2(qid)[0].DERSAD;
                txtImtahan1.Text = dt.QiymetGetir2(qid)[0].IMT1.ToString();
                txtImtahan2.Text = dt.QiymetGetir2(qid)[0].IMT2.ToString();
                txtImtahan3.Text = dt.QiymetGetir2(qid)[0].IMT3.ToString();
                txtOrtalama.Text = dt.QiymetGetir2(qid)[0].ORTALAMA.ToString();
                txtHal.Text = dt.QiymetGetir2(qid)[0].HAL.ToString();
            }
        }

        protected void btnHesabla_Click(object sender, EventArgs e)
        {
            double imt1, imt2, imt3, ortalama;
            imt1 = Convert.ToInt32(txtImtahan1.Text);
            imt2 = Convert.ToInt32(txtImtahan2.Text);
            imt3 = Convert.ToInt32(txtImtahan3.Text);
            ortalama = (imt1 + imt2 + imt3) / 3;
            txtOrtalama.Text = ortalama.ToString("0.00");

            if (ortalama >= 51)
            {
                txtHal.Text = "True";
            }
            else
            {
                txtHal.Text = "False";
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            qid = Convert.ToInt32(Request.QueryString["QIYMETID"].ToString());
            DataSet1TableAdapters.TlbQiymetlerTableAdapter dt = new DataSet1TableAdapters.TlbQiymetlerTableAdapter();
            dt.QiymetGuncelle(byte.Parse(txtImtahan1.Text), byte.Parse(txtImtahan2.Text), byte.Parse(txtImtahan3.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtHal.Text), qid);
            Response.Redirect("QiymetListi.aspx");
        }
    }
}