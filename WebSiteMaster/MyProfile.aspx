<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>My Profile</h1>
    <p>
        The my profile page allows you to make changes to your personal profile.
        You can is change your password and also tell bit about yourself bellow.
    </p>
    
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="FirstNameLabel" AssociatedControlID="FirstName" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is required" Display="Dynamic" ControlToValidate="FirstName" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LastNameLabel" AssociatedControlID="LastName" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" Display="Dynamic" ControlToValidate="LastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="DateOfBirthLabel" runat="server" AssociatedControlID="DateOfBirth" Text="Date of birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date of birth is required" Display="Dynamic" ControlToValidate="DateOfBirth"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="DateOfBirth"  Operator="DataTypeCheck" ErrorMessage="Please enter a valid date" ></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="BioLabel" AssociatedControlID="Bio" runat="server" Text="Biography"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Bio" runat="server" TextMode="MultiLine" Width="300px" Height="75px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="FavoriteGenresLabel" runat="server" Text="Favorite genres"></asp:Label>
            </td>
            <td>
                <asp:CheckBoxList ID="PreferenceList" runat="server" 
                    DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id" 
                    ondatabound="PreferenceList_DataBound">
                </asp:CheckBoxList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=PlanetWroxEntities" 
                    DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
                    EntitySetName="Genre" Select="it.[Id], it.[Name]" OrderBy="it.Name">
                </asp:EntityDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="SaveButton" Text="Save Profile" runat="server" 
                    onclick="SaveButton_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
    <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>

    