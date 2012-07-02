<%@ Page Title="Table Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="jQueryDemos.aspx.cs" Inherits="Demos_jQueryDemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1 title="First Header">First Header</h1>
    <table id="DemoTable">
        <tr><td>Row 1 Cell 1</td><td>Row 1 Cell 2</td></tr>
        <tr><td>Row 2 Cell 1</td><td>Row 2 Cell 2</td></tr>
        <tr><td>Row 3 Cell 1</td><td>Row 3 Cell 2</td></tr>
        <tr><td>Row 4 Cell 1</td><td>Row 4 Cell 2</td></tr>
        <tr><td>Row 5 Cell 1</td><td>Row 5 Cell 2</td></tr>
        <tr><td>Row 6 Cell 1</td><td>Row 6 Cell 2</td></tr>
        <tr><td>Row 7 Cell 1</td><td>Row 7 Cell 2</td></tr>
    </table>
    <h2>Second <span style="font-style: italic; font-weight:bold;">Header </span> </h2>
    <input id="Button1" type="button" value="value" />
    <input id="Text1" type="text" />
    <input id="CheckBox1" type="checkbox" />
    <input id="CheckBox2" type="checkbox" />
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpClientScript">

    <script type="text/javascript">
        $(function () {
            $(':header').css('background-color', 'red');
            // $('td:contains("Row 3")').css('background-color', 'red');
            //$(':header:has("span")').css('background-color', 'green');
            //$('[type=text]').css('background-color', 'green');
            $(':button').css('background-color', 'green');
            alert($('h2 span').css('font-style'));
        });

        $(function () {
            $('#DemoTable tr').bind('mouseover', function () { $(this).css('background-color', 'yellow') })
            .bind('mouseout', function () { $(this).css('background-color', '')});

        });
/*
        $(function () {
            $('#DemoTable td').each(function () {
                alert(this.innerHTML);
            });
        });
*/

        $(function () {
            alert($('#DemoTable td:contains("Row 1 Cell 2")').parent()[0].innerHTML);
        });

        $(function () {
            $('h1').hide(500);
            $('h1').fadeIn(2000);
            $('table').hide(2000);
            $('table').show(2000);
            $('h1').animate({ opacity: 0.4, marginLeft: '50px', fontSize: '50px' },1500);
        })
    </script>

</asp:Content>




