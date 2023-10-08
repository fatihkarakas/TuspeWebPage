<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>TÜSPE YENİ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SliderGetir" runat="server" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SliderHaber" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="kactane" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <div id="slayt_bg" align="center">
    	<div id="banner-fade" style="height: 330px; max-width: 980px; position: relative;">

        <!-- start Basic Jquery Slider -->
        <ul class="bjqs" style="height: 330px; width: 100%; display: block;">
        
        
    <asp:Repeater ID="Slider" runat="server" DataSourceID="SliderGetir">
        <HeaderTemplate>
      
        </HeaderTemplate>
        <ItemTemplate>
   
        <li class='bjqs-slide" style="height: 330px; width: auto;  <%# Display(Container.ItemIndex.ToString()) %>'>
		<div><h3><%#Eval("r_title") %></h3>
		<p>
		<a href="<%#Eval("r_link") %>" >
		<%#Eval("r_description") %>
		</a>
		</p>
		</div>
		<a href="<%# Eval("r_link") %>" >
		<img src='<%#Eval("r_foto_url") %>' title="" alt="">
		</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="bjqs-caption"><%#Eval("r_title") %></p>
		</li>
          
           
        </ItemTemplate>
        <FooterTemplate>
          
        </FooterTemplate>
    </asp:Repeater>
</ul>
      <ol class="bjqs-markers h-centered" style="left: 387px;"><li class=""><a href="#">1</a></li><li class=""><a href="#">2</a></li><li class=""><a href="#">3</a></li><li class=""><a href="#">4</a></li><li class=""><a href="#">5</a></li><li class="active-marker"><a href="#">6</a></li><li class=""><a href="#">7</a></li><li class=""><a href="#">8</a></li></ol>
             
            </div>
            </div>
        
           
            
    <div id="slayt_alti_golge" align="center">
        <div style="width:1000px; display:inline-block;  padding-top:10px">        	
             
         
       	 <table width="980" border="0" cellspacing="0" cellpadding="0" class="anasayfa_table">
           <tbody><tr>
             <td style="text-align:left" valign="top"><div style="width: 150px; float: left; text-align: left; " class="anasayfa_basliklar">Birimler</div></td>
             <td width="237" rowspan="2" style="text-align:left" valign="top"><div class="as_duyurular_header"><a class="anasayfa_basliklar" href="/haberler">Haber &amp; Duyurular</a></div>
             	 <div class="as_duyurular" style="text-align:left">
          <asp:SqlDataSource runat="server" ID="HaberSql" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT top(4) * FROM [haberler] WHERE ([aktif_pasif] = @aktif_pasif) ORDER BY [siralama], [id] DESC">
              <SelectParameters>
                  <asp:Parameter DefaultValue="1" Name="aktif_pasif" Type="Byte" />
              </SelectParameters>
                     </asp:SqlDataSource>
                      <asp:Repeater runat="server" ID="HaberListe" DataSourceID="HaberSql">
                          <ItemTemplate>
                              <a href="/haber/<%#Eval("id") %>"><%# Eval("haber_basligi") %></a>
                          </ItemTemplate>
                      </asp:Repeater>
               
                             
                                                        </div>
             <div class="as_duyurular_footer"></div>               
             

			
			         
             
             <div class="as_duyurular_header">
             	<a class="anasayfa_basliklar" href="/Kategori/baskanin_kosesi">Başkanın Köşesi</a>
             	
             </div>
			 
             <a href='/Kategori/baskanin_kosesi'><img width="230" src="/yuklemeler/hhy_saglik_siyaset_logo_ekim2017.png"  style="    margin-bottom: 6px;
    width: 232px;"/></a>
			
			 
	
              <div class="as_duyurular" style="text-align:left">
          <asp:SqlDataSource runat="server" ID="BaskanSQl" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT TOP(3) * FROM [sayfalar] WHERE ([kategori_id] = @kategori_id) ORDER BY [id] DESC" >
              <SelectParameters>
                  <asp:Parameter DefaultValue="12" Name="kategori_id" Type="Int32" />
              </SelectParameters>
                 </asp:SqlDataSource>
                 <asp:Repeater runat="server" ID="Kose" DataSourceID="BaskanSQl">
                     <ItemTemplate>
                         <a href="/sayfa/<%# Eval("seo_link_name") %>"><%# Eval("seo_title") %></a>
                     </ItemTemplate>
                 </asp:Repeater>
                              </div>
              
             <div class="as_duyurular_footer"></div>
             
             
            
             
             
             
                </td>
           </tr>
           <tr>
             
             <td width="743" style="text-align:left" valign="top">  

			              
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/saglik-yonetimi-politikalari-birimi">Sağlık Yönetimi Politikaları</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/saglik-yonetimi-politikalari-birimi"><img src="admin/photos/180118110619.png" alt="Sağlık Yönetimi Politikaları" title="Sağlık Yönetimi Politikaları"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/saglik-ekonomisi-ve-finansmani-politikalari-birimi">Sağlık Ekonomisi&amp;Finansmanı Politikaları</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/saglik-ekonomisi-ve-finansmani-politikalari-birimi"><img src="admin/photos/160218151438.png" alt="Sağlık Ekonomisi&amp;Finansmanı Politikaları" title="Sağlık Ekonomisi&amp;Finansmanı Politikaları"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/saglik-hizmetleri-sunumu-politikalari-birimi">Sağlık Hizmetleri Sunumu Politikaları</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/saglik-hizmetleri-sunumu-politikalari-birimi"><img src="admin/photos/180118104455.png" alt="Sağlık Hizmetleri Sunumu Politikaları" title="Sağlık Hizmetleri Sunumu Politikaları"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/saglik-insangucu-politikalari-birimi">Sağlık İnsangücü Politikalari</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/saglik-insangucu-politikalari-birimi"><img src="admin/photos/180118104519.png" alt="Sağlık İnsangücü Politikalari" title="Sağlık İnsangücü Politikalari"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/saglik-endustrisi-politikalari-birimi">Sağlık Endüstrisi Politikaları</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/saglik-endustrisi-politikalari-birimi"><img src="admin/photos/180118104543.png" alt="Sağlık Endüstrisi Politikaları" title="Sağlık Endüstrisi Politikaları"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/kuresel-saglik-politikalari-birimi">Küresel Sağlık Politikaları</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/kuresel-saglik-politikalari-birimi"><img src="admin/photos/180118104612.png" alt="Küresel Sağlık Politikaları" title="Küresel Sağlık Politikaları"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/saglik-turizmi-politikalari-birimi">Sağlık Turizmi Politikalari</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/saglik-turizmi-politikalari-birimi"><img src="admin/photos/180118104635.png" alt="Sağlık Turizmi Politikalari" title="Sağlık Turizmi Politikalari"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/halk-sagligi-politikalari-birimi">Halk Sağlığı Politikaları</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/halk-sagligi-politikalari-birimi"><img src="admin/photos/180118104657.png" alt="Halk Sağlığı Politikaları" title="Halk Sağlığı Politikaları"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" style="text-align:left"><a href="/sayfa/ar-ge-proje-ve-egitim-destek-birimi">Ar-Ge, Proje, Eğitim ve Destek</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/sayfa/ar-ge-proje-ve-egitim-destek-birimi"><img src="admin/photos/180118104718.png" alt="Ar-Ge, Proje, Eğitim ve Destek" title="Ar-Ge, Proje, Eğitim ve Destek"></a></div>
             </div>   
              </td>
           </tr>
         </tbody></table>
         
         
         <div class="div_980">
                  </div>
         
        
         
         
               </div>           
    </div>
</asp:Content>

