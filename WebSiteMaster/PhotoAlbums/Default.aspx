<%@ Page Title="All Photo Albums" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PhotoAlbums_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" 
            DataSourceID="EntityDataSource2" ondatabound="ListView1_DataBound">
              
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
   
            <ItemTemplate>
                <li style="">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' ToolTip='<%# Eval("ToolTip") %>'  />            
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    <br />            
                </li>
            </ItemTemplate>

            <LayoutTemplate>
                <ul class="ItemContainer">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="clear:both;">
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6" >
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
      
        </asp:ListView>

        <asp:PlaceHolder ID="PhotoAlbumDetails" runat="server">
            <h2>Photo Album Details</h2>
            Created by:
            <asp:Label ID="UserNameLabel" runat="server" Text="" ></asp:Label>
            <br />
            About this User:
            <asp:Label ID="BioLabel" runat="server" Text=""></asp:Label>
        </asp:PlaceHolder>

        <br /><br />
        <asp:HyperLink ID="EditLink" runat="server" Text="Edit Photo Album" />

        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=PlanetWroxEntities" 
            DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
            EntitySetName="Picture"  AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
            <WhereParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="PhotoAlbumId" PropertyName="SelectedValue" Type="Int32" />
            </WhereParameters>
        </asp:EntityDataSource>

        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PlanetWroxEntities" 
            DefaultContainerName="PlanetWroxEntities" EnableFlattening="False" 
            EntitySetName="PhotoAlbum" Select="it.[Id], it.[Name]">
        </asp:EntityDataSource>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

