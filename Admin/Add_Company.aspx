<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeBehind="Add_Company.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Admin.Add_Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="modal-sm" style="width: 183px">
                <asp:Label ID="lbHeading" runat="server" Text="Add a company" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 183px">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Company Name:"></asp:Label>
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompanyName" ErrorMessage="*Required field" ForeColor="Red" ValidationGroup="ACVAL"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtCompanyName" runat="server" Width="150px" ValidationGroup="ACVAL"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCompanyDescription" ErrorMessage="*Required field" ForeColor="Red" ValidationGroup="ACVAL"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 183px">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" Text="Company Description:"></asp:Label>
                </td>
            <td>
                <asp:TextBox TextMode="MultiLine" ID="txtCompanyDescription" runat="server" Width="445px" Height="117px" ValidationGroup="ACVAL"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Company" Width="111px" BackColor="White" ValidationGroup="ACVAL" />
                <br />
                <br />
                <asp:Label ID="lbResponse" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:Label>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        
    </table>
    <table style="width:100%;">
        <tr>
            <td>
                <br />
                <asp:Label ID="lbHeading0" runat="server" Text="Edit and view" Font-Names="Arial" Font-Size="X-Large" Font-Bold="True" ></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtSearch" runat="server" Width="167px" placeholder="Company Name"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Search" Width="99px" BackColor="White" OnClick="Button2_Click" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" Text="View All" Width="99px" BackColor="White" OnClick="Button3_Click" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" Height="215px" Width="635px" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="COMPANY_NAME" HeaderText="Company Name" SortExpression="COMPANY_NAME" />
                        <asp:BoundField DataField="COMPANY_DESCRIPTION" HeaderText="Description" SortExpression="COMPANY_DESCRIPTION" />
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Company] WHERE [ID] = @original_ID AND [COMPANY_NAME] = @original_COMPANY_NAME AND [COMPANY_DESCRIPTION] = @original_COMPANY_DESCRIPTION" InsertCommand="INSERT INTO [Company] ([COMPANY_NAME], [COMPANY_DESCRIPTION]) VALUES (@COMPANY_NAME, @COMPANY_DESCRIPTION)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [COMPANY_NAME] = @COMPANY_NAME, [COMPANY_DESCRIPTION] = @COMPANY_DESCRIPTION WHERE [ID] = @original_ID AND [COMPANY_NAME] = @original_COMPANY_NAME AND [COMPANY_DESCRIPTION] = @original_COMPANY_DESCRIPTION">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_COMPANY_NAME" Type="String" />
                        <asp:Parameter Name="original_COMPANY_DESCRIPTION" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="COMPANY_NAME" Type="String" />
                        <asp:Parameter Name="COMPANY_DESCRIPTION" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="COMPANY_NAME" Type="String" />
                        <asp:Parameter Name="COMPANY_DESCRIPTION" Type="String" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_COMPANY_NAME" Type="String" />
                        <asp:Parameter Name="original_COMPANY_DESCRIPTION" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Label ID="lbNoSearch" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
               
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
