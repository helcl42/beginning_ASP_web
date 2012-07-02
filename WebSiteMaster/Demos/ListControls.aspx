<%@ Page Title="List Controls Demo" Language="C#" AutoEventWireup="true" CodeFile="ListControls.aspx.cs" Inherits="Demos_ListControls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <asp:DropDownList ID="DropDownList1" runat="server">
      <asp:ListItem>C#</asp:ListItem>
      <asp:ListItem>Visual Basic</asp:ListItem>
      <asp:ListItem>CSS</asp:ListItem>
    </asp:DropDownList>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
      <asp:ListItem>C#</asp:ListItem>
      <asp:ListItem>Visual Basic</asp:ListItem>
      <asp:ListItem>CSS</asp:ListItem>
    </asp:CheckBoxList>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  </div>
  </form>
</body>
</html>
