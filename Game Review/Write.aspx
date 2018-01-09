<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Write.aspx.cs" Inherits="Game_Review.Search" %>

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
                <td>reviewID: </td>
                <td><asp:TextBox ID="reviewIDbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>userID</td>
                <td><asp:TextBox ID="userIDbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>gameID: </td>
                <td><asp:TextBox ID="gameIDbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>reviewContent: </td>
                <td><asp:TextBox ID="reviewContentbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>reviewDate</td>
                <td><asp:TextBox ID="reviewDatebox" runat="server"></asp:TextBox></td>
            </tr>
        </table>

        <br />

        <asp:Button ID="saveButt" runat="server" Text="Submit" OnClick="saveButt_Click" /> <br />
        <asp:Label ID="saveStatus" runat="server" Text="[Uh]"></asp:Label>
    </div>
    </form>
</body>
</html>
