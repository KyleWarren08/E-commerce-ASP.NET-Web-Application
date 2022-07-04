<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="E_commerce_Web_Application_19001700.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="height: 278px;" class="nav-justified">
        <tr>
            <td style="height: 65px; width: 319px;">&nbsp;</td>
            <td style="height: 65px; width: 67px;">
                &nbsp;</td>            
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;">&nbsp;</td>
            <td style="height: 65px; width: 67px;">
                &nbsp;</td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;">&nbsp;</td>
            <td style="height: 65px; width: 67px;">
                &nbsp;</td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;">
                &nbsp;</td>
            <td style="height: 65px; width: 508px;"></td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;" >
                <asp:Label ID="lbHeading" runat="server" Text="SignUp" Font-Names="Arial" Font-Size="XX-Large" ></asp:Label>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Large" Text="Username:   "></asp:Label>
                <asp:TextBox ID="txtName" runat="server" ValidationGroup="VAL" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Required Field" ForeColor="Red" ValidationGroup="VAL"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" Text="Email:‎‎    ‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎     ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎ ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎‎   ‎‎‎‎                     "></asp:Label>
&nbsp;<asp:TextBox ID="txtEmail" runat="server" ValidationGroup="VAL" TextMode="Email" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Required Field" ForeColor="Red" ValidationGroup="VAL"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="VAL"></asp:RegularExpressionValidator>
            </td>           
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Large" Text="Password:   "></asp:Label>
&nbsp;<asp:TextBox ID="txtPassword" runat="server" ValidationGroup="VAL" TextMode="Password" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Required Field" ForeColor="Red" ValidationGroup="VAL"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="SignUp" ValidationGroup="VAL" Width="127px" BackColor="White" Font-Bold="True" Font-Names="Arial" />
                &nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="height: 65px"></td>
            <td style="height: 65px"></td>
        </tr>
        <tr>
            <td style="height: 65px; width: 319px;"></td>
            <td style="height: 65px; width: 67px;"></td>
            <td style="height: 65px; width: 508px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbResult" runat="server" Font-Names="Arial" Font-Size="Large"></asp:Label>
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
    </table>
</asp:Content>
