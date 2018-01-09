<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Game_Review.Search1" %>

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
                <td>gameName: </td>
                <td><asp:TextBox ID="gameNamebox" runat="server"></asp:TextBox></td>
            </tr>
        </table>

        <asp:Button ID="saveButt" runat="server" Text="Submit" OnClick="saveButt_Click" /> <br />
        <asp:Label ID="saveStatus" runat="server" Text="[Uh]"></asp:Label>

        

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="Game" HeaderText="Game" SortExpression="Game" />
                <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" SortExpression="Date Submitted" />
            </Columns>
        </asp:GridView>
        

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReviewsConnection %>" SelectCommand="SELECT gm.gameName AS 'Game', us.userName AS 'User', re.reviewContent AS 'Review', reviewDate 'Date Submitted'
        FROM Games gm, Users us, Reviews re
        WHERE re.userID = us.userID AND re.gameID = gm.gameID
        ORDER BY re.reviewDate DESC"></asp:SqlDataSource>


        </div>
    </form>
</body>
</html>
