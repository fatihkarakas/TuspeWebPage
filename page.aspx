<%@ Page Title="" Language="C#" MasterPageFile="~/English.master" AutoEventWireup="true" CodeFile="page.aspx.cs" Inherits="page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:SqlDataSource runat="server" ID="SayfaData" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="MenuListeData" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
    <div class="div_980">
        <asp:Repeater runat="server" ID="SayfaRepeat">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <div class="div_750" align="left" id="sayfa_detay">
                    <h1><%# Eval("seo_title_en") %> </h1>
                    <p style="text-align: justify;"><%# Eval("html_en")%></p>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        <div class="div_230">
            <div class="sd_menu_header">MENÜ</div>
            <asp:Repeater runat="server" ID="YanMenuRpt">
                <ItemTemplate>
                    <div class="sd_menu" align="left">
                        <a href="/page/<%# Eval("seo_link_name_en") %>"><%# Eval("seo_title_en") %></a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="sd_menu_footer"></div>
        </div>
    </div>
</asp:Content>

