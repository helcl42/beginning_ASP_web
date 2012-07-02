<%@ Page Title="Sign Up for a new Account at Planet Wrox" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="_SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
    onsendingmail="CreateUserWizard1_SendingMail">
        <MailDefinition BodyFileName="~/App_Data/SignUpConfirmation.txt" 
            Subject="Your new Account at PlanetWrox.com">
        </MailDefinition>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

