<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebProject.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/styleLogin.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel CssClass="mainContainer" runat="server">
    <asp:Label CssClass="login-title" runat="server" Text="<h1>Log in</h1>"></asp:Label>
    <asp:Panel CssClass="login-container" runat="server">
        <asp:Panel CssClass="login-form" runat="server">

            <!-- Email field with RequiredFieldValidator -->
            <asp:TextBox CssClass="form-control" ID="EmailTextBox" runat="server" Placeholder="Email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="EmailTextBox" ErrorMessage="Email is required." 
                CssClass="error-message" Display="Dynamic" />

            <!-- Password field with RequiredFieldValidator -->
            <asp:TextBox CssClass="form-control" ID="PasswordTextBox" runat="server" Placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="PasswordTextBox" ErrorMessage="Password is required." 
                CssClass="error-message" Display="Dynamic" />

            <!-- Remember me -->
            <asp:Panel CssClass="checkbox-container" runat="server">
                <asp:CheckBox CssClass="remember-checkbox" ID="RememberMeCheckBox" runat="server" />
                <asp:Label CssClass="remember-text" ID="RememberMeLabel" runat="server" Text="Remember me?" AssociatedControlID="RememberMeCheckBox" />
            </asp:Panel>

            <!-- Login button -->
            <asp:Button CssClass="login-button" ID="LoginButton" runat="server" Text="Log in" OnClick="LoginButton_Click" />

            <asp:Label CssClass="message-label" ID="lblMessage" runat="server" ForeColor="Red" />
        </asp:Panel>
        <asp:Panel CssClass="links-panel" runat="server">
            <asp:HyperLink CssClass="forgot-password" ID="ForgotPasswordLink" runat="server" NavigateUrl="#">Forgot your password?</asp:HyperLink>
            <asp:HyperLink CssClass="register-link" ID="RegisterLink" runat="server" NavigateUrl="~/Register.aspx">Register as a new user</asp:HyperLink>
        </asp:Panel>
    </asp:Panel>
</asp:Panel>

</asp:Content>
