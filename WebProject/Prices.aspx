<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prices.aspx.cs" Inherits="WebProject.Prices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/stylePrices.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="MembershipPanel" CssClass="membership" runat="server">
        <asp:Literal ID="MembershipHeading" runat="server" Text="<h2 class='membership-heading'>Membership prices</h2>" />
        <asp:Panel ID="MembershipContainerPanel" CssClass="membership-container container" runat="server">

            <!-- Gold Membership -->
            <asp:Panel ID="GoldMembershipPanel" CssClass="membership-item" runat="server">
                <asp:Panel ID="GoldImagePanel" runat="server">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/gold.png" />
                </asp:Panel>
                <asp:Panel ID="GoldDescriptionPanel" CssClass="ms-description" runat="server">
                    <asp:Literal ID="GoldTitle" runat="server" Text="<h2 class='ms-title'>Gold membership</h2>" />
                    <asp:Literal ID="GoldDescription" runat="server" Text="<p>All-day, unlimited access to the clubs: Deluxe, Platinum, Downtown, Energy club, Arena, West Park, Mladost, Mall of Sofia. You get access to the fitness, spa, group activities, solarium and outdoor swimming pool.</p>" />
                    <asp:Literal ID="GoldPrice" runat="server" Text="<p class='ms-price'>Price: 69 BGN/MTH</p>" />
                    <asp:Button ID="Button1" runat="server" Text="Buy" CssClass="btn-buy" />
                </asp:Panel>
            </asp:Panel>

            <!-- Student Membership -->
            <asp:Panel ID="StudentMembershipPanel" CssClass="membership-item" runat="server">
                <asp:Panel ID="StudentImagePanel" runat="server">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Pictures/student.png" />
                </asp:Panel>
                <asp:Panel ID="StudentDescriptionPanel" CssClass="ms-description" runat="server">
                    <asp:Literal ID="StudentTitle" runat="server" Text="<h2 class='ms-title'>Students card</h2>" />
                    <asp:Literal ID="StudentDescription" runat="server" Text="<p>Everyday unlimited access valid for one of the clubs: Deluxe, Downtown, Energy club, Arena, Mall of Sofia. You get access to the fitness, group activities and solarium.</p>" />
                    <asp:Literal ID="StudentPrice" runat="server" Text="<p class='ms-price'>Price: 59 BGN/MTH</p>" />
                    <asp:Button ID="Button2" runat="server" Text="Buy" CssClass="btn-buy" />
                </asp:Panel>
            </asp:Panel>

            <!-- 60+ Membership -->
            <asp:Panel ID="SeniorMembershipPanel" CssClass="membership-item" runat="server">
                <asp:Panel ID="SeniorImagePanel" runat="server">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Pictures/60Club.png" />
                </asp:Panel>
                <asp:Panel ID="SeniorDescriptionPanel" CssClass="ms-description" runat="server">
                    <asp:Literal ID="SeniorTitle" runat="server" Text="<h2 class='ms-title'>Membership 60+</h2>" />
                    <asp:Literal ID="SeniorDescription" runat="server" Text="<p>Everyday unlimited access until 4pm, unlimited stay in the club after entrance, access to all clubs. You get access to the fitness, spa, group activities, solarium and outdoor pool.</p>" />
                    <asp:Literal ID="SeniorPrice" runat="server" Text="<p class='ms-price'>Price: 39 BGN/MTH</p>" />
                    <asp:Button ID="Button3" runat="server" Text="Buy" CssClass="btn-buy" />
                </asp:Panel>
            </asp:Panel>

            <!-- Diamond Membership -->
            <asp:Panel ID="DiamondMembershipPanel" CssClass="membership-item" runat="server">
                <asp:Panel ID="DiamondImagePanel" runat="server">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Pictures/diamond.jpg" />
                </asp:Panel>
                <asp:Panel ID="DiamondDescriptionPanel" CssClass="ms-description" runat="server">
                    <asp:Literal ID="DiamondTitle" runat="server" Text="<h2 class='ms-title'>PulseFit Diamond</h2>" />
                    <asp:Literal ID="DiamondDescription" runat="server" Text="<p>All-day, unlimited access to all Clubs in Sofia, included PulseFit Bulgaria. You get access to the fitness, spa, group activities, solarium, outdoor and indoor swimming pool.</p>" />
                    <asp:Literal ID="DiamondPrice" runat="server" Text="<p class='ms-price'>Price: 89 BGN/MTH</p>" />
                    <asp:Button ID="Button4" runat="server" Text="Buy" CssClass="btn-buy" />
                </asp:Panel>
            </asp:Panel>

        </asp:Panel>
    </asp:Panel>
</asp:Content>
