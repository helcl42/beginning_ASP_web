<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
  <a href="http://p2p.wrox.com" target="_blank" runat="server" id="VerticalLink">
    <asp:Image ID="Image1" runat="server" AlternateText="This is a sample banner" ImageUrl="~/Images/Banner120x240.gif" />
  </a>
</asp:Panel>
<asp:Panel ID="HorizontalPanel" runat="server">
  <a href="http://p2p.wrox.com" target="_blank" runat="server" id="HorizontalLink">
    <asp:Image ID="Image2" runat="server" AlternateText="This is a sample banner" ImageUrl="~/Images/Banner468x60.gif" />
  </a>
</asp:Panel>
