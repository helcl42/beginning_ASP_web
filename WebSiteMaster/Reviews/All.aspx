<%@ Page Title="All Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="All.aspx.cs" Inherits="Reviews_All" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ViewDetails.aspx?ReviewId=" + Eval("Id").ToString() %>' Text='<%# Eval("Title") %>' ></asp:HyperLink>
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
