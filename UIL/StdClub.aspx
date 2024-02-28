<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StdClub.aspx.cs" Inherits="UON.UIL.StdClub" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <link href="CusCSS/sup.css" rel="stylesheet" />
<body>
    
    <div class="switch">
        <div id="tab1" class="tab active">INTERNATIONAL COMMUNITIES</div>
        <div id="tab2" class="tab">INDUSTRY STUDENT CHAPTERS</div>
    </div>
    <div id="content1" class="content">
        <asp:Repeater ID="rptinterstdclub" runat="server">
        <ItemTemplate>
        <div class="item student-associations-item">
            <img src="images/stdclub/<%# Eval("Int_Std_Club_Img") %>" />
            <div class="title"><%# Eval("Int_Std_Club_Name") %></div>
            <div class="desc"><%# Eval("Int_Std_Club_Des") %></div>
        </div>

            </ItemTemplate>
            </asp:Repeater>
                    </div>
    <div id="content2" class="content" style="display: none">
        <asp:Repeater ID="rptindstdclub" runat="server">
        <ItemTemplate>
        <div class="item student-associations-item">
            <img src="images/stdclub/<%# Eval("Std_Club_Img") %>" />
            <div class="title"><%# Eval("Std_Club_Name") %></div>
            <div class="desc"><%# Eval("Std_Club_Des") %></div>
        </div>
            </ItemTemplate>
            </asp:Repeater>
    </div>
    <script>
        const tab1 = document.getElementById('tab1');
        const tab2 = document.getElementById('tab2');
        const content1 = document.getElementById('content1');
        const content2 = document.getElementById('content2');

        tab1.addEventListener("click", () => {
          tab2.classList.remove("active");
          tab1.classList.add("active");
          content1.style.display = "flex";
          content2.style.display = "none";
        });

        tab2.addEventListener("click", () => {
          tab1.classList.remove("active");
          tab2.classList.add("active");
          content2.style.display = "flex";
          content1.style.display = "none";
        });
    </script>
</body>

</asp:Content>
