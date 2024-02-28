<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="ContactUsCMS.aspx.cs" Inherits="UON.UIL.CMS.ContactUsCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label14" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Contact Data"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Contact_Page_Id" DataSourceID="ContactUssource" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Contact_Page_Id" HeaderText="Contact_Page_Id" ReadOnly="True" SortExpression="Contact_Page_Id" />
            <asp:BoundField DataField="Contact_Page_Heading" HeaderText="Contact_Page_Heading" SortExpression="Contact_Page_Heading" />
            <asp:TemplateField HeaderText="Contact_Page_Des" SortExpression="Contact_Page_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxCP" runat="server" Text='<%# Bind("Contact_Page_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelCP" runat="server" Text='<%# Bind("Contact_Page_Des") %>'></asp:Label>
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
    <asp:SqlDataSource ID="ContactUssource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Contact_Page] WHERE [Contact_Page_Id] = @Contact_Page_Id" InsertCommand="INSERT INTO [Contact_Page] ([Contact_Page_Id], [Contact_Page_Heading], [Contact_Page_Des]) VALUES (@Contact_Page_Id, @Contact_Page_Heading, @Contact_Page_Des)" SelectCommand="SELECT * FROM [Contact_Page]" UpdateCommand="UPDATE [Contact_Page] SET [Contact_Page_Heading] = @Contact_Page_Heading, [Contact_Page_Des] = @Contact_Page_Des WHERE [Contact_Page_Id] = @Contact_Page_Id">
        <DeleteParameters>
            <asp:Parameter Name="Contact_Page_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Contact_Page_Id" Type="String" />
            <asp:Parameter Name="Contact_Page_Heading" Type="String" />
            <asp:Parameter Name="Contact_Page_Des" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Contact_Page_Heading" Type="String" />
            <asp:Parameter Name="Contact_Page_Des" Type="String" />
            <asp:Parameter Name="Contact_Page_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

        <br />
    <asp:Label ID="Label13" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Contact Page Upload"></asp:Label>
    <br />
&nbsp;<asp:Label ID="cpid" runat="server" Text="Contact Page ID"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="cpid_txtbx" runat="server" Width="178px"></asp:TextBox>
    <br />
    <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="Contact Page Heading"></asp:Label>
    <asp:TextBox ID="cphd_txtbx" runat="server" Width="172px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label12" runat="server" Text="Contact Page Description"></asp:Label>
    <br />
    <asp:TextBox ID="cpdesc_txtbx" runat="server" Height="105px" TextMode="MultiLine" Width="283px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Contact Us Data"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="CU_Id" DataSourceID="ContactUsInfosource" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CU_Id" HeaderText="CU_Id" ReadOnly="True" SortExpression="CU_Id" />
            <asp:BoundField DataField="CU_Country" HeaderText="CU_Country" SortExpression="CU_Country" />
            <asp:BoundField DataField="CU_Ph" HeaderText="CU_Ph" SortExpression="CU_Ph" />
            <asp:BoundField DataField="CU_Fax" HeaderText="CU_Fax" SortExpression="CU_Fax" />
            <asp:BoundField DataField="CU_Email" HeaderText="CU_Email" SortExpression="CU_Email" />
            <asp:BoundField DataField="CU_Location" HeaderText="CU_Location" SortExpression="CU_Location" />
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
    <asp:SqlDataSource ID="ContactUsInfosource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Contact_Us] WHERE [CU_Id] = @CU_Id" InsertCommand="INSERT INTO [Contact_Us] ([CU_Id], [CU_Country], [CU_Ph], [CU_Fax], [CU_Email], [CU_Location]) VALUES (@CU_Id, @CU_Country, @CU_Ph, @CU_Fax, @CU_Email, @CU_Location)" SelectCommand="SELECT * FROM [Contact_Us]" UpdateCommand="UPDATE [Contact_Us] SET [CU_Country] = @CU_Country, [CU_Ph] = @CU_Ph, [CU_Fax] = @CU_Fax, [CU_Email] = @CU_Email, [CU_Location] = @CU_Location WHERE [CU_Id] = @CU_Id">
        <DeleteParameters>
            <asp:Parameter Name="CU_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CU_Id" Type="String" />
            <asp:Parameter Name="CU_Country" Type="String" />
            <asp:Parameter Name="CU_Ph" Type="String" />
            <asp:Parameter Name="CU_Fax" Type="String" />
            <asp:Parameter Name="CU_Email" Type="String" />
            <asp:Parameter Name="CU_Location" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CU_Country" Type="String" />
            <asp:Parameter Name="CU_Ph" Type="String" />
            <asp:Parameter Name="CU_Fax" Type="String" />
            <asp:Parameter Name="CU_Email" Type="String" />
            <asp:Parameter Name="CU_Location" Type="String" />
            <asp:Parameter Name="CU_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Contact Us Upload"></asp:Label>
    <br />
    <br />
&nbsp;<asp:Label ID="cuid" runat="server" Text="Contact Us ID"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="cuid_txtbx" runat="server" Width="178px"></asp:TextBox>
    <br />
    <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="CU_Country"></asp:Label>
    <asp:TextBox ID="cucty_txtbx" runat="server" Width="172px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" Text="CU_Phone"></asp:Label>
    <asp:TextBox ID="cuph_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="CU_Fax"></asp:Label>
    <asp:TextBox ID="cufax_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="CU_Email"></asp:Label>
    <asp:TextBox ID="cuemail_txtbx" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="CU_Location"></asp:Label>
    <asp:TextBox ID="culoc_txtbx" runat="server" ></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" />
    <br />
    
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
