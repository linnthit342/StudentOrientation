<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="HospitalCMS.aspx.cs" Inherits="UON.UIL.CMS.HospitalCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Hospital Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="HpId" DataSourceID="Hospitalsource" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="HpId" HeaderText="HpId" ReadOnly="True" SortExpression="HpId" />
            <asp:BoundField DataField="HpName" HeaderText="HpName" SortExpression="HpName" />
            <asp:BoundField DataField="HpLocation" HeaderText="HpLocation" SortExpression="HpLocation" />
            <asp:TemplateField HeaderText="HpImg" SortExpression="HpImg">
                      <EditItemTemplate>
                     <img src="../images/hospital/<%# Eval("HpImg") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_Hp" runat="server" />
                </EditItemTemplate>
              
                <ItemTemplate>
                    <img src="../images/hospital/<%# Eval("HpImg") %>" style="width:150px; height:200px"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="HpPh" HeaderText="HpPh" SortExpression="HpPh" />
            <asp:TemplateField HeaderText="HpLocImg" SortExpression="HpLocImg">
               <EditItemTemplate>
                     <img src="../images/hospital/<%# Eval("HpLocImg") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_Hploc" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../images/hospital/<%# Eval("HpLocImg") %>" style="width:150px; height:200px"/>
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
    <asp:SqlDataSource ID="Hospitalsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Hospital] WHERE [HpId] = @HpId" InsertCommand="INSERT INTO [Hospital] ([HpId], [HpName], [HpLocation], [HpImg], [HpPh], [HpLocImg]) VALUES (@HpId, @HpName, @HpLocation, @HpImg, @HpPh, @HpLocImg)" SelectCommand="SELECT * FROM [Hospital]" UpdateCommand="UPDATE [Hospital] SET [HpName] = @HpName, [HpLocation] = @HpLocation, [HpImg] = @HpImg, [HpPh] = @HpPh, [HpLocImg] = @HpLocImg WHERE [HpId] = @HpId">
        <DeleteParameters>
            <asp:Parameter Name="HpId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HpId" Type="String" />
            <asp:Parameter Name="HpName" Type="String" />
            <asp:Parameter Name="HpLocation" Type="String" />
            <asp:Parameter Name="HpImg" Type="String" />
            <asp:Parameter Name="HpPh" Type="Int32" />
            <asp:Parameter Name="HpLocImg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HpName" Type="String" />
            <asp:Parameter Name="HpLocation" Type="String" />
            <asp:Parameter Name="HpImg" Type="String" />
            <asp:Parameter Name="HpPh" Type="Int32" />
            <asp:Parameter Name="HpLocImg" Type="String" />
            <asp:Parameter Name="HpId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Hospital Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="hpid" runat="server" Text="Hp_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="hpid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Hp_Name"></asp:Label>
&nbsp;<asp:TextBox ID="hpname_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Hp_Location"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="hploc_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
  
    <asp:Label ID="Label7" runat="server" Text="Hp_Image"></asp:Label>
    <asp:FileUpload ID="hpimg_fup" runat="server" Width="190px" />
    <br />
    <br />

    <asp:Label ID="Label4" runat="server" Text="Hp_Phone"></asp:Label>
    <asp:TextBox ID="hpph_txtbx" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Hp_Loc_Image"></asp:Label>
    <asp:FileUpload ID="hplocimg_fup" runat="server" Width="190px" />
    <br />
    <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
