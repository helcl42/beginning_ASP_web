<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>

<% if (false) { %>
    <script src="../Scripts/jquery-1.4.1-vsdoc.js" type="text/javascript"></script>
<% } %>

<script type="text/javascript">
  function ValidatePhoneNumbers(source, args)
  {
    var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
    var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
    if (phoneHome.value != '' || phoneBusiness.value != '')
    {
      args.IsValid = true;
    }
    else
    {
      args.IsValid = false;
    }
  }
</script>

<asp:UpdatePanel runat="server" ID="UpdatePanel1">
  <ContentTemplate>
  <div id="TableWrapper">
    <table class="style1" runat="server" id="FormTable">
      <tr>
        <td colspan="3">
          <h1>Get in touch with us</h1>
          <p>Use the form below to get in touch with us. Enter your name, e-mail address, and your home or business phone number to get in touch with us.</p>
        </td>
      </tr>
      <tr>
        <td>
          Name
        </td>
        <td>
          <asp:TextBox ID="Name" runat="server" ToolTip-="Enter Your Name" CssClass="InputBox"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td>
          E-mail address
        </td>
        <td>
          <asp:TextBox ID="EmailAddress" runat="server" ToolTip="Enter your Email Address" CssClass="InputBox"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
      </tr>
      <tr>
        <td>
          E-mail address again
        </td>
        <td>
          <asp:TextBox ID="ConfirmEmailAddress" runat="server" ToolTip="Confirm Your Email Address" CssClass="InputBox"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Retype the e-mail address">*</asp:CompareValidator>
        </td>
      </tr>
      <tr>
        <td>
          Home phone number
        </td>
        <td>
          <asp:TextBox ID="PhoneHome" runat="server" ToolTip="Enter Your Phone Number" CssClass="InputBox"></asp:TextBox>
        </td>
        <td>
          <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
      </tr>
      <tr>
        <td>
          Business phone number
        </td>
        <td>
          <asp:TextBox ID="PhoneBusiness" runat="server" ToolTip="Enter Your Business Phone Number" CssClass="InputBox"></asp:TextBox>
        </td>
        <td>
        </td>
      </tr>
      <tr>
        <td>
          Comments
        </td>
        <td>
          <asp:TextBox ID="Comments" runat="server" Height="78px" TextMode="MultiLine" ToolTip="Enter Your Comment" CssClass="InputBox"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td>
        </td>
        <td>
          <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
        </td>
        <td>
        </td>
      </tr>
      <tr>
        <td colspan="3">
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors before you press the Send button:" />
        </td>
      </tr>
    </table>
    </div>
    <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="False" />
    <p runat="server" id="MessageSentPara" visible="False">Thanks for your message. We'll get in touch with you if necessary.</p>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
  <ProgressTemplate>
    <div class="PleaseWait">Please Wait... </div>
  </ProgressTemplate>
</asp:UpdateProgress>
<script src="../Scripts/jquery.updnWatermark.js" type="text/javascript"></script>
<script type="text/javascript">

    $(function () {
        /*        $(':input[type=text], textarea').each
        (
        function () {
        var newText = 'Please enter your ' + $(this).parent().prev().text().toLowerCase().trim();
        $(this).attr('value', newText);
        }).one('focus',
        function () {
        this.value = '', this.className = ''
        }).addClass('Watermark').css('width', '300px');
        */
        $.updnWatermark.attachAll( {cssClass: 'Watermark'} );

        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    
    function PageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).animate({width:'100px'}, 3000).fadeOut('slow');
    }
</script>
  
