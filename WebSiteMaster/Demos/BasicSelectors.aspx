<%@ Page Title="Basic Selectors" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="BasicSelectors.aspx.cs" Inherits="Demos_BasicSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
    <h1>Basic Selectors</h1>
    <div class="SampleClass" >
        I am a div.
    </div>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpClientScript">

    <script type="text/javascript">
        $(function () {
            $('*').css('color', 'Green');
            $('#Footer').css('border-bottom', '2px solid black');
            $('h1').bind('click', function () { alert('Hello World') });
            $('.SampleClass').addClass('PleaseWait').hide(5000);
            $('#Footer, #Header').slideUp('slow').slideDown('slow')
                .slideUp('medium').slideDown('medium')
                .slideUp('fast').slideDown('fast');
            $('#Sidebar img').fadeTo(5000, 0.1);
        });
    </script>
</asp:Content>


