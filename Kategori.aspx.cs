using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kategori : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (RouteData.Values["link"] != null)
            {
                string Sayfaci = RouteData.Values["link"].ToString();
                SqlData1.SelectCommand = "select * from kategoriler where kategori_seo_name='" + Sayfaci + "'";
                Baslik.DataSource = SqlData1;
                Baslik.DataBind();
                SqlData2.SelectCommand = "EXEC KategoriGetirir @kt=" + Sayfaci;
                Kategorilerim.DataSource = SqlData2;
                Kategorilerim.DataBind();
            }
            else
            {
                Response.Redirect("/Anasayfa");
            }
        }


    }
    public string Kategori_Baskan(string veri)
    {
        string sonuc = "";
        if (veri == "Başkanın Köşesi")
        {
            sonuc = "<p><img  src=\"/yuklemeler/hhy_saglik_siyaset_logo_ekim2017.png\" /></p>";
        }
        return sonuc;
    }
}