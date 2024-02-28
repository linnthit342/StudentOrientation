<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="food.aspx.cs" Inherits="UON.UIL.food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="CusCSS/sup.css" rel="stylesheet" />
<body>

    <div class="content">
       <asp:Repeater ID="rptFood" runat="server">
        <ItemTemplate>
        <div class="item food-item">
            <img src="images/restaurant/<%# Eval("Res_Img") %>" />
            <div class="title"><%# Eval("Res_Name") %></div>
            <div class="location"><img src="images/location.png" /><%# Eval("Res_Loc") %></div>
            <div class="time">
                <img src="images/time.png" />
                <div>
                    <div><%# Eval("Res_Opening_hours") %></div>
                </div>
            </div>
        </div>
            </ItemTemplate>
           </asp:Repeater>
    </div>
</body>
</asp:Content>
