<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="RestaurantCMS.aspx.cs" Inherits="UON.UIL.CMS.RestaurantCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Restaurant Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Res_Id" DataSourceID="Restaurantsource" OnRowEditing="GridView1_RowEditing1" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Res_Id" HeaderText="Res_Id" ReadOnly="True" SortExpression="Res_Id" />
            <asp:BoundField DataField="Res_Name" HeaderText="Res_Name" SortExpression="Res_Name" />
            <asp:BoundField DataField="Res_Loc" HeaderText="Res_Loc" SortExpression="Res_Loc" />
            <asp:BoundField DataField="Res_Opening_hours" HeaderText="Res_Opening_hours" SortExpression="Res_Opening_hours" />
            <asp:TemplateField HeaderText="Res_Img" SortExpression="Res_Img">
                <EditItemTemplate>
                     <img src="../images/restaurant/<%# Eval("Res_Img") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_Res" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../images/restaurant/<%# Eval("Res_Img") %>" style="width:150px; height:200px"/>
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
    <asp:SqlDataSource ID="Restaurantsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Restaurant] WHERE [Res_Id] = @Res_Id" InsertCommand="INSERT INTO [Restaurant] ([Res_Id], [Res_Name], [Res_Loc], [Res_Opening_hours], [Res_Img]) VALUES (@Res_Id, @Res_Name, @Res_Loc, @Res_Opening_hours, @Res_Img)" SelectCommand="SELECT * FROM [Restaurant]" UpdateCommand="UPDATE [Restaurant] SET [Res_Name] = @Res_Name, [Res_Loc] = @Res_Loc, [Res_Opening_hours] = @Res_Opening_hours, [Res_Img] = @Res_Img WHERE [Res_Id] = @Res_Id">
        <DeleteParameters>
            <asp:Parameter Name="Res_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Res_Id" Type="String" />
            <asp:Parameter Name="Res_Name" Type="String" />
            <asp:Parameter Name="Res_Loc" Type="String" />
            <asp:Parameter Name="Res_Opening_hours" Type="String" />
            <asp:Parameter Name="Res_Img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Res_Name" Type="String" />
            <asp:Parameter Name="Res_Loc" Type="String" />
            <asp:Parameter Name="Res_Opening_hours" Type="String" />
            <asp:Parameter Name="Res_Img" Type="String" />
            <asp:Parameter Name="Res_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Restaurant Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="resid" runat="server" Text="Res_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="resid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Res_Name"></asp:Label>
&nbsp;<asp:TextBox ID="resname_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="resloc_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Opening hours"></asp:Label>
    <asp:TextBox ID="resoh_txtbx" runat="server" ></asp:TextBox>
    <br />
    <br />
   
    <asp:Label ID="Label7" runat="server" Text="Res_Image"></asp:Label>
    <asp:FileUpload ID="resimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
