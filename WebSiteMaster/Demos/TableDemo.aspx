<%@ Page Title="Table Demo" Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="Demos_TableDemo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <style type="text/css">
    .style1
    {
      width: 100%;
    }
    .style2
    {
      width: 200px;
    }
  </style>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <table class="style1">
      <tr>
        <td class="style2">
          Bulleted List
        </td>
        <td>
          <ul>
            <li>Indie Rock</li>
            <li>Techno</li>
            <li>Punk</li>
          </ul>
        </td>
      </tr>
      <tr>
        <td class="style2">
          Numbered List
        </td>
        <td>
          <ol>
            <li>Jazz</li>
            <li>Hip Hop</li>
            <li>Rock</li>
          </ol>
        </td>
      </tr>
      <tr>
        <td class="style2">
          Link
        </td>
        <td>
          <a href="../Default.aspx">Go to the Homepage of Planet Wrox</a>
        </td>
      </tr>
    </table>
  </div>
  </form>
</body>
</html>
