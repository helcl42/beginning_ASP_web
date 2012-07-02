<%@ Page Title="My Favorite Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Reviews_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">

<asp:Repeater ID="GenreRepeater" runat="server">
    <HeaderTemplate>
        <p>Below you find a list with reviews  for your favorite music genres.</p>
    </HeaderTemplate>
    <ItemTemplate>
        <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>' ></asp:Literal></h3>
        <asp:Repeater ID="ReviewRepeater" runat="server" DataSource='<%# Eval("Reviews")%>' >
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Title") %>' NavigateUrl='<%# "ViewDetails.aspx?ReviewId=" + Eval("Id").ToString() %>' >
                </asp:HyperLink><br />
            </ItemTemplate>
        </asp:Repeater>
    </ItemTemplate>
</asp:Repeater>

<asp:PlaceHolder ID="NoRecords" runat="server" Visible="false">
    <p>Sorry, no revirews were found. You either didn't set your favorite genres or you may need to login first.</p>
</asp:PlaceHolder>

<p>You can change your genre preferenecs <a href="~/MyProfile.aspx" runat="server">here</a></p>
</asp:Content>
