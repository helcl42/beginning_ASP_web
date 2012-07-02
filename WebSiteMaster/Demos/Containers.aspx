<%@ Page Title="Containers Demo" Language="C#" AutoEventWireup="true" CodeFile="Containers.aspx.cs" Inherits="Demos_Containers" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show Panel" />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
      <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Width="500px" onfinishbuttonclick="Wizard1_FinishButtonClick">
        <WizardSteps>
          <asp:WizardStep runat="server" Title="About You">
            <asp:Label ID="Label1" runat="server" Text="Type your name"></asp:Label>
            <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
          </asp:WizardStep>
          <asp:WizardStep runat="server" Title="Favorite Language" StepType="Finish">
            <asp:DropDownList ID="FavoriteLanguage" runat="server">
              <asp:ListItem>C#</asp:ListItem>
              <asp:ListItem>Visual Basic</asp:ListItem>
              <asp:ListItem>CSS</asp:ListItem>
            </asp:DropDownList>
          </asp:WizardStep>
          <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
            <asp:Label ID="Result" runat="server" Text="Label"></asp:Label>
          </asp:WizardStep>
        </WizardSteps>
      </asp:Wizard>
    </asp:Panel>
  </div>
  </form>
</body>
</html>
