<%@ Page Title="Database" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DataBase.aspx.cs" Inherits="WebProject.DataBase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/styleDatabase.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="UsersPanel" runat="server" CssClass="users-panel">
        <asp:Label CssClass="page-title" runat="server" Text="<h1>Registered Users</h1>"></asp:Label>

        <!-- GridView to display, edit, and delete user records -->
        <asp:GridView ID="GridView1" runat="server"
            CssClass="gridView"
            DataKeyNames="id"
            DataSourceID="SqlDataSource1"
            AllowPaging="True"
            AllowSorting="True"
            BackColor="White"
            BorderColor="#E7E7FF"
            BorderStyle="Solid"
            BorderWidth="2px"
            CellPadding="3"
            GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />

            <!-- Command buttons for edit, delete, and select actions -->
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True" />
            </Columns>

            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#7f70c2" Font-Bold="True" ForeColor="#F7F7F7" />
            <EditRowStyle BackColor="#FFFFFF" ForeColor="#4A3C8C" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>

        <!-- SqlDataSource for connecting to the database and managing data -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:MySqlConnection %>"
            ProviderName="MySql.Data.MySqlClient"
            SelectCommand="SELECT id, email FROM users"
            UpdateCommand="UPDATE users SET email = @email WHERE id = @id"
            DeleteCommand="DELETE FROM users WHERE id = @id">

            <!-- Parameters for the update operation -->
            <UpdateParameters>
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>

            <!-- Parameters for the delete operation -->
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>

        </asp:SqlDataSource>
    </asp:Panel>
</asp:Content>

