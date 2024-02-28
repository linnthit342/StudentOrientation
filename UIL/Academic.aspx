<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Academic.aspx.cs" Inherits="UON.UIL.Academic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/sup.css" rel="stylesheet" />    
<body>
    <style>
        .card {
            margin-right: 50px;
            box-shadow: 5px 5px 10px 2px rgba(0 , 0, 0, 0.5);
        }

        .icon {
            width: 25px;
            height: 25px;
        }

        .card h5 {
            margin-bottom: 0;
        }

        .add-icon {
            width: 100px;
            height: 100px;
        }

        .icon1 {
            width: 70px;
            height: 70px;
            object-fit: contain;
        }
    </style>
        <asp:Repeater ID="rptAcca" runat="server">
        <ItemTemplate>
            <div class="content flex-column">
            <p><%# Eval("AcSDes") %></p>
        <img class="w-100" src="images/Academic/<%# Eval("AcSImg") %>" />
            </div>
             </ItemTemplate>
            </asp:Repeater>
</body>
</asp:Content>
