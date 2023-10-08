using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class News : System.Web.UI.Page
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
            }
            else
            {
                Response.Redirect("/Home");
            }
        }
    }
}