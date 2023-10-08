using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iletisim : System.Web.UI.Page
{
    public string gkod;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ResimOlustur();
        }
    }

    public void ResimOlustur()
    {
        string kod = "";
        kod = new Yardimci().RastgeleVeriUret();
        //Üretilen kodu Session nesnesine aktarır.
        Session.Add("kod", kod);
        gkod = kod;
        //Rastgele üretilen metini alıp resme dönüştürelim.
        //boş bir resim dosyası oluştur.
        Bitmap bmp = new Bitmap(200, 25);
        //Graphics sınıfı ile resmin kontrolunu alır.
        Graphics g = Graphics.FromImage(bmp);
        //DrawString 20‘ye 0 kordinatına kodu‘u yazdırır.
        g.DrawString(kod, new Font("Comic Sanns MS", 15), new SolidBrush(Color.Black), 20, 0);
        //Resmi binary olarak alıp sayfaya yazdırmak ıcın MemoryStream kullandık.
        MemoryStream ms = new MemoryStream();
        bmp.Save(ms, ImageFormat.Png);
        var base64Data = Convert.ToBase64String(ms.ToArray());
        Guvenlik.ImageUrl = "data:image/png;base64," + base64Data;
        g.Dispose();
        bmp.Dispose();
        ms.Close();
        ms.Dispose();
    }

    protected void Gonder_Click(object sender, EventArgs e)
    {
        Mesaj.Visible = false;
        if (AdSoyad.Text == "" || email.Text == "")
        {
            Mesaj.Visible = true;
            Mesaj.Text = "Hata !! : Form (İsim bilgisi ve Email) alanları boş olama";
            return;
        }
        if (TextBox1.Text == "" || TextBox1.Text.Length < 5)
        {
            Mesaj.Visible = true;
            Mesaj.Text = "Hata !! : Form (Mesaj) alanı boş ve 5 karakterden az olamaz";
            TextBox1.Focus();
            return;
        }
        if (Session["kod"].ToString()!= GuvenlikKod.Text || GuvenlikKod.Text =="")
        {
            Mesaj.Visible = true;
            Mesaj.Text = "Hata !! : Doğrulama kodu hatalı";
            return;
        }
        Yardimci Yd = new Yardimci();
        if (Yd.Iletisim_Ekle(AdSoyad.Text, email.Text, Telefon.Text, TextBox1.Text, IpAdres()))
        {
            Mesaj.Visible = true;
            Mesaj.Text = "Mesajınız iletilmiştir.";
            string mailbody = "Mesaj Gönderen :" + AdSoyad.Text + "<br>";
            mailbody += " Gönderen eposta :" + email.Text + "<br>";
            mailbody += " Gönderen telefon :" + Telefon.Text + "<br>";
            mailbody += " Mesaj :" + TextBox1.Text + "<br>";
            Yd.MailGonder("fatih.karakas@saglik.gov.tr", "TUSPE Iletisim Mesajı", mailbody);
            Yd.MailGonder("tuspe@tuseb.gov.tr", "TUSPE Iletisim Mesajı", mailbody);
            ResimOlustur();
            AdSoyad.Text = "";
            Telefon.Text = "";
            TextBox1.Text = "";
            GuvenlikKod.Text = "";
            email.Text = "";
        }
        else
        {
            Mesaj.Visible = true;
            Mesaj.Text = "Hata !! :" + Yd.islemhatamesaj;
        }
    }
    public string IpAdres()
    {
        string stringIpAddress;
        stringIpAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (stringIpAddress == null) //may be the HTTP_X_FORWARDED_FOR is null
        {
            stringIpAddress = Request.ServerVariables["REMOTE_ADDR"];//we can use REMOTE_ADDR
        }
        return stringIpAddress;
    }
}