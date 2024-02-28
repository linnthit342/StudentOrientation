<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UON.UIL.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/abtcss.css" rel="stylesheet" />

<body>

<div class="about-section">
    <asp:Repeater ID="rptAbout" runat="server">
        <ItemTemplate>
  <h1 style="text-align:center"><%# Eval("AbtHeading") %></h1>
		<h3><%# Eval("AbtSubHeading") %></h3>
  <blockquote>
  	<%# Eval("Des") %>
      <br>
  </blockquote>
            </ItemTemplate>
        </asp:Repeater>
  <br><br>
  <div class="row">

    <asp:Repeater ID="rptTeam" runat="server">
    <ItemTemplate>
        <div class="col">
            <div class="card">
                <img src="images/Team/<%# Eval("MemberPhoto") %>" alt="<%# Eval("MemberName") %>" style="width:100%; height:250px">
                <div class="containerBox">
                    <h3><%# Eval("MemberName") %></h3>
                    <p class="title"><%# Eval("MemberRole") %></p>
                    <p><%# Eval("UniName") %></p>
                    <p><%# Eval("MemberEmail") %></p>
                    <p><%# Eval("StdID") %></p>
                </div>
            </div>
        </div>
    </ItemTemplate>
    </asp:Repeater>

</div>

    </div>
</body>
</asp:Content>