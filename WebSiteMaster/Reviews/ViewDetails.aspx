<%@ Page Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Reviews_ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <h1><asp:Label ID="TitleLabel" runat="server"/></h1>
    <asp:Label ID="Label1" runat="server" />
    <asp:Label ID="SummaryLabel" runat="server" CssClass="Summary"/>
    <asp:Label ID="BodyLabel" runat="server" />

</asp:Content>

