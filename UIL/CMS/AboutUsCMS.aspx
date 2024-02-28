<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="AboutUsCMS.aspx.cs" Inherits="UON.UIL.CMS.AboutUsCMS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:Label ID="Label12" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="AboutUs Page Data"></asp:Label>
    <br/>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AbtId" DataSourceID="AbtSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="AbtId" HeaderText="AbtId" ReadOnly="True" SortExpression="AbtId" />
            <asp:BoundField DataField="AbtHeading" HeaderText="AbtHeading" SortExpression="AbtHeading" />
            <asp:BoundField DataField="AbtSubHeading" HeaderText="AbtSubHeading" SortExpression="AbtSubHeading" />
            <asp:TemplateField HeaderText="Des" SortExpression="Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxAbt" runat="server" Text='<%# Bind("Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelAbt" runat="server" Text='<%# Bind("Des") %>'></asp:Label>
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
    <asp:SqlDataSource ID="AbtSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [About] WHERE [AbtId] = @AbtId" InsertCommand="INSERT INTO [About] ([AbtId], [AbtHeading], [AbtSubHeading], [Des]) VALUES (@AbtId, @AbtHeading, @AbtSubHeading, @Des)" SelectCommand="SELECT * FROM [About]" UpdateCommand="UPDATE [About] SET [AbtHeading] = @AbtHeading, [AbtSubHeading] = @AbtSubHeading, [Des] = @Des WHERE [AbtId] = @AbtId">
        <DeleteParameters>
            <asp:Parameter Name="AbtId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AbtId" Type="String" />
            <asp:Parameter Name="AbtHeading" Type="String" />
            <asp:Parameter Name="AbtSubHeading" Type="String" />
            <asp:Parameter Name="Des" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AbtHeading" Type="String" />
            <asp:Parameter Name="AbtSubHeading" Type="String" />
            <asp:Parameter Name="Des" Type="String" />
            <asp:Parameter Name="AbtId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
        <asp:Label ID="Label13" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="AboutUs Page Upload"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="About Id"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="About Heading"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="About Subheading"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="About Description"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="90px" TextMode="MultiLine" Width="313px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Upload" runat="server" Text="Upload" OnClick="Button1_Click" />

    <br />
    <br />
    <asp:Label ID="Label14" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Team Member Data"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="TeamId" DataSourceID="TeamSource1" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView2_RowEditing" OnRowUpdated="GridView2_RowUpdated" OnRowUpdating="GridView2_RowUpdating">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TeamId" HeaderText="TeamId" ReadOnly="True" SortExpression="TeamId" />
            <asp:TemplateField HeaderText="MemberPhoto" SortExpression="MemberPhoto">
                <EditItemTemplate>
                    <img src="../images/Team/<%#Eval ("MemberPhoto")%>" style="width:150px; height:200px"/>
                    <asp:FileUpload ID="FileUpload_Team" runat="server" />
                </EditItemTemplate>

                
                <ItemTemplate>
                    <img src="../images/Team/<%#Eval ("MemberPhoto")%>" style="width:150px; height:200px"/>
                </ItemTemplate>
              
            </asp:TemplateField>
            <asp:BoundField DataField="MemberName" HeaderText="MemberName" SortExpression="MemberName" />
            <asp:BoundField DataField="MemberRole" HeaderText="MemberRole" SortExpression="MemberRole" />
            <asp:BoundField DataField="UniName" HeaderText="UniName" SortExpression="UniName" />
            <asp:BoundField DataField="MemberEmail" HeaderText="MemberEmail" SortExpression="MemberEmail" />
            <asp:BoundField DataField="StdID" HeaderText="StdID" SortExpression="StdID" />
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
    <asp:SqlDataSource ID="TeamSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Team] WHERE [TeamId] = @TeamId" InsertCommand="INSERT INTO [Team] ([TeamId], [MemberPhoto], [MemberName], [MemberRole], [UniName], [MemberEmail], [StdID]) VALUES (@TeamId, @MemberPhoto, @MemberName, @MemberRole, @UniName, @MemberEmail, @StdID)" SelectCommand="SELECT * FROM [Team]" UpdateCommand="UPDATE [Team] SET [MemberPhoto] = @MemberPhoto, [MemberName] = @MemberName, [MemberRole] = @MemberRole, [UniName] = @UniName, [MemberEmail] = @MemberEmail, [StdID] = @StdID WHERE [TeamId] = @TeamId">
        <DeleteParameters>
            <asp:Parameter Name="TeamId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TeamId" Type="String" />
            <asp:Parameter Name="MemberPhoto" Type="String" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="MemberRole" Type="String" />
            <asp:Parameter Name="UniName" Type="String" />
            <asp:Parameter Name="MemberEmail" Type="String" />
            <asp:Parameter Name="StdID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MemberPhoto" Type="String" />
            <asp:Parameter Name="MemberName" Type="String" />
            <asp:Parameter Name="MemberRole" Type="String" />
            <asp:Parameter Name="UniName" Type="String" />
            <asp:Parameter Name="MemberEmail" Type="String" />
            <asp:Parameter Name="StdID" Type="String" />
            <asp:Parameter Name="TeamId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

    <br />
    <asp:Label ID="Label15" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Team Member Upload"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Member Id"></asp:Label>
    <asp:TextBox ID="memid" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" Text="Member Photo"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Member Name"></asp:Label>
    <asp:TextBox ID="memname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Member Role"></asp:Label>
    <asp:TextBox ID="memrole" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" Text="Uni Name"></asp:Label>
    <asp:TextBox ID="uniname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label11" runat="server" Text="Std Id"></asp:Label>
    <asp:TextBox ID="stdid" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="BtnMem" runat="server" OnClick="BtnMem_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="errorlb" runat="server"></asp:Label>
    <br />
        </div>
</asp:Content>
