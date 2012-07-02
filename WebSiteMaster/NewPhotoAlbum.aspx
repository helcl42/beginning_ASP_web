<%@ Page Title="Create New Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbum.aspx.cs" Inherits="_NewPhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="EntityDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />

            <asp:CommandField ShowInsertButton="True" />                       
        </Fields>
    </asp:DetailsView>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=PlanetWroxEntities" 
        DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
        EnableInsert="True" EntitySetName="PhotoAlbum" 
        oninserted="EntityDataSource1_Inserted" 
        oninserting="EntityDataSource1_Inserting">
    </asp:EntityDataSource>

</asp:Content>

