<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebProject.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/styleRegister.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel CssClass="mainContainer" runat="server">
    <asp:Label CssClass="register-title" runat="server" Text="<h1>Register</h1>"></asp:Label>
    <asp:Panel CssClass="register-container" runat="server">
        <asp:Panel CssClass="register-form" runat="server">

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

            <!-- Confirm password field with RequiredFieldValidator and CompareValidator -->
            <asp:TextBox CssClass="form-control" ID="ConfirmPasswordTextBox" runat="server" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="ConfirmPasswordTextBox" ErrorMessage="Confirm Password is required." 
                CssClass="error-message" Display="Dynamic" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" 
                ErrorMessage="Passwords do not match." CssClass="error-message" Display="Dynamic" />

            <!-- Register button -->
            <asp:Button CssClass="register-button" ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />

            <asp:Label CssClass="message-label" ID="lblMessage" runat="server" ForeColor="Green" />
        </asp:Panel>
        <asp:Panel CssClass="login-link-panel" runat="server">
            <asp:HyperLink CssClass="login-link" ID="LoginLink" runat="server" NavigateUrl="~/Login.aspx">Already registered? Log in</asp:HyperLink>
        </asp:Panel>
    </asp:Panel>
</asp:Panel>

</asp:Content>
