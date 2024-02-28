<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="EventCMS.aspx.cs" Inherits="UON.UIL.CMS.EventCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label14" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Event Data"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="EventId" DataSourceID="EventCMSsource" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EventId" HeaderText="EventId" ReadOnly="True" SortExpression="EventId" />
            <asp:TemplateField HeaderText="Event_Img" SortExpression="Event_Img">
                <EditItemTemplate>
                     <img src="../images/Event/<%# Eval("Event_Img") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_Event" runat="server" />
                </EditItemTemplate>
              
                <ItemTemplate>
                    <img src="../images/Event/<%# Eval("Event_Img") %>" style="width:150px; height:200px"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="EventCMSsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Event] WHERE [EventId] = @EventId" InsertCommand="INSERT INTO [Event] ([EventId], [Event_Img]) VALUES (@EventId, @Event_Img)" SelectCommand="SELECT * FROM [Event]" UpdateCommand="UPDATE [Event] SET [Event_Img] = @Event_Img WHERE [EventId] = @EventId">
        <DeleteParameters>
            <asp:Parameter Name="EventId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EventId" Type="String" />
            <asp:Parameter Name="Event_Img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Event_Img" Type="String" />
            <asp:Parameter Name="EventId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

       <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Event Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Event Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="eventid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
   
    <asp:Label ID="Label7" runat="server" Text="Event Img"></asp:Label>
    <asp:FileUpload ID="eventimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
