<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="StudentClubCMS.aspx.cs" Inherits="UON.UIL.CMS.StudentClubCMS" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Student Club Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Std_Club_Id" DataSourceID="StudentClubsource" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Std_Club_Id" HeaderText="Std_Club_Id" ReadOnly="True" SortExpression="Std_Club_Id" />
            <asp:BoundField DataField="Std_Club_Name" HeaderText="Std_Club_Name" SortExpression="Std_Club_Name" />
            <asp:TemplateField HeaderText="Std_Club_Des" SortExpression="Std_Club_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxStd_Club" runat="server" Text='<%# Bind("Std_Club_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelStd_Club" runat="server" Text='<%# Bind("Std_Club_Des") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Std_Club_Img" SortExpression="Std_Club_Img">
               <EditItemTemplate>
                     <img src="../images/stdclub/<%# Eval("Std_Club_Img")%> " style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_StdC" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../images/stdclub/<%# Eval("Std_Club_Img") %>" style="width:150px; height:200px"/>
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
    <asp:SqlDataSource ID="StudentClubsource" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Student_Club] WHERE [Std_Club_Id] = @Std_Club_Id" InsertCommand="INSERT INTO [Student_Club] ([Std_Club_Id], [Std_Club_Name], [Std_Club_Des], [Std_Club_Img]) VALUES (@Std_Club_Id, @Std_Club_Name, @Std_Club_Des, @Std_Club_Img)" SelectCommand="SELECT * FROM [Student_Club]" UpdateCommand="UPDATE [Student_Club] SET [Std_Club_Name] = @Std_Club_Name, [Std_Club_Des] = @Std_Club_Des, [Std_Club_Img] = @Std_Club_Img WHERE [Std_Club_Id] = @Std_Club_Id">
        <DeleteParameters>
            <asp:Parameter Name="Std_Club_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Std_Club_Id" Type="String" />
            <asp:Parameter Name="Std_Club_Name" Type="String" />
            <asp:Parameter Name="Std_Club_Des" Type="String" />
            <asp:Parameter Name="Std_Club_Img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Std_Club_Name" Type="String" />
            <asp:Parameter Name="Std_Club_Des" Type="String" />
            <asp:Parameter Name="Std_Club_Img" Type="String" />
            <asp:Parameter Name="Std_Club_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Student Club Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="ttdid" runat="server" Text="Std_Club_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="stdcid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Std_Club_Name"></asp:Label>
&nbsp;<asp:TextBox ID="stdcname_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Std_Club_Des"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="stdcdes_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
   
    <asp:Label ID="Label7" runat="server" Text="Std_Club_Img"></asp:Label>
    <asp:FileUpload ID="stdcimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="International Student Club Data"></asp:Label>
        <br />
        <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Int_Std_Club_Id" DataSourceID="Int_Std_Club_Source" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView2_RowEditing" OnRowUpdated="GridView2_RowUpdated" OnRowUpdating="GridView2_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Int_Std_Club_Id" HeaderText="Int_Std_Club_Id" ReadOnly="True" SortExpression="Int_Std_Club_Id" />
            <asp:BoundField DataField="Int_Std_Club_Name" HeaderText="Int_Std_Club_Name" SortExpression="Int_Std_Club_Name" />
            <asp:TemplateField HeaderText="Int_Std_Club_Des" SortExpression="Int_Std_Club_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxInt_Std_Club" runat="server" Text='<%# Bind("Int_Std_Club_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelInt_Std_Club" runat="server" Text='<%# Bind("Int_Std_Club_Des") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Int_Std_Club_Img" SortExpression="Int_Std_Club_Img">
               <EditItemTemplate>
                     <img src="../images/stdclub/<%# Eval("Int_Std_Club_Img")%> " style="width:100px; height:140px"/>
                    <asp:FileUpload ID="FileUpload_IntStdC" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../images/stdclub/<%# Eval("Int_Std_Club_Img") %>" style="width:150px; height:200px"/>
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
    <asp:SqlDataSource ID="Int_Std_Club_Source" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Int_Student_Club] WHERE [Int_Std_Club_Id] = @Int_Std_Club_Id" InsertCommand="INSERT INTO [Int_Student_Club] ([Int_Std_Club_Id], [Int_Std_Club_Name], [Int_Std_Club_Des], [Int_Std_Club_Img]) VALUES (@Int_Std_Club_Id, @Int_Std_Club_Name, @Int_Std_Club_Des, @Int_Std_Club_Img)" SelectCommand="SELECT * FROM [Int_Student_Club]" UpdateCommand="UPDATE [Int_Student_Club] SET [Int_Std_Club_Name] = @Int_Std_Club_Name, [Int_Std_Club_Des] = @Int_Std_Club_Des, [Int_Std_Club_Img] = @Int_Std_Club_Img WHERE [Int_Std_Club_Id] = @Int_Std_Club_Id">
        <DeleteParameters>
            <asp:Parameter Name="Int_Std_Club_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Int_Std_Club_Id" Type="String" />
            <asp:Parameter Name="Int_Std_Club_Name" Type="String" />
            <asp:Parameter Name="Int_Std_Club_Des" Type="String" />
            <asp:Parameter Name="Int_Std_Club_Img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Int_Std_Club_Name" Type="String" />
            <asp:Parameter Name="Int_Std_Club_Des" Type="String" />
            <asp:Parameter Name="Int_Std_Club_Img" Type="String" />
            <asp:Parameter Name="Int_Std_Club_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="International Student Club Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Int_Std_Club_Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="intscid_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Int_Std_Club_Name"></asp:Label>
&nbsp;<asp:TextBox ID="intscname_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Int_Std_Club_Des"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="intscdes_txtbx" runat="server"></asp:TextBox>
    <br />
    <br />
   
    <asp:Label ID="Label9" runat="server" Text="Int_Std_Club_Img"></asp:Label>
    <asp:FileUpload ID="intscimg_fup" runat="server" Width="190px" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" style="height: 29px" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server" Text="Label" Width="350px"></asp:Label>
        </div>
</asp:Content>
