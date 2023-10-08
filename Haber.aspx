<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Haber.aspx.cs" Inherits="Haber" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="div_980">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT TOP(10)* FROM [haberler] WHERE ([aktif_pasif] = @aktif_pasif) ORDER BY [siralama], [id] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="aktif_pasif" Type="Byte" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="div_750" align="left">
            <asp:Repeater runat="server" ID="HaberDetay">
                <ItemTemplate>
<h1><%# Eval("haber_basligi") %></h1>
            <p><%# Eval("haber_html") %></p>
                </ItemTemplate>
            </asp:Repeater>
            

        </div>
        <div class="div_230">

            <div class="anasayfa_basliklar" style="margin-top: 10px" align="left">
                <div class="hd_duyurular_header"><a class="anasayfa_basliklar" href="/haberler">Haber &amp; Duyurular</a></div>
                <div class="hd_duyurular" align="left">
                    <asp:Repeater runat="server" ID="HaberList" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <a href="/haber/<%# Eval("id") %>"><%# Eval("haber_basligi") %></a>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <div class="hd_duyurular_footer"></div>

                </div>
        </div>
    </div>
</div>
</asp:Content>

