<%@ Page Title="Web Services Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="WebServices.aspx.cs" Inherits="Demos_WebServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    <Services>
      <asp:ServiceReference Path="~/WebServices/NameService.asmx" />
    </Services>
  </asp:ScriptManagerProxy>
  <input id="YourName" type="text" />
  <input id="SayHello" type="button" value="Say Hello" />
  <input id="SayHelloPageMethod" type="button" value="Say Hello with a Page Method" />

  <script type="text/javascript">
    function HelloWorld()
    {
      var yourName = $get('YourName').value;
      NameService.HelloWorld(yourName, HelloWorldCallback);
    }

    function HelloWorldPageMethod()
    {
      var yourName = $get('YourName').value;
      PageMethods.HelloWorld(yourName, HelloWorldCallback);
    }

    function HelloWorldCallback(result)
    {
      alert(result);
    }

    $addHandler($get('SayHello'), 'click', HelloWorld);
    $addHandler($get('SayHelloPageMethod'), 'click', HelloWorldPageMethod);
  </script>

</asp:Content>
