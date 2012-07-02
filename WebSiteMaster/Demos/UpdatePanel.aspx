<%@ Page Title="UpdatePanel Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="UpdatePanel.aspx.cs" Inherits="Demos_UpdatePanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:UpdatePanel runat="server">
    <ContentTemplate>
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <asp:Button ID="Button1" runat="server" Text="Button" />
    </ContentTemplate>
  </asp:UpdatePanel>
</asp:Content>
