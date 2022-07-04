<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Home" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>

        <br />
        <table style="width:100%;">
            <tr>
                <td class="modal-sm" style="width: 289px">
                <asp:Label ID="lbHeading" runat="server" Text="Our Catalogue" Font-Names="Arial" Font-Size="XX-Large" ></asp:Label>
                    <br />
                </td>
                <td class="modal-sm" style="width: 585px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 289px">
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Catergories:‎‎    ‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎     ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎ ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎                     "></asp:Label>
                &nbsp;
                    <asp:DropDownList ID="ddlCatergory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCatergory_SelectedIndexChanged" Height="30px" Width="140px" >
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
                </td>
                <td class="modal-sm" style="width: 585px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="All Products" BackColor="White" Font-Names="Arial" Height="30px" Width="120px" />
                </td>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" placeholder="Search by Name"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" AutoPostBack="true" Text="Search" Width="100px" OnClick="Button2_Click" BackColor="White" Height="30px"/>
                </td>
                <td></td>
            </tr>       
        </table>

    </div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellPadding="0" DataKeyField="ID" Width="1450px" >
        <ItemTemplate>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="199px" ImageUrl='<%# Eval("PRODUCT_IMAGE") %>' Width="201px" BorderStyle="Ridge" />
                        <br />
                        <asp:Label ID="PRODUCT_NAMELabel" runat="server" Text='<%# Eval("PRODUCT_NAME") %>' />
                        <br />
                        Price: R
                        <asp:Label ID="PRODUCT_PRICELabel" runat="server" Text='<%# Eval("PRODUCT_PRICE") %>' />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Product_Description?ID="+Eval("ID") %>' Text="Purchase" />
                    </td>
                </tr>
                
            </table>
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
<br />
<asp:Label ID="lbNoSearch" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
</asp:Content>
