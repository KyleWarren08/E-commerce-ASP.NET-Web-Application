<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="User_Select.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Admin.User_Select" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <asp:Label ID="lbHeading" runat="server" Text="Users in the database" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Role: ‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎     ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎ ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎                     "></asp:Label>
                <asp:DropDownList ID="ddlCatergory" runat="server" autopostback="true" OnSelectedIndexChanged="ddlCatergory_SelectedIndexChanged">
                        <asp:ListItem Text="User" Value="User" />
                        <asp:ListItem Text="Admin" Value="Admin" />                        
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSearch" runat="server" Width="167px" placeholder="Email"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Search" Width="99px" BackColor="White" OnClick="Button2_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="View All" Width="99px" BackColor="White" OnClick="Button3_Click" />
                <br />
            <br />
    <asp:GridView ID="GridView1" runat="server"  AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ID" Height="241px" Width="524px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDeleting="Gridview1_RowDelete">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Register] WHERE [ID] = @original_ID AND [NAME] = @original_NAME AND [EMAIL] = @original_EMAIL AND [ROLE] = @original_ROLE AND [PASSWORD] = @original_PASSWORD" InsertCommand="INSERT INTO [Register] ([NAME], [EMAIL], [ROLE], [PASSWORD]) VALUES (@NAME, @EMAIL, @ROLE, @PASSWORD)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [NAME], [EMAIL], [ROLE], [PASSWORD] FROM [Register]" UpdateCommand="UPDATE [Register] SET [NAME] = @NAME, [EMAIL] = @EMAIL, [ROLE] = @ROLE, [PASSWORD] = @PASSWORD WHERE [ID] = @original_ID AND [NAME] = @original_NAME AND [EMAIL] = @original_EMAIL AND [ROLE] = @original_ROLE AND [PASSWORD] = @original_PASSWORD">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_NAME" Type="String" />
        <asp:Parameter Name="original_EMAIL" Type="String" />
        <asp:Parameter Name="original_ROLE" Type="String" />
        <asp:Parameter Name="original_PASSWORD" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NAME" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="ROLE" Type="String" />
        <asp:Parameter Name="PASSWORD" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NAME" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="ROLE" Type="String" />
        <asp:Parameter Name="PASSWORD" Type="String" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_NAME" Type="String" />
        <asp:Parameter Name="original_EMAIL" Type="String" />
        <asp:Parameter Name="original_ROLE" Type="String" />
        <asp:Parameter Name="original_PASSWORD" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
                <br />
                <asp:Label ID="lbNoSearch" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
               
            </asp:Content>
