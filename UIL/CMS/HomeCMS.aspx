<%@ Page Title="" Language="C#" MasterPageFile="~/UIL/CMS/Admin.Master" AutoEventWireup="true" CodeBehind="HomeCMS.aspx.cs" Inherits="UON.UIL.CMS.HomeCMS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="Label17" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Before You Come To SG Data"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="HPC1_Id" DataSourceID="hp1source" ForeColor="Black" GridLines="Vertical" Width="660px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="HPC1_Id" HeaderText="HPC1_Id" ReadOnly="True" SortExpression="HPC1_Id" />
                <asp:BoundField DataField="HPC1_Heading" HeaderText="HPC1_Heading" SortExpression="HPC1_Heading" />
                <asp:TemplateField HeaderText="HPC1_Des" SortExpression="HPC1_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxHPC1" runat="server" Text='<%# Bind("HPC1_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelHPC1" runat="server" Text='<%# Bind("HPC1_Des") %>'></asp:Label>
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
        <asp:SqlDataSource ID="hp1source" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Homepage_content1] WHERE [HPC1_Id] = @HPC1_Id" InsertCommand="INSERT INTO [Homepage_content1] ([HPC1_Id], [HPC1_Heading], [HPC1_Des]) VALUES (@HPC1_Id, @HPC1_Heading, @HPC1_Des)" SelectCommand="SELECT * FROM [Homepage_content1]" UpdateCommand="UPDATE [Homepage_content1] SET [HPC1_Heading] = @HPC1_Heading, [HPC1_Des] = @HPC1_Des WHERE [HPC1_Id] = @HPC1_Id">
            <DeleteParameters>
                <asp:Parameter Name="HPC1_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HPC1_Id" Type="String" />
                <asp:Parameter Name="HPC1_Heading" Type="String" />
                <asp:Parameter Name="HPC1_Des" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HPC1_Heading" Type="String" />
                <asp:Parameter Name="HPC1_Des" Type="String" />
                <asp:Parameter Name="HPC1_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label18" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Before You Come to SG Data Upload"></asp:Label>

        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Home Content 1 Id"></asp:Label>
        <asp:TextBox ID="hp1id" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Home Content 1 Heading"></asp:Label>
        <asp:TextBox ID="hp1head" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="">Home Content 1 Descritpions</asp:Label>
        <br />
        <asp:TextBox ID="hp1des" runat="server" Height="149px" TextMode="MultiLine" Width="394px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label19" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Student Pass"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="HPC2_Id" DataSourceID="hp2Source" ForeColor="Black" GridLines="Vertical" Width="660px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="HPC2_Id" HeaderText="HPC2_Id" ReadOnly="True" SortExpression="HPC2_Id" />
                <asp:BoundField DataField="HPC2_Heading" HeaderText="HPC2_Heading" SortExpression="HPC2_Heading" />
                <asp:TemplateField HeaderText="HPC2_Des" SortExpression="HPC2_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxHPC2" runat="server" Text='<%# Bind("HPC2_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelHPC2" runat="server" Text='<%# Bind("HPC2_Des") %>'></asp:Label>
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
        <asp:SqlDataSource ID="hp2Source" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Homepage_content2] WHERE [HPC2_Id] = @HPC2_Id" InsertCommand="INSERT INTO [Homepage_content2] ([HPC2_Id], [HPC2_Heading], [HPC2_Des]) VALUES (@HPC2_Id, @HPC2_Heading, @HPC2_Des)" SelectCommand="SELECT * FROM [Homepage_content2]" UpdateCommand="UPDATE [Homepage_content2] SET [HPC2_Heading] = @HPC2_Heading, [HPC2_Des] = @HPC2_Des WHERE [HPC2_Id] = @HPC2_Id">
            <DeleteParameters>
                <asp:Parameter Name="HPC2_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HPC2_Id" Type="String" />
                <asp:Parameter Name="HPC2_Heading" Type="String" />
                <asp:Parameter Name="HPC2_Des" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HPC2_Heading" Type="String" />
                <asp:Parameter Name="HPC2_Des" Type="String" />
                <asp:Parameter Name="HPC2_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label20" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Student Pass Data Upload"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Home Content 2 Id"></asp:Label>
        <asp:TextBox ID="hp2id" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Home Content 2 Heading"></asp:Label>
        <asp:TextBox ID="hp2head" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Text="">Home Content 2 Descritpions</asp:Label>
        <br />
        <asp:TextBox ID="hp2des" runat="server" Height="149px" TextMode="MultiLine" Width="394px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Upload" OnClick="Button4_Click" />
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Study Tips Data"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="HPC3_Id" DataSourceID="hp3Source" ForeColor="Black" GridLines="Vertical" Width="660px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="HPC3_Id" HeaderText="HPC3_Id" ReadOnly="True" SortExpression="HPC3_Id" />
                <asp:BoundField DataField="HPC3_Heading" HeaderText="HPC3_Heading" SortExpression="HPC3_Heading" />
                <asp:TemplateField HeaderText="HPC3_Des" SortExpression="HPC3_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxHPC3" runat="server" Text='<%# Bind("HPC3_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelHP3" runat="server" Text='<%# Bind("HPC3_Des") %>'></asp:Label>
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
        <asp:SqlDataSource ID="hp3Source" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Homepage_content3] WHERE [HPC3_Id] = @HPC3_Id" InsertCommand="INSERT INTO [Homepage_content3] ([HPC3_Id], [HPC3_Heading], [HPC3_Des]) VALUES (@HPC3_Id, @HPC3_Heading, @HPC3_Des)" SelectCommand="SELECT * FROM [Homepage_content3]" UpdateCommand="UPDATE [Homepage_content3] SET [HPC3_Heading] = @HPC3_Heading, [HPC3_Des] = @HPC3_Des WHERE [HPC3_Id] = @HPC3_Id">
            <DeleteParameters>
                <asp:Parameter Name="HPC3_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HPC3_Id" Type="String" />
                <asp:Parameter Name="HPC3_Heading" Type="String" />
                <asp:Parameter Name="HPC3_Des" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HPC3_Heading" Type="String" />
                <asp:Parameter Name="HPC3_Des" Type="String" />
                <asp:Parameter Name="HPC3_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label22" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Study Tips Data Upload"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Home Content 3 Id"></asp:Label>
        <asp:TextBox ID="hp3id" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Home Content 3 Heading"></asp:Label>
        <asp:TextBox ID="hp3head" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="">Home Content 3 Descritpions</asp:Label>
        <br />
        <asp:TextBox ID="hp3des" runat="server" Height="149px" TextMode="MultiLine" Width="394px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Upload" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Traps Data"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="HPC4_Id" DataSourceID="hp4Source" ForeColor="Black" GridLines="Vertical" Width="660px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="HPC4_Id" HeaderText="HPC4_Id" ReadOnly="True" SortExpression="HPC4_Id" />
                <asp:BoundField DataField="HPC4_Heading" HeaderText="HPC4_Heading" SortExpression="HPC4_Heading" />
                <asp:TemplateField HeaderText="HPC4_Des" SortExpression="HPC4_Des">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBoxHPC4" runat="server" Text='<%# Bind("HPC4_Des") %>' TextMode="MultiLine" Rows="5" Columns="50"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="LabelHPC4" runat="server" Text='<%# Bind("HPC4_Des") %>'></asp:Label>
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
        <asp:SqlDataSource ID="hp4Source" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Homepage_content4] WHERE [HPC4_Id] = @HPC4_Id" InsertCommand="INSERT INTO [Homepage_content4] ([HPC4_Id], [HPC4_Heading], [HPC4_Des]) VALUES (@HPC4_Id, @HPC4_Heading, @HPC4_Des)" SelectCommand="SELECT * FROM [Homepage_content4]" UpdateCommand="UPDATE [Homepage_content4] SET [HPC4_Heading] = @HPC4_Heading, [HPC4_Des] = @HPC4_Des WHERE [HPC4_Id] = @HPC4_Id">
            <DeleteParameters>
                <asp:Parameter Name="HPC4_Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="HPC4_Id" Type="String" />
                <asp:Parameter Name="HPC4_Heading" Type="String" />
                <asp:Parameter Name="HPC4_Des" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HPC4_Heading" Type="String" />
                <asp:Parameter Name="HPC4_Des" Type="String" />
                <asp:Parameter Name="HPC4_Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Traps Data Upload"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Text="Home Content 4 Id"></asp:Label>
        <asp:TextBox ID="hp4id" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Text="Home Content 4 Heading"></asp:Label>
        <asp:TextBox ID="hp4head" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label16" runat="server" Text="">Home Content 4 Descritpions</asp:Label>
        <br />
        <asp:TextBox ID="hp4des" runat="server" Height="149px" TextMode="MultiLine" Width="394px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Upload" OnClick="Button5_Click" />
        <br />
        <br />
        <asp:Label ID="Label25" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Video Data"></asp:Label>
        <br />
        <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="HP_Vd_Id" DataSourceID="VdDataSource1" ForeColor="Black" GridLines="Vertical" Height="321px" Width="699px" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="HP_Vd_Id" HeaderText="HP_Vd_Id" ReadOnly="True" SortExpression="HP_Vd_Id" />
            <asp:TemplateField HeaderText="Hp_Vd" SortExpression="HpVd">
                      <EditItemTemplate>
                     <video height="250" width="350">
                        <source src="../Videos/<%# Eval("HP_Vd") %>" type="video/mp4"/> 
                    </video>
                    <asp:FileUpload ID="FileUpload_Vd" runat="server" />
                </EditItemTemplate>
              
                <ItemTemplate>
                    <video height="250" width="350">
                        <source src="../Videos/<%# Eval("HP_Vd") %>" type="video/mp4"/> 
                    </video>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="HP_Vd_Name" HeaderText="HP_Vd_Name" SortExpression="HP_Vd_Name" />
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
    <asp:SqlDataSource ID="VdDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UONSource %>" DeleteCommand="DELETE FROM [Homepage_Vd] WHERE [HP_Vd_Id] = @HP_Vd_Id" InsertCommand="INSERT INTO [Homepage_Vd] ([HP_Vd_Id], [HP_Vd], [HP_Vd_Name]) VALUES (@HP_Vd_Id, @HP_Vd, @HP_Vd_Name)" SelectCommand="SELECT * FROM [Homepage_Vd]" UpdateCommand="UPDATE [Homepage_Vd] SET [HP_Vd] = @HP_Vd, [HP_Vd_Name] = @HP_Vd_Name WHERE [HP_Vd_Id] = @HP_Vd_Id">
        <DeleteParameters>
            <asp:Parameter Name="HP_Vd_Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HP_Vd_Id" Type="String" />
            <asp:Parameter Name="HP_Vd" Type="String" />
            <asp:Parameter Name="HP_Vd_Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HP_Vd" Type="String" />
            <asp:Parameter Name="HP_Vd_Name" Type="String" />
            <asp:Parameter Name="HP_Vd_Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
        <asp:Label ID="Label26" runat="server" BackColor="Black" BorderWidth="5px" Font-Bold="True" ForeColor="White" Text="Video Upload"></asp:Label>
        <br />
        <br />
    <asp:Label ID="Label4" runat="server" Text="Video ID"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Video Title"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Video File"></asp:Label>
    <asp:FileUpload ID="VdFile" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />

    <br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
