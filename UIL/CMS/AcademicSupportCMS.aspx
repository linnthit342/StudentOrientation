<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="AcademicSupportCMS.aspx.cs" Inherits="UON.UIL.CMS.AcademicSupportCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label14" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Academic Support Data"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="AcSId" DataSourceID="AcademicSupportsource" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="AcSId" HeaderText="AcSId" ReadOnly="True" SortExpression="AcSId" />
            <asp:TemplateField HeaderText="AcSDes" SortExpression="AcSDes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxAS" runat="server" Text='<%# Bind("AcSDes") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelAS" runat="server" Text='<%# Bind("AcSDes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AcSImg" SortExpression="AcSImg">
                <EditItemTemplate>
                     <img src="../images/Academic/<%# Eval("AcSImg") %>" style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_AcS" runat="server" />
                </EditItemTemplate>
              
                <ItemTemplate>
                    <img src="../images/Academic/<%# Eval("AcSImg") %>" style="width:150px; height:200px"/>
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
    <asp:SqlDataSource ID="AcademicSupportsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [AcademicSupport] WHERE [AcSId] = @AcSId" InsertCommand="INSERT INTO [AcademicSupport] ([AcSId], [AcSDes], [AcSImg]) VALUES (@AcSId, @AcSDes, @AcSImg)" SelectCommand="SELECT * FROM [AcademicSupport]" UpdateCommand="UPDATE [AcademicSupport] SET [AcSDes] = @AcSDes, [AcSImg] = @AcSImg WHERE [AcSId] = @AcSId">
        <DeleteParameters>
            <asp:Parameter Name="AcSId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AcSId" Type="String" />
            <asp:Parameter Name="AcSDes" Type="String" />
            <asp:Parameter Name="AcSImg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AcSDes" Type="String" />
            <asp:Parameter Name="AcSImg" Type="String" />
            <asp:Parameter Name="AcSId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Academic Support Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="acsid" runat="server" Text="AcS_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="acsid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="AcS_Des"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="acsdes_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
   
    <asp:Label ID="Label7" runat="server" Text="AcS_Img"></asp:Label>
    <asp:FileUpload ID="acsimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
