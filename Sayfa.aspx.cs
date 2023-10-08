using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sayfa : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (RouteData.Values["link"] != null)
            {
               string  Sayfaci = RouteData.Values["link"].ToString();
               
                SayfaData.SelectCommand = "exec SayfaGetir @link ='" + Sayfaci + "'";
                SayfaRepeat.DataSource = SayfaData;
                SayfaRepeat.DataBind();
                MenuListeData.SelectCommand= "exec YanKategori @kt ='" + Sayfaci + "'";
                YanMenuRpt.DataSource = MenuListeData;
                YanMenuRpt.DataBind();
                Yardimci Yd = new Yardimci();
                Yd.SayfaGetir(RouteData.Values["link"].ToString());
                Page.Title = "TÜSPE -  " + Yd.Sayfa_link_adi;
                string metin = "";
                string[] Keyword = Yd.Sayfa_link_adi.Split(' ');
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