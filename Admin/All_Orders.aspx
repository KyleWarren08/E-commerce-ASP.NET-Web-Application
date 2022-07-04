<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="All_Orders.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Admin.All_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <asp:Label ID="lbHeading" runat="server" Text="All Orders" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
                <br />
    <br />
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Catergory:"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Text="Case" Value="Case" />
                        <asp:ListItem Text="CPU" Value="CPU" />
                        <asp:ListItem Text="GPU" Value="GPU" />
                        <asp:ListItem Text="HDD" Value="HDD" />
                        <asp:ListItem Text="M.2 SSD" Value="M.2 SSD" />
                        <asp:ListItem Text="Motherboard AMD" Value="Motherboard AMD" />
                        <asp:ListItem Text="Motherboard Intel" Value="Motherboard Intel" />
                        <asp:ListItem Text="Power Supply" Value="Power Supply" />
                        <asp:ListItem Text="RAM" Value="RAM" />
                        <asp:ListItem Text="SATA SSD" Value="SATA SSD" />
    </asp:DropDownList>
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="View All" OnClick="Button1_Click" BackColor="White" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ID" Height="389px" Width="1094px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDeleting="Gridview1_RowDelete">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product" SortExpression="PRODUCT_NAME" />
        <asp:BoundField DataField="PRODUCT_CATERGORY" HeaderText="Catergory" SortExpression="PRODUCT_CATERGORY" />
        <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
        <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" SortExpression="QUANTITY" />
        <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="Price" SortExpression="PRODUCT_PRICE" />
        <asp:BoundField DataField="PRODUCT_ID" HeaderText="ID" SortExpression="PRODUCT_ID" />
        <asp:BoundField DataField="ORDER_DATE" HeaderText="Order Date" SortExpression="ORDER_DATE" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [ID] = @original_ID AND [PRODUCT_NAME] = @original_PRODUCT_NAME AND [PRODUCT_CATERGORY] = @original_PRODUCT_CATERGORY AND [EMAIL] = @original_EMAIL AND [QUANTITY] = @original_QUANTITY AND [PRODUCT_PRICE] = @original_PRODUCT_PRICE AND [PRODUCT_ID] = @original_PRODUCT_ID AND [ORDER_DATE] = @original_ORDER_DATE" InsertCommand="INSERT INTO [Orders] ([PRODUCT_NAME], [PRODUCT_CATERGORY], [EMAIL], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID], [ORDER_DATE]) VALUES (@PRODUCT_NAME, @PRODUCT_CATERGORY, @EMAIL, @QUANTITY, @PRODUCT_PRICE, @PRODUCT_ID, @ORDER_DATE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [PRODUCT_NAME] = @PRODUCT_NAME, [PRODUCT_CATERGORY] = @PRODUCT_CATERGORY, [EMAIL] = @EMAIL, [QUANTITY] = @QUANTITY, [PRODUCT_PRICE] = @PRODUCT_PRICE, [PRODUCT_ID] = @PRODUCT_ID, [ORDER_DATE] = @ORDER_DATE WHERE [ID] = @original_ID AND [PRODUCT_NAME] = @original_PRODUCT_NAME AND [PRODUCT_CATERGORY] = @original_PRODUCT_CATERGORY AND [EMAIL] = @original_EMAIL AND [QUANTITY] = @original_QUANTITY AND [PRODUCT_PRICE] = @original_PRODUCT_PRICE AND [PRODUCT_ID] = @original_PRODUCT_ID AND [ORDER_DATE] = @original_ORDER_DATE">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_PRODUCT_NAME" Type="String" />
        <asp:Parameter Name="original_PRODUCT_CATERGORY" Type="String" />
        <asp:Parameter Name="original_EMAIL" Type="String" />
        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
        <asp:Parameter Name="original_PRODUCT_PRICE" Type="Decimal" />
        <asp:Parameter Name="original_PRODUCT_ID" Type="Int32" />
        <asp:Parameter Name="original_ORDER_DATE" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PRODUCT_NAME" Type="String" />
        <asp:Parameter Name="PRODUCT_CATERGORY" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="QUANTITY" Type="Int32" />
        <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
        <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
        <asp:Parameter Name="ORDER_DATE" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PRODUCT_NAME" Type="String" />
        <asp:Parameter Name="PRODUCT_CATERGORY" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="QUANTITY" Type="Int32" />
        <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
        <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
        <asp:Parameter Name="ORDER_DATE" Type="DateTime" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_PRODUCT_NAME" Type="String" />
        <asp:Parameter Name="original_PRODUCT_CATERGORY" Type="String" />
        <asp:Parameter Name="original_EMAIL" Type="String" />
        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
        <asp:Parameter Name="original_PRODUCT_PRICE" Type="Decimal" />
        <asp:Parameter Name="original_PRODUCT_ID" Type="Int32" />
        <asp:Parameter Name="original_ORDER_DATE" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
                <asp:Label ID="lbNoSearch" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
               
    <br />
</asp:Content>
