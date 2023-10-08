<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
  <%--  <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
 
<script type="text/javascript">
 
// The latitude and longitude of your business / place
var position = [39.926387, 32.855911];
 
function showGoogleMaps() {
 
    var latLng = new google.maps.LatLng(position[0], position[1]);
	var merkez	=	 new google.maps.LatLng(39.924387, 32.852911);
 
    var mapOptions = {
        zoom: 16, // initialize zoom level - the max value is 21
        streetViewControl: false, // hide the yellow Street View pegman
        scaleControl: true, // allow users to zoom the Google Map
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        center: merkez
    };
 
    map = new google.maps.Map(document.getElementById('googlemaps'),
        mapOptions);
 
    // Show the default red marker at the location
    marker = new google.maps.Marker({
        position: latLng,
        map: map,
        draggable: false,
        animation: google.maps.Animation.DROP
    });
}
 
google.maps.event.addDomListener(window, 'load', showGoogleMaps);
</script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="googlemaps" style="overflow: hidden;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3060.3698731925406!2d32.982532687459916!3d39.91073820892685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d35153bcaa001b%3A0xffb2d09ee783ace5!2sAziz+Sancar+Ara%C5%9Ft%C4%B1rma+Merkezi!5e0!3m2!1sen!2str!4v1542181490384"  width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
       </div>
    <div class="div_980" align="left">
   	  <div id="iletisim_formu_div">
	 
    <table width="430" border="0" cellspacing="5" cellpadding="0">
      <tbody><tr>
              <td align="left" valign="top"><h1>TÜSPE - Türkiye Sağlık Politikaları Enstitüsü</h1>
                <table width="401" border="0" cellspacing="0" cellpadding="2">
                  <tbody><tr>
                    <td width="46" align="left" valign="middle"><strong> Adres</strong></td>
                    <td width="4" align="left" valign="middle"><strong>:</strong></td>
                    <td width="333" align="left" valign="middle">Yeni Bayındır Mahallesi,Mavi Göl Cd. No: 5 06270 Mamak/Ankara</td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><strong>Telefon</strong></td>
                    <td align="left" valign="top"><strong>:</strong></td>
                  <td align="left" valign="top">0312 920 15 00<br>
0312 920 15 01<br></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><strong>Faks</strong></td>
                    <td align="left" valign="top"><strong>:</strong></td>
                    <td align="left" valign="top">0312 920 15 26</td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><strong>E-Posta</strong></td>
                    <td align="left" valign="top"><strong>:</strong></td>
                    <td align="left" valign="top"><a href="mailto:tuspe@tuseb.gov.tr">tuspe@tuseb.gov.tr</a></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top">&nbsp;</td>
                    <td align="left" valign="top">&nbsp;</td>
                    <td align="left" valign="top">&nbsp;</td>
                  </tr>
                </tbody></table>
                               
              
<table width="100%" border="0" cellspacing="0" cellpadding="3">
                    <tbody><tr>
                      <td colspan="3" align="left" class="gri_12px"><strong class="mavi_12px">İLETİŞİM FORMU</strong><strong><br>
                      </strong></td>
                    </tr>
                    <tr>
                      <td width="20%" align="left">Ad, Soyad</td>
                      <td width="2%" align="center">:</td>
                      <td width="78%" align="left">
                          <asp:TextBox runat="server" ID="AdSoyad" CssClass="iletisim_textbox1"></asp:TextBox>
                      </td>
                    </tr>
                    <tr>
                      <td align="left">E-mail</td>
                      <td align="center">:</td>
                      <td align="left">
                           <asp:TextBox runat="server" ID="email" CssClass="iletisim_textbox1"></asp:TextBox>

                      </td>
                    </tr>
                    <tr>
                      <td align="left">Telefon</td>
                      <td align="center">:</td>
                      <td align="left">
                          <asp:TextBox runat="server" ID="Telefon" CssClass="iletisim_textbox1"></asp:TextBox>
                    </tr>
                    
                    <tr>
                      <td align="left">Mesaj</td>
                      <td align="center">:</td>
                      <td align="left">
                          <asp:TextBox runat="server" ID="TextBox1" TextMode="MultiLine" Rows="3" CssClass="iletisim_textarea1"></asp:TextBox>
                      </td>
                    </tr>
                    <tr>
                      <td align="left">Güvenlik Kodu</td>
                      <td>:</td>
                      <td align="left">
                          <asp:Image runat="server" ID="Guvenlik" />
                          <asp:TextBox runat="server" ID="GuvenlikKod" CssClass="iletisim_guvenlik_kodu2" MaxLength="8"></asp:TextBox>
                                                 
                          * Güvenlik kodunu yazınız.</td>
                    </tr>
                    <tr>
                      <td align="left">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td align="left">
                          <asp:Button runat="server" ID="Gonder" CssClass="iletisim_buton" Text="Gönder" OnClick="Gonder_Click" />
                           <asp:Label runat="server" ID="Mesaj" Visible ="false" ForeColor="Red" Font-Bold="true"> </asp:Label>
                       
                    </tr>
                  </tbody></table>
              
                </td>
            </tr>
          </tbody></table>
           
	  </div>
    </div>
</asp:Content>

