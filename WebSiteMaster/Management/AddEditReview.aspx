<%@ Page Title="Planet Wrox - Management - insert and Update Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReview.aspx.cs" Inherits="Management_AddEditReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:Label Text="<u>T</u>itle" AssociatedControlID="TitleText" runat="server"/>
            </td>
            <td>
                <asp:TextBox ID="TitleText" AccesKey="T"  Width="450px" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="S<u>u</u>mmary" AssociatedControlID="SummaryText" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="SummaryText" AccessKey="U" TextMode="MultiLine" Width="450px" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="<u>B</u>ody" AssociatedControlID="BodyText" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="BodyText" AccessKey="B" TextMode="MultiLine" Width="450px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="<u>G</u>enre" AssociatedControlID="GenreList" runat="server" />
            </td>
            <td>
                <asp:DropDownList ID="GenreList" AccessKey="G" runat="server" 
                    DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id">
                    </asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
                    ConnectionString="name=PlanetWroxEntities" 
                    DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
                    EntitySetName="Genre">
                </asp:EntityDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label AssociatedControlID="Authorized" Text="<u>A</u>uthorized" runat="server"/>
            </td>
            <td>
                <asp:CheckBox ID="Authorized" AccessKey="A" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="SaveButton" Text="Save" AccessKey="S" runat="server" 
                    onclick="SaveButton_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

