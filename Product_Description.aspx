<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product_Description.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Product_Description" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1" Height="615px" Width="601px">
        <ItemTemplate>
            <asp:Label ID="PRODUCT_NAMELabel" runat="server" Text='<%# Eval("PRODUCT_NAME") %>' Font-Names="Arial" Font-Size="XX-Large" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="237px" ImageUrl='<%# Eval("PRODUCT_IMAGE") %>' Width="236px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Description:" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="PRODUCT_DESCRIPTIONLabel" runat="server" Text='<%# Eval("PRODUCT_DESCRIPTION") %>' Font-Names="Arial" Font-Size="Medium" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Catergory:" Font-Bold="True"></asp:Label>
&nbsp;<br /> <asp:Label ID="PRODUCT_CATERGORY_IDLabel" runat="server" Text='<%# Eval("PRODUCT_CATERGORY_ID") %>' Font-Size="Large" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Price: R"></asp:Label>
&nbsp;<asp:Label ID="PRODUCT_PRICELabel" runat="server" Text='<%# Eval("PRODUCT_PRICE") %>' Font-Names="Arial" Font-Size="Large" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="*Required field" ForeColor="Red" ValidationGroup="PVAL"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="*Quantity should be a whole number" ForeColor="Red" ValidationExpression="^[0-9]*$" ValidationGroup="PVAL"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Quantity: "></asp:Label>
    <asp:TextBox ID="txtQuantity" runat="server" Width="100px" ValidationGroup="PVAL"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add to Cart" Width="100px" BackColor="White" ValidationGroup="PVAL" />
    <br />
    <table>
        <tr>
            <td style="height: 65px; width: 319px;">
    <asp:Label ID="lbResponse" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
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


