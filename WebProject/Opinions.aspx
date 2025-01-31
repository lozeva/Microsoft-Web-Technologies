<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Opinions.aspx.cs" Inherits="WebProject.Opinions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/styleOpinions.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="OpinionPanel" CssClass="opinion" runat="server">
        <asp:Literal ID="OpinionTitle" runat="server" Text="<h2 class='opinion-title'>What Our Members Say</h2>" />
        <asp:Panel ID="OpinionContainerPanel" CssClass="opinion-container container" runat="server">

            <!-- First Opinion -->
            <asp:Panel ID="OpinionBox1" CssClass="opinion-box" runat="server">
                <asp:Panel ID="CustomerPhoto1" CssClass="customer-photo" runat="server">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Pictures/niki.png" />
                    <asp:Literal ID="CustomerName1" runat="server" Text="<p class='customer-name'>Niki Iliev</p>" />
                </asp:Panel>
                <asp:Literal ID="OpinionText1" runat="server" Text="<p class='opinion-text'>An excellent place for swimming and relaxation. The spa area is well-equipped, offering various options for unwinding, all accompanied by soft, relaxing music. Time flies as you enjoy the serene atmosphere. The attention to detail and cleanliness makes it a truly rejuvenating experience.</p>" />
            </asp:Panel>

            <!-- Second Opinion -->
            <asp:Panel ID="OpinionBox2" CssClass="opinion-box" runat="server">
                <asp:Panel ID="CustomerPhoto2" CssClass="customer-photo" runat="server">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Pictures/vanq.png" />
                    <asp:Literal ID="CustomerName2" runat="server" Text="<p class='customer-name'>Vanq Zaprqnova</p>" />
                </asp:Panel>
                <asp:Literal ID="OpinionText2" runat="server" Text="<p class='opinion-text'>The gym spans three spacious levels, ensuring ample room to work out comfortably, even during peak hours between 5 and 7 PM. It’s well-maintained, with cleanliness being a noticeable priority, and parking is rarely an issue. The equipment selection is excellent, offering everything from machines to free weights. The spa area provides a nice addition for relaxation after a workout.</p>" />
            </asp:Panel>

            <!-- Third Opinion -->
            <asp:Panel ID="OpinionBox3" CssClass="opinion-box" runat="server">
                <asp:Panel ID="CustomerPhoto3" CssClass="customer-photo" runat="server">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Pictures/bilqna.png" />
                    <asp:Literal ID="CustomerName3" runat="server" Text="<p class='customer-name'>Bilqna Yotovska</p>" />
                </asp:Panel>
                <asp:Literal ID="OpinionText3" runat="server" Text="<p class='opinion-text'>An excellent chain of gyms with a fantastic variety of modern and well-maintained equipment. The locations are strategically placed, making them convenient and easy to access. The overall environment is welcoming and provides a great experience for both training and relaxation.</p>" />
            </asp:Panel>

        </asp:Panel>
    </asp:Panel>
</asp:Content>
