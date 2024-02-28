<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UON.UIL._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="CusJS/cusjs1.js"></script>
    <link href="CusCSS/cuscss1.css" rel="stylesheet" />
    <link href="CusCSS/sup.css" rel="stylesheet" />
         <style>

        .hide
        {
            display: none;
        }
             .auto-style2 {
                 padding-bottom: 30%;
                 position: relative;
                 top: 31px;
                 left: 0px;
                 height: 315px;
             }
             .auto-style3 {
                 height: 342px;
                 width: 698px;
             }

             .custom-btn {
                 width: 200px;
                 border: none;
                 border-radius: 8px;
                 padding: 5px 0;
                 margin-right: 20px;
             }
             .tab {
                width: 200px;
                text-align: center;
             }
    </style>
    <div class="container">
        <div class="switch">
            <div id="tab1" class="tab active">Before You Come to SG</div>
            <div id="tab2" class="tab">Student Pass</div>
            <div id="tab3" class="tab">Study Tips</div>
            <div id="tab4" class="tab">Traps</div>
        </div>
        
        <!-- First content related to "INTERNATIONAL COMMUNITIES" -->
        <div id="content1" class="content">
        <asp:Repeater ID="rpthomepage1" runat="server">
            <ItemTemplate>
                    <div class="item">
                        <h1><%# Eval("HPC1_Heading") %></h1>
                        <p class="u-text u-text-2"><%# Eval("HPC1_Des") %></p>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
            </div>
        <!-- Second content related to "INDUSTRY STUDENT CHAPTERS", hidden by default -->
        <div id="content2" class="content" style="display: none;">
        <asp:Repeater ID="rpthomepage2" runat="server" >
            <ItemTemplate>
                    <div class="item">
                        <h1><%# Eval("HPC2_Heading") %></h1>
                        <p class="u-text u-text-2"><%# Eval("HPC2_Des") %></p>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
            </div>
        <div id="content3" class="content" style="display: none;">
            <asp:Repeater ID="rpthomepage3" runat="server" >
            <ItemTemplate>
                    <div class="item">
                        <h1><%# Eval("HPC3_Heading") %></h1>
                        <p class="u-text u-text-2"><%# Eval("HPC3_Des") %></p>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
            </div>
        <div id="content4" class="content" style="display: none;">
            <asp:Repeater ID="rpthomepage4" runat="server" >
            <ItemTemplate>
                    <div class="item">
                        <h1><%# Eval("HPC4_Heading") %></h1>
                        <p class="u-text u-text-2"><%# Eval("HPC4_Des") %></p>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
            </div>
            <div class="auto-style2">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8065239936927!2d103.85620230887984!3d1.2903775617621445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da197f38ae8cad%3A0xf0cc7e9c37d34d23!2sPSB%20Academy%20City%20Campus%3A%20Main%20Wing!5e0!3m2!1sen!2ssg!4v1685269351147!5m2!1sen!2ssg" style="border-style: none; border-color: inherit; border-width: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="auto-style3"></iframe>
            </div>
        <div>
        <asp:Repeater ID="rptvd" runat="server" >
            <ItemTemplate>
                <h3><%# Eval("HP_Vd_Name") %></h3>
                 <video width="600" height="350" controls>
                    <source src="Videos/<%# Eval("HP_Vd") %>" type="video/mp4">
                  </video>
            </ItemTemplate>
        </asp:Repeater>
        </div>
       </div>
    <script>
        const tab1 = document.getElementById('tab1');
        const tab2 = document.getElementById('tab2');
        const tab3 = document.getElementById('tab3');
        const tab4 = document.getElementById('tab4');
        const content1 = document.getElementById('content1');
        const content2 = document.getElementById('content2');
        const content3 = document.getElementById('content3');
        const content4 = document.getElementById('content4');

        tab1.addEventListener("click", () => {
            tab2.classList.remove("active");
            tab3.classList.remove("active");
            tab4.classList.remove("active");
            tab1.classList.add("active");
            content1.style.display = "flex";
            content2.style.display = "none";
            content3.style.display = "none";
            content4.style.display = "none";
        });

        tab2.addEventListener("click", () => {
            tab1.classList.remove("active");
            tab2.classList.add("active");
            tab3.classList.remove("active");
            tab4.classList.remove("active");
            content2.style.display = "flex";
            content1.style.display = "none";
            content3.style.display = "none";
            content4.style.display = "none";
        });
        tab3.addEventListener("click", () => {
            tab1.classList.remove("active");
            tab2.classList.remove("active");
            tab3.classList.add("active");
            tab4.classList.remove("active");
            content3.style.display = "flex";
            content1.style.display = "none";
            content2.style.display = "none";
            content4.style.display = "none";
        });
        tab4.addEventListener("click", () => {
            tab1.classList.remove("active");
            tab4.classList.add("active");
            tab2.classList.remove("active");
            tab3.classList.remove("active");
            content4.style.display = "flex";
            content1.style.display = "none";
            content2.style.display = "none";
            content3.style.display = "none";
        });
    </script>
</asp:Content>
