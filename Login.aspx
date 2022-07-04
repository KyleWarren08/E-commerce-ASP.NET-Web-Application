<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 252px;">
        <tr>
            <td style="height: 65px; width: 319px;">&nbsp;</td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td>
                &nbsp;</td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;">&nbsp;</td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td>
                &nbsp;</td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;"></td>
            <td>
                &nbsp;</td>
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
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="lbHeading" runat="server" Text="Login" Font-Names="Arial" Font-Size="XX-Large" ></asp:Label>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Email:‎‎    ‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎     ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎ ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎                     "></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ValidationGroup="VAL2" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Required Field" ForeColor="Red" ValidationGroup="VAL2"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="VAL2"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Password:   "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="VAL2" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Required Field" ForeColor="Red" ValidationGroup="VAL2"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="30px" OnClick="btnLogin_Click" ValidationGroup="VAL2" Width="127px" BackColor="White" Font-Bold="True" Font-Names="Arial" style="margin-top: 0; margin-bottom: 0" />
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="lbResult" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Red"></asp:Label>
            </td>
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
