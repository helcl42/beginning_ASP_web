<%@ Page Title="Reviews Grouped by Genre" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="AllByGenre.aspx.cs" Inherits="Reviews_AllByGenre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <h3>
                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>'>'></asp:Literal>
            </h3>
            <asp:BulletedList ID="ReviewList" DataSource='<%# Eval("Reviews") %>' DataTextField="Title" DisplayMode="Text" runat="server"></asp:BulletedList>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
