<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="UON.UIL._event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="CusCSS/sup.css" rel="stylesheet" />
<body>
    <div class="content">
        <asp:Repeater ID="rptEvent" runat="server">
        <ItemTemplate>
        <img id="img" src="images/Event/<%# Eval("Event_Img") %>" />
        <div class="modal" id="modal<%# Eval("EventId") %>"" >
            <img src="images/Event/<%# Eval("Event_Img") %>"/>
        </div>
            </ItemTemplate>
            </asp:Repeater>
    </div>
    <style>
        .modal{
        display:none;
        }
    </style>
    <script>

        const img = document.getElementById("img");
        Array.from(imgs).forEach(img => {
            const modal = document.getElementById(`modal${img.id}`);
        img.addEventListener("click", () => {
          modal.style.display = "flex";
        });

            modal.addEventListener("click", () => {
                modal.style.display = "none";
            });
        });
    </script>
</body>

</asp:Content>
