<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
                <asp:Label ID="lbHeading" runat="server" Text="Cart" Font-Names="Arial" Font-Size="XX-Large" ></asp:Label>
                    <br />
                    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="131px" Width="690px" Font-Names="Arial" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True"/>
            <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product" SortExpression="PRODUCT_NAME" />
            <asp:BoundField DataField="PRODUCT_CATERGORY" HeaderText="Product Catergory" SortExpression="PRODUCT_CATERGORY" />
            <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" SortExpression="QUANTITY" />
            <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="Price" SortExpression="PRODUCT_PRICE" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart] WHERE ([EMAIL] = @EMAIL)" DeleteCommand="DELETE FROM [Cart] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Cart] ([PRODUCT_NAME], [PRODUCT_CATERGORY], [EMAIL], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (@PRODUCT_NAME, @PRODUCT_CATERGORY, @EMAIL, @QUANTITY, @PRODUCT_PRICE, @PRODUCT_ID)" UpdateCommand="UPDATE [Cart] SET [PRODUCT_NAME] = @PRODUCT_NAME, [PRODUCT_CATERGORY] = @PRODUCT_CATERGORY, [EMAIL] = @EMAIL, [QUANTITY] = @QUANTITY, [PRODUCT_PRICE] = @PRODUCT_PRICE, [PRODUCT_ID] = @PRODUCT_ID WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32"/>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PRODUCT_NAME" Type="String" />
            <asp:Parameter Name="PRODUCT_CATERGORY" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="QUANTITY" Type="Int32" />
            <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
            <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="EMAIL" SessionField="Email" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PRODUCT_NAME" Type="String" />
            <asp:Parameter Name="PRODUCT_CATERGORY" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="QUANTITY" Type="Int32" />
            <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
            <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                <asp:Label ID="lbNoCart" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
               
            <br />
    <br />
<asp:Label ID="lbTotal" runat="server" Font-Names="Arial" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" Width="90px" BackColor="White" />
<br />
    <table>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
    </table>
</asp:Content>
