<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
                <asp:Label ID="lbHeading" runat="server" Text="Your Orders" Font-Names="Arial" Font-Size="XX-Large" ></asp:Label>
                    <br />
                    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="304px" Width="809px">
        <Columns>
            <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product" SortExpression="PRODUCT_NAME" />
            <asp:BoundField DataField="PRODUCT_CATERGORY" HeaderText="Catergory" SortExpression="PRODUCT_CATERGORY" />
            <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" SortExpression="QUANTITY" />
            <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="Price (R)" SortExpression="PRODUCT_PRICE" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PRODUCT_NAME], [PRODUCT_CATERGORY], [QUANTITY], [PRODUCT_PRICE], [ORDER_DATE] FROM [Orders] WHERE ([EMAIL] = @EMAIL)">
        <SelectParameters>
            <asp:SessionParameter Name="EMAIL" SessionField="Email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
                <asp:Label ID="lbNoOrders" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
               
            </asp:Content>
