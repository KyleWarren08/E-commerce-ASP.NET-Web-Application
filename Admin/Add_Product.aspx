<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Admin.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 74px;">
        <tr>
            <td style="width: 165px">
                <br />
                <asp:Label ID="lbHeading" runat="server" Text="Add a product" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
                <br />
                <br />
            </td>
            <td class="modal-sm" style="width: 243px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Name:"></asp:Label>
                </td>
            <td class="modal-sm" style="width: 243px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="*Required field" ForeColor="Red" ValidationGroup="APVAL"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtProductName" runat="server" Width="130px" ValidationGroup="APVAL"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Description:"></asp:Label>
                </td>
            <td class="modal-sm" style="width: 243px">
                <asp:TextBox TextMode="MultiLine" ID="txtProductDescription" runat="server" Height="103px" Width="571px" ValidationGroup="APVAL"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProductDescription" ErrorMessage="*Required field" ForeColor="Red" ValidationGroup="APVAL"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Price:"></asp:Label>
                </td>
            <td class="modal-sm" style="width: 243px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductPrice" ErrorMessage="*Required field" ForeColor="Red" ValidationGroup="APVAL"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtProductPrice" ErrorMessage="*Please enter a valid price" ForeColor="Red" ValidationExpression="((\d+)((\.\d{1,2})?))$" ValidationGroup="APVAL"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="txtProductPrice" runat="server" Width="130px" ValidationGroup="APVAL"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Image:"></asp:Label>
                </td>
            <td class="modal-sm" style="width: 243px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fucProductImage" ErrorMessage="*Required image" ForeColor="Red" ValidationGroup="APVAL"></asp:RequiredFieldValidator>
                <br />
                <asp:FileUpload ID="fucProductImage" runat="server" BackColor="White" />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Large" Text="Product Catergory:"></asp:Label>
                </td>
            <td class="modal-sm" style="width: 243px">
                <br />
                <asp:DropDownList ID="ddlCatergory" runat="server">
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
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 165px">
                <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Large" Text="Company:"></asp:Label>
                </td>
            <td class="modal-sm" style="width: 243px">
                <br />
                <asp:DropDownList ID="ddlCompany" runat="server" Height="24px" Width="140px"></asp:DropDownList>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td style="width: 165px">&nbsp;</td>
            <td class="modal-sm" style="width: 243px">
                <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Add New Product" Width="125px" BackColor="White" ValidationGroup="APVAL" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbResponse" runat="server"></asp:Label>
             </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%; height: 74px;">
        <tr>
            <td>
                <br />
                <asp:Label ID="lbHeading0" runat="server" Text="Edit and view" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Catergories:‎‎    ‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎     ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎ ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎                     "></asp:Label>
                <asp:DropDownList ID="ddlCatergory0" runat="server" autopostback="true" OnSelectedIndexChanged="ddlCatergory0_SelectedIndexChanged">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSearch" runat="server" Width="167px" placeholder="Product Name"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Search" Width="99px" BackColor="White" OnClick="Button2_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="View All" Width="99px" BackColor="White" OnClick="Button3_Click" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server"  AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" Height="318px" Width="1057px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="PRODUCT_NAME" HeaderText="Product" SortExpression="PRODUCT_NAME" />
                        <asp:BoundField DataField="PRODUCT_DESCRIPTION" HeaderText="Description" SortExpression="PRODUCT_DESCRIPTION" />
                        <asp:BoundField DataField="PRODUCT_PRICE" HeaderText="Price" SortExpression="PRODUCT_PRICE" />
                        <asp:BoundField DataField="PRODUCT_IMAGE" HeaderText="Image" SortExpression="PRODUCT_IMAGE" />
                        <asp:BoundField DataField="PRODUCT_CATERGORY_ID" HeaderText="Catergory" SortExpression="PRODUCT_CATERGORY_ID" />
                        <asp:BoundField DataField="PRODUCT_COMPANY_ID" HeaderText="Company ID" SortExpression="PRODUCT_COMPANY_ID" />
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
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ID] = @original_ID AND [PRODUCT_NAME] = @original_PRODUCT_NAME AND [PRODUCT_DESCRIPTION] = @original_PRODUCT_DESCRIPTION AND [PRODUCT_PRICE] = @original_PRODUCT_PRICE AND [PRODUCT_IMAGE] = @original_PRODUCT_IMAGE AND [PRODUCT_CATERGORY_ID] = @original_PRODUCT_CATERGORY_ID AND [PRODUCT_COMPANY_ID] = @original_PRODUCT_COMPANY_ID" InsertCommand="INSERT INTO [Products] ([PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_IMAGE], [PRODUCT_CATERGORY_ID], [PRODUCT_COMPANY_ID]) VALUES (@PRODUCT_NAME, @PRODUCT_DESCRIPTION, @PRODUCT_PRICE, @PRODUCT_IMAGE, @PRODUCT_CATERGORY_ID, @PRODUCT_COMPANY_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [PRODUCT_NAME] = @PRODUCT_NAME, [PRODUCT_DESCRIPTION] = @PRODUCT_DESCRIPTION, [PRODUCT_PRICE] = @PRODUCT_PRICE, [PRODUCT_IMAGE] = @PRODUCT_IMAGE, [PRODUCT_CATERGORY_ID] = @PRODUCT_CATERGORY_ID, [PRODUCT_COMPANY_ID] = @PRODUCT_COMPANY_ID WHERE [ID] = @original_ID AND [PRODUCT_NAME] = @original_PRODUCT_NAME AND [PRODUCT_DESCRIPTION] = @original_PRODUCT_DESCRIPTION AND [PRODUCT_PRICE] = @original_PRODUCT_PRICE AND [PRODUCT_IMAGE] = @original_PRODUCT_IMAGE AND [PRODUCT_CATERGORY_ID] = @original_PRODUCT_CATERGORY_ID AND [PRODUCT_COMPANY_ID] = @original_PRODUCT_COMPANY_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_PRODUCT_NAME" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_DESCRIPTION" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_PRICE" Type="Decimal" />
                        <asp:Parameter Name="original_PRODUCT_IMAGE" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_CATERGORY_ID" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_COMPANY_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                        <asp:Parameter Name="PRODUCT_DESCRIPTION" Type="String" />
                        <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
                        <asp:Parameter Name="PRODUCT_IMAGE" Type="String" />
                        <asp:Parameter Name="PRODUCT_CATERGORY_ID" Type="String" />
                        <asp:Parameter Name="PRODUCT_COMPANY_ID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRODUCT_NAME" Type="String" />
                        <asp:Parameter Name="PRODUCT_DESCRIPTION" Type="String" />
                        <asp:Parameter Name="PRODUCT_PRICE" Type="Decimal" />
                        <asp:Parameter Name="PRODUCT_IMAGE" Type="String" />
                        <asp:Parameter Name="PRODUCT_CATERGORY_ID" Type="String" />
                        <asp:Parameter Name="PRODUCT_COMPANY_ID" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_PRODUCT_NAME" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_DESCRIPTION" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_PRICE" Type="Decimal" />
                        <asp:Parameter Name="original_PRODUCT_IMAGE" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_CATERGORY_ID" Type="String" />
                        <asp:Parameter Name="original_PRODUCT_COMPANY_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
               
                <br />
                <asp:Label ID="lbNoSearch" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
               
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
