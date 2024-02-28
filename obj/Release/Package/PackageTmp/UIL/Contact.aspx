<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="UON.UIL.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/sup.css" rel="stylesheet" />

<body>
        <div class="content">
    <asp:Repeater ID="rptcontactpage" runat="server">
        <ItemTemplate>
    <div class="contact-title"><%# Eval("Contact_Page_Heading") %></div>

        <div class="item">
            <div class="contact-item-content">
                <div><%# Eval("Contact_Page_Des") %></div>
            </div>
        </div>
        
        </ItemTemplate>
        </asp:Repeater>
        
        <asp:Repeater ID="rptcontactus" runat="server">
        <ItemTemplate>
        <div class="item-division"></div>
        <div class="item">
            <div class="contact-item-title">CONTACT US</div>
            <div class="contact-item-content">
                <strong><%# Eval("CU_Country") %></strong>
                <p><strong>Phone:</strong> <%# Eval("CU_Ph") %></p>
                <p><strong>Fax:</strong> <%# Eval("CU_Fax") %></p>
                <p><strong>Email:</strong> <a href="mailto:uonsenquiry@newcastle.edu.au"><%# Eval("CU_Email") %></a></p>
                <p><strong>Location / postal address:</strong></p>
                <div><%# Eval("CU_Location") %></div>
            </div>
        </div>
    </div>
            </ItemTemplate>
            </asp:Repeater>
            </div>
</body>

  </asp:Content>