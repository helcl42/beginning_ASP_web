<%@ Page Title="Planet Wrox - Management - Genres" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="Management_Genres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="ErrorMessage" runat="server" CssClass="ErrorMessage" EnableViewState="False"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" 
        EmptyDataText="There are no data records to display." CellPadding="4" 
        GridLines="None" onrowdatabound="GridView1_RowDataBound">        
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="DeleteLink" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemStyle Width="100px" />
            </asp:TemplateField>

            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-Width="200px" >
                <ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="SortOrder" HeaderText="SortOrder" SortExpression="SortOrder" />
            <asp:BoundField DataField="NumberOfReviews" HeaderText="NumberOfReviews" SortExpression="NumberOfReviews" />
        </Columns>              
    </asp:GridView>

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="SortOrder" HeaderText="SortOrder" SortExpression="SortOrder" />            
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" ProviderName="<%$ ConnectionStrings:PlanetWroxConnectionString1.ProviderName %>" 
        DeleteCommand="DELETE FROM [Genre] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Genre] ([Name], [SortOrder]) VALUES (@Name, @SortOrder)"         
        SelectCommand="SELECT
                        Genre.Id, Genre.Name, Genre.SortOrder, COUNT(Review.Id) AS NumberOfReviews
                       FROM
                        Genre LEFT OUTER JOIN Review ON Genre.Id = Review.GenreId 
                       GROUP BY
                        Genre.Id, Genre.Name, Genre.SortOrder" 
        
        UpdateCommand="UPDATE [Genre] SET [Name] = @Name, [SortOrder] = @SortOrder WHERE [Id] = @Id" 
        ondeleted="SqlDataSource1_Deleted">

        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="SortOrder" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="SortOrder" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <script type="text/javascript">
        $(function () {
            $('.GridView tr:odd:not(.GridViewPagerStyle) ').addClass('GridViewAlternatingRowStyle');
        });
    </script>

</asp:Content>

