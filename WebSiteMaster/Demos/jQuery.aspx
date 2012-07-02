<%@ Page Title="jQuery Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="jQuery.aspx.cs" Inherits="Demos_jQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
  <input id="Button1" type="button" value="button" />
  <h2>Jo no tak to je teda text no!!!</h2>
  <p>parahraph....</p>

  <script type="text/javascript">
      $(document).ready(
        function () {
            $('h2').css('font-size', '40px').fadeOut(3000);
            $('#MainContent').css('background-color', 'green')
            $('#Button1').click(
            function () {
                $('#MainContent').css('background-color', 'red').animate({ width: '100px', height: '70px' })
            });
        });
  </script>

</asp:Content>

