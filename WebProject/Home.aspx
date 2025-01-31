<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/styleHome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="AboutPanel" CssClass="about" runat="server">
        <asp:Panel ID="AboutWrapperPanel" CssClass="about-wrapper container" runat="server">

            <!-- Image panel -->
            <asp:Panel ID="AboutImgPanel" CssClass="about-img" runat="server">
                <asp:Image ID="Image1" runat="server" Height="240px" ImageUrl="~/Pictures/pulseF.jpg" Width="500px" />
            </asp:Panel>

            <!-- Heading and text -->
            <asp:Panel ID="AboutTextPanel" CssClass="about-text" runat="server">
                <asp:Literal ID="AboutTitle" runat="server" Text="<p class='about-title'>What We Do</p>" />
                <asp:Literal ID="AboutHeading" runat="server" Text="<h2>We are here to help you achieve your goals</h2>" />
                <asp:Literal ID="Paragraph1" runat="server" Text="<p>Whatever your fitness journey looks like, <strong>PulseFit</strong> is here to help you achieve your goals with a membership plan tailored just for you. All PulseFit members enjoy <strong>unlimited access</strong> to their home club and the constant support of our friendly, highly-trained staff, available to assist you every step of the way. From answering your questions to providing encouragement, we're committed to making your experience seamless and enjoyable.</p>" />
                <asp:Literal ID="Paragraph2" runat="server" Text="<p>For those looking for even more perks, our <strong>PulseFit Platinum Card</strong> offers incredible benefits. Bring a <strong>guest for free</strong>, explore all 30 of our PulseFit Gym locations, and enjoy a premium fitness experience designed to fit your lifestyle. With PulseFit, you’re not just joining a gym—you’re becoming part of a community that values your health and well-being.</p>" />
                <asp:Literal ID="Paragraph3" runat="server" Text="<p>Looking for that extra spark of motivation or some expert guidance to help you crush your fitness goals? As a PulseFit member, you can access <strong>free fitness training sessions</strong> with our professional trainers. Or, stay inspired by connecting with our vibrant community through real member stories and tips on Instagram: <strong>@PulseFit.GYM</strong>.</p>" />
                <asp:Literal ID="Paragraph4" runat="server" Text="<p>At PulseFit, we’re more than a gym. We’re your <strong>partner in health</strong>, offering everything you need to thrive and succeed in your fitness journey.</p>" />
            </asp:Panel>

        </asp:Panel>
    </asp:Panel>
    <script src="js/jsHome.js"></script>
</asp:Content>
