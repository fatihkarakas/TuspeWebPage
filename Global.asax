<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(System.Web.Routing.RouteTable.Routes);

    }
    public void RegisterRoutes(System.Web.Routing.RouteCollection routes)
    {
        routes.MapPageRoute("AnaSayfa", "AnaSayfa", "~/Default.aspx");
        routes.MapPageRoute("Home", "home", "~/Home.aspx");
        routes.MapPageRoute("sayfa", "Sayfa/{link}", "~/Sayfa.aspx");
        routes.MapPageRoute("page", "page/{link}", "~/page.aspx");
        routes.MapPageRoute("sayfa1", "Sayfa", "~/Sayfa.aspx");
        routes.MapPageRoute("page1", "page", "~/page.aspx");
        routes.MapPageRoute("kategori", "kategori/{link}", "~/Kategori.aspx");
        routes.MapPageRoute("Category", "Category/{link}", "~/Category.aspx");
        routes.MapPageRoute("haber", "haber/{link}", "~/Haber.aspx");
        routes.MapPageRoute("news", "news/{link}", "~/News.aspx");
        routes.MapPageRoute("haberler", "haberler", "~/Haberler.aspx");
        routes.MapPageRoute("newslist", "newslist", "~/newslist.aspx");
        routes.MapPageRoute("iletisim", "iletisim", "~/iletisim.aspx");
        routes.MapPageRoute("contact", "contact", "~/contact.aspx");
        //routes.MapPageRoute("Makale1", "Makale", "~/Makale.aspx");
        //routes.MapPageRoute("Makale", "Makale/{adi}/{id}", "~/Makale.aspx");
        //routes.MapPageRoute("Kategori", "Kategori/{id}", "~/Kategori.aspx");
        //routes.MapPageRoute("Youtube", "Youtube", "~/Youtube.aspx");
        //routes.MapPageRoute("YoutubeId", "Youtube/{id}", "~/Youtube.aspx");
        //routes.MapPageRoute("Hakkimda", "Hakkimda", "~/hakkimda.aspx");
        //routes.MapPageRoute("Referans", "Referans", "~/Referans.aspx");
        //routes.MapPageRoute("Doviz", "Doviz", "~/Doviz.aspx");
    }

    void Application_End(object sender, EventArgs e)
    {
        // Uygulama kapanışında çalışan kod

    }

    void Application_Error(object sender, EventArgs e)
    {
        // İşlenmemiş bir hata oluştuğunda çalışan kod

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Yeni bir oturum başlatıldığında çalışan kod

    }

    void Session_End(object sender, EventArgs e)
    {
        // Oturum bittiğinde çalışan kod
        // Not: Session_End olayı yalnızca sessionstate modu
        // Web.config dosyasında InProc olarak ayarlandığında başlatılır. Oturum modu StateServer 
        // veya SQLServer olarak ayarlanırsa, olay başlatılmaz.

    }

</script>
