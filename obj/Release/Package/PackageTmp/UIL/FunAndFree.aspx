<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FunAndFree.aspx.cs" Inherits="UON.UIL.FunAndFree" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/sup.css" rel="stylesheet" />    
<body>
    <div class="content d-block">
        <asp:Repeater ID="rptThings" runat="server">
        <ItemTemplate>
        <h1 class="text-center mb-5"><%# Eval("TTDTitle") %></h1>
        <div class="mt-2 mb-5 text-center">
            <img src="images/<%# Eval("TTDImg") %>" />
        </div>
            
        <p class="mt-2"><%# Eval("TTDdesc") %> </p>
        </ItemTemplate>
            </asp:Repeater>
        <asp:Repeater ID="rptList" runat="server">
        <ItemTemplate>
        <h2 class="mb-4"><%# Eval("TTDLTitle") %></h2>
        <h4><%# Eval("TTDL_Sub_Title") %></h4>
        <p class="mb-4"><%# Eval("TTDdesc") %></p>
        </ItemTemplate>
            </asp:Repeater>
    </div>
</body>
</asp:Content>
