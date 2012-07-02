<%@ Page Title="Planet Wrox - Management - Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Management_Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized" >            
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# GetBooleanText(Eval("Authorized")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" HeaderText="CreateDateTime" SortExpression="CreateDateTime" DataFormatString="{0:g}" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>

    <a href="AddEditReview.aspx">AddEditReview.aspx</a>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" 
        SelectCommand="SELECT [Id], [Title], [Authorized], [CreateDateTime] FROM [Review] WHERE ([GenreId] = @GenreId)" 
        DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Review] ([Title], [Authorized], [CreateDateTime]) VALUES (@Title, @Authorized, @CreateDateTime)" 
        UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Authorized] = @Authorized, [CreateDateTime] = @CreateDateTime WHERE [Id] = @Id">

    <DeleteParameters>
      <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>

    <InsertParameters>
      <asp:Parameter Name="Title" Type="String" />
      <asp:Parameter Name="Authorized" Type="Boolean" />
      <asp:Parameter Name="CreateDateTime" Type="DateTime" />
    </InsertParameters>

    <SelectParameters>
      <asp:ControlParameter ControlID="DropDownList1" Name="GenreId" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>

    <UpdateParameters>
      <asp:Parameter Name="Title" Type="String" />
      <asp:Parameter Name="Authorized" Type="Boolean" />
      <asp:Parameter Name="CreateDateTime" Type="DateTime" />
      <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" 
    SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]">
  </asp:SqlDataSource>
</asp:Content>

