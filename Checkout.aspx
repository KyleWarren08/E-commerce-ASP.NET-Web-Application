<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    
    <p>
    <br />
                <asp:Label ID="lbHeading" runat="server" Text="One More Step" Font-Names="Arial" Font-Size="XX-Large" ></asp:Label>
                    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="546px">
            <Columns>
                <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product" SortExpression="PRODUCT_NAME" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cart] WHERE ([EMAIL] = @EMAIL)">
            <SelectParameters>
                <asp:SessionParameter Name="EMAIL" SessionField="Email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
<asp:Label ID="lbTotal" runat="server" Font-Names="Arial" Font-Size="Large"></asp:Label>
    &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Payment" Width="122px" BackColor="White" />
    </p>
    <p>
        &nbsp;</p>
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
