<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospitals.aspx.cs" Inherits="UON.UIL.Hospitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CusCSS/sup.css" rel="stylesheet" />    
<body>
        <div class="content">
        <asp:Repeater ID="rptHospital" runat="server">
        <ItemTemplate>
        <div class="item-1">
            <img src="images/hospital/<%# Eval("HpImg") %>" />
            <div class="p2">
                <div class="title"><%# Eval("HpName") %></div>
                <div class="d-flex mt">
                    <img class="icon" src="images/location1.png" />
                    <div><%# Eval("HpLocation") %></div>
                </div>
                <div class="d-flex mt">
                    <img class="icon" src="images/phone.png" />
                    <div><%# Eval("HpPh") %></div>
                </div>
                <div class="mt-5 mb-5 text-center">
                        <button class="btn btn-primary open-modal" data-psid="<%# Eval("HpId") %>">HOW TO GO</button>
                    </div>
                </div>
                <div id="modal<%# Eval("HpId") %>" class="modal modal-small">
                    <img src="images/hospital/<%# Eval("HpLocImg") %>">
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

        // Get all the buttons with class "open-modal"
        const buttons = document.querySelectorAll(".open-modal");

        buttons.forEach(button => {
            button.addEventListener("click", (e) => {
                e.preventDefault();
                const HpId = button.dataset.psid; // Get the PsId from the button's data attribute
                const modal = document.getElementById(`modal${HpId}`);
                modal.style.display = "flex";
            });
        });

        // Add click event listener to close the modal when clicked outside the image
        const modals = document.querySelectorAll(".modal");
        modals.forEach(modal => {
            modal.addEventListener("click", () => {
                modal.style.display = "none";
            });
        });
        </script>
</body>
</asp:Content>
