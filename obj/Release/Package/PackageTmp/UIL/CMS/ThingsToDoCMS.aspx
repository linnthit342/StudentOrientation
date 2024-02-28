<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="ThingsToDoCMS.aspx.cs" Inherits="UON.UIL.CMS.ThingsToDoCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style type="text/css">
        #TextArea1 {
            height: 82px;
            width: 208px;
        }
        #ttdldesc_txtbx {
            height: 78px;
            width: 278px;
        }
            </style>
    <div class="container">
    <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Things To Do Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="TTDId" DataSourceID="ThingsToDosource" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TTDId" HeaderText="TTDId" ReadOnly="True" SortExpression="TTDId" />
            <asp:BoundField DataField="TTDTitle" HeaderText="TTDTitle" SortExpression="TTDTitle" />
             <asp:TemplateField HeaderText="TTDdes" SortExpression="TTDdes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxTTD" runat="server" Text='<%# Bind("TTDdesc") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelTTD" runat="server" Text='<%# Bind("TTDdesc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TTDImg" SortExpression="TTDImg">
               <EditItemTemplate>
                     <img src="../images/<%# Eval("TTDImg")%> " style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_TTD" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <img src="../images/<%# Eval("TTDImg") %>" style="width:150px; height:200px"/>
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
    <asp:SqlDataSource ID="ThingsToDosource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [ThingsToDo] WHERE [TTDId] = @TTDId" InsertCommand="INSERT INTO [ThingsToDo] ([TTDId], [TTDTitle], [TTDdesc], [TTDImg]) VALUES (@TTDId, @TTDTitle, @TTDdesc, @TTDImg)" SelectCommand="SELECT * FROM [ThingsToDo]" UpdateCommand="UPDATE [ThingsToDo] SET [TTDTitle] = @TTDTitle, [TTDdesc] = @TTDdesc, [TTDImg] = @TTDImg WHERE [TTDId] = @TTDId">
        <DeleteParameters>
            <asp:Parameter Name="TTDId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TTDId" Type="String" />
            <asp:Parameter Name="TTDTitle" Type="String" />
            <asp:Parameter Name="TTDdesc" Type="String" />
            <asp:Parameter Name="TTDImg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TTDTitle" Type="String" />
            <asp:Parameter Name="TTDdesc" Type="String" />
            <asp:Parameter Name="TTDImg" Type="String" />
            <asp:Parameter Name="TTDId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="ThingsToDo Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="ttdid" runat="server" Text="TTD_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ttdid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="TTD_Title"></asp:Label>
&nbsp;<asp:TextBox ID="ttdtitle_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="TTD_Desc"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ttddesc_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
   
    <asp:Label ID="Label7" runat="server" Text="TTD_Image"></asp:Label>
    <asp:FileUpload ID="ttdimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Things To Do List Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="TTDLId" DataSourceID="ThingsToDoListsource" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TTDLId" HeaderText="TTDLId" ReadOnly="True" SortExpression="TTDLId" />
            <asp:BoundField DataField="TTDLTitle" HeaderText="TTDLTitle" SortExpression="TTDLTitle" />
            <asp:BoundField DataField="TTDL_Sub_Title" HeaderText="TTDL_Sub_Title" SortExpression="TTDL_Sub_Title" />
           <asp:TemplateField HeaderText="TTDdesc" SortExpression="TTDdesc">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxTTDc" runat="server" Text='<%# Bind("TTDdesc") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelTTDc" runat="server" Text='<%# Bind("TTDdesc") %>'></asp:Label>
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
    <asp:SqlDataSource ID="ThingsToDoListsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [ThingsToDo_List] WHERE [TTDLId] = @TTDLId" InsertCommand="INSERT INTO [ThingsToDo_List] ([TTDLId], [TTDLTitle], [TTDL_Sub_Title], [TTDdesc]) VALUES (@TTDLId, @TTDLTitle, @TTDL_Sub_Title, @TTDdesc)" SelectCommand="SELECT * FROM [ThingsToDo_List]" UpdateCommand="UPDATE [ThingsToDo_List] SET [TTDLTitle] = @TTDLTitle, [TTDL_Sub_Title] = @TTDL_Sub_Title, [TTDdesc] = @TTDdesc WHERE [TTDLId] = @TTDLId">
        <DeleteParameters>
            <asp:Parameter Name="TTDLId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TTDLId" Type="String" />
            <asp:Parameter Name="TTDLTitle" Type="String" />
            <asp:Parameter Name="TTDL_Sub_Title" Type="String" />
            <asp:Parameter Name="TTDdesc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TTDLTitle" Type="String" />
            <asp:Parameter Name="TTDL_Sub_Title" Type="String" />
            <asp:Parameter Name="TTDdesc" Type="String" />
            <asp:Parameter Name="TTDLId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label13" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="ThingsToDoList Upload"></asp:Label>
    <br />
&nbsp;<asp:Label ID="ttdlid" runat="server" Text="TTDL_ID"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="ttdlid_txtbx" runat="server" Width="178px"></asp:TextBox>
    <br />
    <br />
&nbsp;<asp:Label ID="Label10" runat="server" Text="TTDL_Title"></asp:Label>
    <asp:TextBox ID="ttdltitle_txtbx" runat="server" Width="172px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" Text="TTDL_Subtitle"></asp:Label>
    <asp:TextBox ID="ttdlsub_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label12" runat="server" Text="TTDL_Description"></asp:Label>
    <br />
    <asp:TextBox ID="ttdldesc_txtbx" runat="server" Height="105px" TextMode="MultiLine" Width="283px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
