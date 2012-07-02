<%@ Page Title="Inline Code Demo" Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
  protected void Page_Load(object sender, EventArgs e)
  {
    Label1.Text = "Hello World; the time is now " + DateTime.Now.ToString();
  }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
  </div>
  </form>
</body>
</html>
