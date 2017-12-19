<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Game_Review.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table>
            <tr>
                <td>userID: </td>
                <td><asp:TextBox ID="userIDbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>userName</td>
                <td><asp:TextBox ID="userNamebox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>email: </td>
                <td><asp:TextBox ID="emailbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>fakePassword: </td>
                <td><asp:TextBox ID="fakePasswordbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>newsletterSub</td>
                <td><asp:CheckBox ID="newsletterSubbox" runat="server" /></td>
            </tr>
        </table>

        <br />

        <asp:Button ID="saveButt" runat="server" Text="Submit" OnClick="saveButt_Click" /> <br />
        <asp:Label ID="saveStatus" runat="server" Text="[Uh]"></asp:Label>
    </div>
    </form>
</body>
</html>
