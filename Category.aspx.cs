using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (RouteData.Values["link"] != null)
            {
                string Sayfaci = RouteData.Values["link"].ToString();
                SqlData1.SelectCommand = "select * from kategoriler where kategori_seo_name_en='" + Sayfaci + "'";
                Baslik.DataSource = SqlData1;
                Baslik.DataBind();
                SqlData2.SelectCommand = "EXEC KategoriGetirirEn @kt=" + Sayfaci;
                Kategorilerim.DataSource = SqlData2;
                Kategorilerim.DataBind();
            }
            else
            {
                Response.Redirect("/Home");
            }
        }
    }
    public string Kategori_Baskan(string veri)
    {
        string sonuc = "";
        if (veri == "Health & Politics Essays")
        {
            sonuc = "<p><img  src=\"/yuklemeler/hhy_saglik_siyaset_logo_ekim2017_en.png\" /></p>";
        }
        return sonuc;
    }
}