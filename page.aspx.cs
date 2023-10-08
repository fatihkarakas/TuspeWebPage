using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (RouteData.Values["link"] != null)
            {
                string Sayfaci = RouteData.Values["link"].ToString();

                SayfaData.SelectCommand = "exec SayfaGetirEn @link ='" + Sayfaci + "'";
                SayfaRepeat.DataSource = SayfaData;
                SayfaRepeat.DataBind();
                MenuListeData.SelectCommand = "exec YanKategoriEn @kt ='" + Sayfaci + "'";
                YanMenuRpt.DataSource = MenuListeData;
                YanMenuRpt.DataBind();
            }
            else
            {
                Response.Redirect("/home");
            }
        }
    }
}