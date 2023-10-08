using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MenuUst_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater alt = (Repeater)e.Item.FindControl("altmenurepeater");
        int vid = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "id"));
        AltMenuGetirci.SelectCommand = "exec altmenugetir @kategorid = " + vid;
        alt.DataSource = AltMenuGetirci;
        alt.DataBind();
    }
}
