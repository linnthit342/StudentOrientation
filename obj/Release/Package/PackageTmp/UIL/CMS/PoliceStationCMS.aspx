<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="PoliceStationCMS.aspx.cs" Inherits="UON.UIL.CMS.PoliceStationCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Police Station Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PsId" DataSourceID="PoliceStationsource" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PsId" HeaderText="PsId" ReadOnly="True" SortExpression="PsId" />
            <asp:BoundField DataField="PsName" HeaderText="PsName" SortExpression="PsName" />
            <asp:BoundField DataField="PsLocation" HeaderText="PsLocation" SortExpression="PsLocation" />
            <asp:TemplateField HeaderText="PsImg" SortExpression="PsImg">
                <EditItemTemplate>
                     <img src="../images/policestation/<%# Eval("PsImg") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_Ps" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../images/policestation/<%# Eval("PsImg") %>" style="width:150px; height:200px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PsLocImg" SortExpression="PsLocImg">
                <EditItemTemplate>
                     <img src="../images/policestation/<%# Eval("PsLocImg") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_Psloc" runat="server" />
                </EditItemTemplate>
                
                
                <ItemTemplate>
                    <img src="../images/policestation/<%# Eval("PsLocImg") %>" style="width:150px; height:200px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PsPh" HeaderText="PsPh" SortExpression="PsPh" />
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
    <asp:SqlDataSource ID="PoliceStationsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Police_Station] WHERE [PsId] = @PsId" InsertCommand="INSERT INTO [Police_Station] ([PsId], [PsName], [PsLocation], [PsImg], [PsLocImg], [PsPh]) VALUES (@PsId, @PsName, @PsLocation, @PsImg, @PsLocImg, @PsPh)" SelectCommand="SELECT * FROM [Police_Station]" UpdateCommand="UPDATE [Police_Station] SET [PsName] = @PsName, [PsLocation] = @PsLocation, [PsImg] = @PsImg, [PsLocImg] = @PsLocImg, [PsPh] = @PsPh WHERE [PsId] = @PsId">
        <DeleteParameters>
            <asp:Parameter Name="PsId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PsId" Type="String" />
            <asp:Parameter Name="PsName" Type="String" />
            <asp:Parameter Name="PsLocation" Type="String" />
            <asp:Parameter Name="PsImg" Type="String" />
            <asp:Parameter Name="PsLocImg" Type="String" />
            <asp:Parameter Name="PsPh" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PsName" Type="String" />
            <asp:Parameter Name="PsLocation" Type="String" />
            <asp:Parameter Name="PsImg" Type="String" />
            <asp:Parameter Name="PsLocImg" Type="String" />
            <asp:Parameter Name="PsPh" Type="String" />
            <asp:Parameter Name="PsId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

          <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Police Station Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="psid" runat="server" Text="Ps_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="psid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Ps_Name"></asp:Label>
&nbsp;<asp:TextBox ID="psname_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="psloc_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
  
    <asp:Label ID="Label7" runat="server" Text="Ps_Image"></asp:Label>
    <asp:FileUpload ID="psimg_fup" runat="server" Width="190px" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="PsLoc_Image"></asp:Label>
    <asp:FileUpload ID="pslocimg_fup" runat="server" Width="190px" />
    <br />
    <br />
        <asp:Label ID="Label4" runat="server" Text="Ps_Phone"></asp:Label>
    <asp:TextBox ID="psph_txtbx" runat="server" ></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
