<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToDoList.aspx.cs" Inherits="UON.UIL.ToDoList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/tdl.css" rel="stylesheet" />
    <asp:Repeater ID="rptToDoList" runat="server">
        <ItemTemplate>
            <div class="ccontainer">
                <div class="iimage">
                    <img src='tdimg/<%# Eval("ToDoList_Img") %>' style="height: 260px; width: 248px" />
                </div>
                <div class="textt">
                    <h4><%# Eval("ToDoList_Heading") %></h4>
                    <h3><%# Eval("ToDoList_SubTitle1") %></h3>
                    <ul>
                        <li><%# Eval("ToDoList_Des1") %></li>
                    </ul>
                    <h3><%# Eval("ToDoList_SubTitle2") %></h3>
                    <ul>
                        <li><%# Eval("ToDoList_Des2") %></li>
                    </ul>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
