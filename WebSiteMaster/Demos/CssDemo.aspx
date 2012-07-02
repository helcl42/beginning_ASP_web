<%@ Page Title="CSS Demo" Language="C#" AutoEventWireup="true" CodeFile="CssDemo.aspx.cs" Inherits="Demos_CssDemo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <style type="text/css">
    h1
    {
      font-size: 20px;
      color: Green;
    }
    
    p
    {
      color: Blue;
      font-style: italic;
    }
    
    .RightAligned
    {
      text-align: right;
    }
  </style>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <h1>Welcome to this CSS Demo page</h1>
    <p>CSS makes it super easy to style your pages.</p>
    <p class="RightAligned">With very little code, you can quickly change the looks of a page. </p>
  </div>
  </form>
</body>
</html>
