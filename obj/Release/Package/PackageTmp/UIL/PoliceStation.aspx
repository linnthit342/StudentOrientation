<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PoliceStation.aspx.cs" Inherits="UON.UIL.PoliceStation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/sup.css" rel="stylesheet" />    
<body>
    <div class="content">
       <asp:Repeater ID="rptpolice" runat="server">
        <ItemTemplate>
            <div class="item-1">
                <img src="images/policestation/<%# Eval("PsImg") %>" />
                <div class="p2">
                    <div class="title"><%# Eval("PsName") %></div>
                    <div class="d-flex mt">
                        <img class="icon" src="images/location1.png" />
                        <div><%# Eval("PsLocation") %></div>
                    </div>
                    <div class="d-flex mt">
                        <img class="icon" src="images/phone.png" />
                        <div><%# Eval("PsPh") %></div>
                    </div>
                    <div class="mt-5 mb-5 text-center">
                        <button class="btn btn-primary open-modal" data-psid="<%# Eval("PsId") %>">HOW TO GO</button>
                    </div>
                </div>
                <div id="modal<%# Eval("PsId") %>" class="modal modal-small">
                    <img src="images/policestation/<%# Eval("PsLocImg") %>">
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    
    <style>
        .modal{
            display: none;
        }
    </style>
    <script>
        const buttons = document.querySelectorAll(".open-modal");

        buttons.forEach(button => {
            button.addEventListener("click", (e) => {
                e.preventDefault();
                const psId = button.dataset.psid;
                const modal = document.getElementById(`modal${psId}`);
                modal.style.display = "flex";
            });
        });

       
        const modals = document.querySelectorAll(".modal");
        modals.forEach(modal => {
            modal.addEventListener("click", () => {
                modal.style.display = "none";
            });
        });
    </script>
</body>
</asp:Content>
