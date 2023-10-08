using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Haber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (RouteData.Values["link"] != null)
            {
                string Sayfaci = RouteData.Values["link"].ToString();
                SqlDataSource1.SelectCommand = "select * from haberler where id=" + Sayfaci;
                HaberDetay.DataSource = SqlDataSource1;
                HaberDetay.DataBind();
                Yardimci Yd = new Yardimci();
                Yd.Haber(Convert.ToInt32(RouteData.Values["link"].ToString()));
                Page.Title = "TÜSPE -  " + Yd.HaberBaslik;
                string metin = "";
                string[] Keyword =  Yd.HaberBaslik.Split(' ');
                for (int i = 0; i < Keyword.Length; i++)
                {
                    metin += Keyword[i].ToString() + ",";
                }
                Page.MetaKeywords = metin;
            }
            else
            {
                Response.Redirect("/Anasayfa");
            }
        }
    }
}