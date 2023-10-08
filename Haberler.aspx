<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Haberler.aspx.cs" Inherits="Haberler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT * FROM [haberler] WHERE ([aktif_pasif] = @aktif_pasif) ORDER BY [siralama], [id] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="aktif_pasif" Type="Byte" />
            </SelectParameters>
        </asp:SqlDataSource>
    <div class="div_980" align="left" id="kategori_detay">  
	<h1>Haberler</h1>

          <asp:Repeater runat="server" ID="Haberlerim" DataSourceID="SqlDataSource1">
              <ItemTemplate>
                    <a href="/haber/<%# Eval("id") %>">
                    <b><%# Eval("haber_tarihi") %><b> -<%# Eval("haber_basligi") %></b></b></a>
              </ItemTemplate>
          </asp:Repeater>
       
         </div>
</asp:Content>

