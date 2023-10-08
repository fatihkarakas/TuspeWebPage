<%@ Page Title="" Language="C#" MasterPageFile="~/English.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
		<div><h3><%#Eval("r_title_en") %></h3>
		<p>
		<a href="<%#Eval("r_link_en") %>" >
		<%#Eval("r_description_en") %>
		</a>
		</p>
		</div>
		<a href="<%# Eval("r_link_en") %>" ">
		<img src='<%#Eval("r_foto_url_en") %>' title="" alt="">
		</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="bjqs-caption"><%#Eval("r_title_en") %></p>
		</li>
            <p style="text-align:center"></p>
          
           
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
             <td style="text-align:left" valign="top"><div style="width: 150px; float: left; text-align: left; " class="anasayfa_basliklar">
Our Departments</div></td>
             <td width="237" rowspan="2" style="text-align:left" valign="top"><div class="as_duyurular_header"><a class="anasayfa_basliklar" href="/newslist">News &amp; Events</a></div>
             	 <div class="as_duyurular" style="text-align:left">
          <asp:SqlDataSource runat="server" ID="HaberSql" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT top(5) * FROM [haberler] WHERE ([aktif_pasif] = @aktif_pasif) ORDER BY [siralama], [id] DESC">
              <SelectParameters>
                  <asp:Parameter DefaultValue="1" Name="aktif_pasif" Type="Byte" />
              </SelectParameters>
                     </asp:SqlDataSource>
                      <asp:Repeater runat="server" ID="HaberListe" DataSourceID="HaberSql">
                          <ItemTemplate>
                              <a href="/news/<%#Eval("id") %>"><%# Eval("haber_basligi_en") %></a>
                          </ItemTemplate>
                      </asp:Repeater>
               
                             
                                                        </div>
             <div class="as_duyurular_footer"></div>               
             

			
			         
             
             <div class="as_duyurular_header">
             	<a class="anasayfa_basliklar" href="/Category/baskanin_kosesi">Health & Politics Essays </a>
             	
             </div>
			 
             <a href='/Category/baskanin_kosesi'><img width="230" src="/yuklemeler/hhy_saglik_siyaset_logo_ekim2017_en.png"  style="    margin-bottom: 6px;
    width: 232px;"/></a>
			
			 
	
             <div class="as_duyurular" style="text-align:left">
          <asp:SqlDataSource runat="server" ID="BaskanSQl" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT TOP(4) * FROM [sayfalar] WHERE ([kategori_id] = @kategori_id) ORDER BY [id] DESC" >
              <SelectParameters>
                  <asp:Parameter DefaultValue="12" Name="kategori_id" Type="Int32" />
              </SelectParameters>
                 </asp:SqlDataSource>
                 <asp:Repeater runat="server" ID="Kose" DataSourceID="BaskanSQl">
                     <ItemTemplate>
                         <a href="/page/<%# Eval("seo_link_name_en") %>"><%# Eval("seo_title_en") %></a>
                     </ItemTemplate>
                 </asp:Repeater>
                              </div>
              
             <div class="as_duyurular_footer"></div>
             
             
            
             
             
             
                </td>
           </tr>
           <tr>
             
            <td width="743" align="left" valign="top">  
               
                            
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/health-management-policies">Health Management Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/health-management-policies"><img src="admin/photos/180118110622_en.png" alt="Health Management Policies" title="Health Management Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/health-economics-and-financing-policies">Health Economics&amp;Financing Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/health-economics-and-financing-policies"><img src="admin/photos/160218151442_en.png" alt="Health Economics&amp;Financing Policies" title="Health Economics&amp;Financing Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/health-services-provision-policies">Health Services Provision Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/health-services-provision-policies"><img src="admin/photos/180118104500_en.png" alt="Health Services Provision Policies" title="Health Services Provision Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/health-workforce-policies">Health Workforce Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/health-workforce-policies"><img src="admin/photos/180118104526_en.png" alt="Health Workforce Policies" title="Health Workforce Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="health-industry-policies">Health Industry Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/health-industry-policies"><img src="admin/photos/180118104547_en.png" alt="Health Industry Policies" title="Health Industry Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/global-health-policies">Global Health Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/global-health-policies"><img src="admin/photos/180118104620_en.png" alt="Global Health Policies" title="Global Health Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/health-tourism-policies">Health Tourism Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/health-tourism-policies"><img src="admin/photos/180118104639_en.png" alt="Health Tourism Policies" title="Health Tourism Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/public-health-policies">Public Health Policies</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/public-health-policies"><img src="admin/photos/180118104701_en.png" alt="Public Health Policies" title="Public Health Policies"></a></div>
             </div>   
                           
             <div class="anasayfa_kategoriler_div">
                <div class="anasayfa_kategori_basligi_div" align="left"><a href="/page/rd-project-education-and-support">R&amp;D, Project, Education and Support</a></div>
                <div class="anasayfa_kategori_resmi_div"><a href="/page/rd-project-education-and-support"><img src="admin/photos/180118104724_en.png" alt="R&amp;D, Project, Education and Support" title="R&amp;D, Project, Education and Support"></a></div>
             </div>   
              </td>
           </tr>
         </tbody></table>
         
         
         <div class="div_980">
                  </div>
         
        
         
         
               </div>           
    </div>
</asp:Content>

