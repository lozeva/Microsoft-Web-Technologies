<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News2.aspx.cs" Inherits="WebProject.News2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/styleNews2.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="RechargePanel" CssClass="recharge-container" runat="server">

        <!-- Main heading -->
        <asp:Literal ID="MainHeading" runat="server" Text="<h1 class='main-heading'>Recharge your immunity</h1>" />

        <asp:Image ID="MainImage" CssClass="main-image" runat="server" ImageUrl="~/Pictures/news2.png" />

        <!-- Introductory text -->
        <asp:Panel ID="IntroTextPanel" CssClass="intro-text" runat="server">
            <asp:Literal ID="IntroText" runat="server" Text="<p>In the whirlwind of our busy lives, where stress and fatigue often take center stage, our immune system requires special attention. The good news? Nature provides us with powerful allies in the form of nutrient-rich foods. From vitamin C-loaded citrus fruits to antioxidant-packed vegetables, these natural powerhouses not only strengthen your immunity but also equip it to face seasonal challenges head-on. A healthy, balanced diet is the cornerstone of a robust immune system, offering protection against viruses and ensuring your body stays resilient and strong.</p>" />
        </asp:Panel>

        <!-- Second heading -->
        <asp:Literal ID="SecondHeading" runat="server" Text="<h2 class='second-heading'>Foods that will boost your immune system</h2>" />

        <!-- Tabs section -->
        <asp:Panel ID="TabsContainer" CssClass="tabs-container" runat="server">
            <asp:Button ID="MatchaTab" CssClass="tab active" runat="server" Text="Matcha" OnClientClick="showTab('matcha-panel'); return false;" />
            <asp:Button ID="RedPeperTab" CssClass="tab" runat="server" Text="Red pepper" OnClientClick="showTab('red-pepper-panel'); return false;" />
            <asp:Button ID="FruitsTab" CssClass="tab" runat="server" Text="Citrus fruits" OnClientClick="showTab('fruits-panel'); return false;" />
        </asp:Panel>

        <!-- Tab content section -->
        <asp:Panel ID="TabContentPanel" CssClass="tab-content" runat="server">

            <!-- Matcha -->
            <asp:Panel CssClass="tab-pane matcha-panel active" runat="server">
                <asp:Image ID="MatchaImage" runat="server" ImageUrl="~/Pictures/matcha.jpg" CssClass="tab-image" />
                <asp:Literal ID="MatchaInfo" runat="server" Text="<p>What’s immunity without the trendiest drink of the season—Matcha? In recent years, Matcha has taken the spotlight as a coffee alternative, but its benefits go far beyond just being a trendy beverage. This vibrant green tea is packed with antioxidants, vitamins, minerals, and trace elements, making it a powerful ally in the fight against colds and flu. With its distinct earthy flavor, Matcha stands out from other drinks, quickly winning the hearts of Gen Z and health-conscious individuals alike. It's more than just a drink—it's a lifestyle choice for those seeking wellness and vitality.</p>" />
            </asp:Panel>

            <!-- Red pepper -->
            <asp:Panel CssClass="tab-pane red-pepper-panel" runat="server">
                <asp:Image ID="RedPepperImage" runat="server" ImageUrl="~/Pictures/redPepper.jpg" CssClass="tab-image" />
                <asp:Literal ID="RedPepperInfo" runat="server" Text="<p>Did you know that peppers pack 2-3 times more vitamin C than oranges? But that’s just the beginning! These vibrant veggies are also rich in beta-carotene, a powerful antioxidant with anti-inflammatory and immunity-boosting properties. To make the most of their nutritional benefits, try baking or frying them rather than boiling or stewing, as this helps preserve their valuable nutrients. Who knew enjoying your favorite mish-mash could double as a delicious way to fight off viruses? Healthy eating has never been so flavorful!</p>" />
            </asp:Panel>

            <!-- Citrus fruits -->
            <asp:Panel CssClass="tab-pane fruits-panel" runat="server">
                <asp:Image ID="FruitsImage" runat="server" ImageUrl="~/Pictures/fruits.jpg" CssClass="tab-image" />
                <asp:Literal ID="FruitsInfo" runat="server" Text="<p>Citrus fruits are nature's ultimate shield for your immune system. Oranges, lemons, limes, kiwis, and grapefruits are true vitamin C powerhouses, bursting with immune-boosting goodness. But why is vitamin C so vital? This potent antioxidant stimulates the production of white blood cells—your body’s frontline defenders against infections and illnesses. Incorporating these citrus heroes into your diet is a delicious way to naturally strengthen your immunity. And don’t forget the simple magic of lemon water! Not only does it provide a refreshing dose of vitamin C, but it also acts as a natural detoxifier, keeping you hydrated and revitalized. Boost your defenses the citrus way!</p>" />
            </asp:Panel>

        </asp:Panel>
    </asp:Panel>
    <script src="js/jsNews2.js"></script>
</asp:Content>
