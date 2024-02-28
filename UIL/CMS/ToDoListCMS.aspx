<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="ToDoListCMS.aspx.cs" Inherits="UON.UIL.CMS.ToDoListCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="To Do List Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ToDoList_Id" DataSourceID="ToDoListCMSsource" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="15" ForeColor="Black" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="Vertical">
        
        <AlternatingRowStyle BackColor="#CCCCCC" />
        
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ToDoList_Id" HeaderText="ToDoList_Id" ReadOnly="True" SortExpression="ToDoList_Id" />
            <asp:BoundField DataField="ToDoList_Heading" HeaderText="ToDoList_Heading" SortExpression="ToDoList_Heading" />
            <asp:BoundField DataField="ToDoList_SubTitle1" HeaderText="ToDoList_SubTitle1" SortExpression="ToDoList_SubTitle1" />
            <asp:BoundField DataField="ToDoList_SubTitle2" HeaderText="ToDoList_SubTitle2" SortExpression="ToDoList_SubTitle2" />
            <asp:TemplateField HeaderText="ToDoList_Des1" SortExpression="ToDoList_Des1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ToDoList_Des1") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ToDoList_Des1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
  <asp:TemplateField HeaderText="ToDoList_Des2" SortExpression="ToDoList_Des2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ToDoList_Des2") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ToDoList_Des2") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ToDoList_Img" SortExpression="ToDoList_Img">
                <EditItemTemplate>
                    <img src="../tdimg/<%#Eval ("ToDoList_Img")%>" style="width:150px; height:200px"/>
                    <asp:FileUpload ID="FileUpload_Tdl" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../tdimg/<%#Eval ("ToDoList_Img")%>" style="width:150px; height:200px"/>
                </ItemTemplate>
              
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="ToDoListCMSsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [ToDoList] WHERE [ToDoList_Id] = @ToDoList_Id" InsertCommand="INSERT INTO [ToDoList] ([ToDoList_Id], [ToDoList_Heading], [ToDoList_SubTitle1], [ToDoList_SubTitle2], [ToDoList_Des1], [ToDoList_Des2], [ToDoList_Img]) VALUES (@ToDoList_Id, @ToDoList_Heading, @ToDoList_SubTitle1, @ToDoList_SubTitle2, @ToDoList_Des1, @ToDoList_Des2, @ToDoList_Img)" SelectCommand="SELECT * FROM [ToDoList]" UpdateCommand="UPDATE [ToDoList] SET [ToDoList_Heading] = @ToDoList_Heading, [ToDoList_SubTitle1] = @ToDoList_SubTitle1, [ToDoList_SubTitle2] = @ToDoList_SubTitle2, [ToDoList_Des1] = @ToDoList_Des1, [ToDoList_Des2] = @ToDoList_Des2, [ToDoList_Img] = @ToDoList_Img WHERE [ToDoList_Id] = @ToDoList_Id">
        <DeleteParameters>
            <asp:Parameter Name="ToDoList_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ToDoList_Id" Type="String" />
            <asp:Parameter Name="ToDoList_Heading" Type="String" />
            <asp:Parameter Name="ToDoList_SubTitle1" Type="String" />
            <asp:Parameter Name="ToDoList_SubTitle2" Type="String" />
            <asp:Parameter Name="ToDoList_Des1" Type="String" />
            <asp:Parameter Name="ToDoList_Des2" Type="String" />
            <asp:Parameter Name="ToDoList_Img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ToDoList_Heading" Type="String" />
            <asp:Parameter Name="ToDoList_SubTitle1" Type="String" />
            <asp:Parameter Name="ToDoList_SubTitle2" Type="String" />
            <asp:Parameter Name="ToDoList_Des1" Type="String" />
            <asp:Parameter Name="ToDoList_Des2" Type="String" />
            <asp:Parameter Name="ToDoList_Img" Type="String" />
            <asp:Parameter Name="ToDoList_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="ToDoList Form Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="tdlid" runat="server" Text="ToDoList_Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tdlid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="ToDoList_Heading"></asp:Label>
&nbsp;<asp:TextBox ID="tdlhd_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="ToDoList_SubTitle1"></asp:Label>
    <asp:TextBox ID="tdlst_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="ToDoList_Des1"></asp:Label>
    <br />
    <asp:TextBox ID="tdldes1_txtbx" runat="server" Height="150px" TextMode="MultiLine" Width="317px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="ToDoList_SubTitle2"></asp:Label>
    <asp:TextBox ID="tdlst2_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="ToDoList_Des2"></asp:Label>
    <br />
    <asp:TextBox ID="tdldes2_txtbx" runat="server" Height="150px" TextMode="MultiLine" Width="318px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="ToDoList_Image"></asp:Label>
    <asp:FileUpload ID="tdlimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
    </div>
</asp:Content>
