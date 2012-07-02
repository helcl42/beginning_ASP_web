<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="About_Contact" %>
<%@ Register src="../Controls/ContactForm.ascx" tagname="ContactForm" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <uc1:ContactForm ID="ContactForm1" runat="server" />
</asp:Content>
