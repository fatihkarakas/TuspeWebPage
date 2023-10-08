<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sayfa.aspx.cs" Inherits="Sayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource runat="server" ID="SayfaData" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="MenuListeData" ConnectionString="<%$ ConnectionStrings:DB1 %>"></asp:SqlDataSource>
    <div class="div_980">
        <asp:Repeater runat="server" ID="SayfaRepeat">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <div class="div_750" align="left" id="sayfa_detay">
                    <h1><%# Eval("seo_title") %> </h1>
                    <p style="text-align: justify;"><%# Eval("html")%></p>
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
                        <a href="/sayfa/<%# Eval("seo_link_name") %>"><%# Eval("seo_title") %></a>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="sd_menu_footer"></div>
        </div>
    </div>
</asp:Content>

