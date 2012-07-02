<%@ Page Title="Planet Wrox - Mangement - Insert and Update Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReview11.aspx.cs" Inherits="Management_AddEditReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px" oniteminserted="DetailsView1_ItemInserted" 
        oniteminserting="DetailsView1_ItemInserting" 
        onitemupdated="DetailsView1_ItemUpdated" 
        onitemupdating="DetailsView1_ItemUpdating">
        <Fields>
             <asp:TemplateField HeaderText="Title" SortExpression="Title">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqVal5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a title!" CssClass="Warning"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqVal5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a title!" CssClass="Warning"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>            

            <asp:TemplateField HeaderText="GenreId" SortExpression="GenreId">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("GenreId") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="GenresDataSource" DataTextField="Name" DataValueField="Id" 
                        SelectedValue='<%# Bind("GenreId") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="GenresDataSource" DataTextField="Name" DataValueField="Id" 
                        SelectedValue='<%# Bind("GenreId") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Body" SortExpression="Body">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Body") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Body") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqVal1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a body!" CssClass="Warning"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Body") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqVal2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a body!" CssClass="Warning"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Summary" SortExpression="Summary">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Summary") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqVal3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a summary!" CssClass="Warning"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" TexMode="Multiline" Width="500" Height="100" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqVal4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a summary!" CssClass="Warning"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
            
            <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" SortExpression="Authorized" />           

            <asp:BoundField DataField="Id" HeaderText="Id" 
                SortExpression="Id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" 
                SortExpression="UpdateDateTime" Visible="False" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" 

        DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Review] ([Authorized], [GenreId], [Body], [Summary], [Title], [UpdateDateTime]) VALUES (@Authorized, @GenreId, @Body, @Summary, @Title, @UpdateDateTime)" 
        SelectCommand="SELECT [Authorized], [GenreId], [Body], [Summary], [Title], [Id], [UpdateDateTime] FROM [Review] WHERE ([Id] = @Id)" 
        UpdateCommand="UPDATE [Review] SET [Authorized] = @Authorized, [GenreId] = @GenreId, [Body] = @Body, [Summary] = @Summary, [Title] = @Title, [UpdateDateTime] = @UpdateDateTime WHERE [Id] = @Id">

        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="GenreId" Type="Int32" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
        </InsertParameters>

        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="GenreId" Type="Int32" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="GenresDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" 
        SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]">
    </asp:SqlDataSource>
</asp:Content>

