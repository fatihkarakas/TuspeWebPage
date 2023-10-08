<%@ Page Title="" Language="C#" MasterPageFile="~/English.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div_980">
        <asp:SqlDataSource runat="server" ID="SqlData1" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlData2" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
        <asp:SqlDataSource runat="server" ID="SqlData3" ConnectionString="<%$ ConnectionStrings:DB1 %>" SelectCommand="SELECT * FROM [kategoriler] WHERE ([aktif_pasif] = @aktif_pasif) ORDER BY [id]">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="aktif_pasif" Type="Byte" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="div_750" align="left" id="kategori_detay">
            <asp:Repeater runat="server" ID="Baslik">
                <ItemTemplate>
                    <h1><%# Eval("kategori_adi_en") %></h1>
                        <%# Kategori_Baskan(Eval("kategori_adi_en").ToString()) %>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Repeater runat="server" ID="Kategorilerim">
                <ItemTemplate>
                   
                    <a href="/page/<%# Eval("seo_link_name_en")  %>"><%# Eval("seo_title_en") %></a>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <div class="div_230" align="left">

            <div class="sd_menu_header">Menü</div>
            <div class="sd_menu" align="left">
                <asp:Repeater runat="server" ID="YanMenu" DataSourceID="SqlData3">
                    <ItemTemplate>
                        <a href="/Category/<%# Eval("kategori_seo_name_en") %>"><%# Eval("kategori_adi_en") %></a>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
            <div class="sd_menu_footer"></div>

        </div>


    </div>
</asp:Content>

