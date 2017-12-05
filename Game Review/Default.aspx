<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Game_Review.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="gameName" HeaderText="gameName" SortExpression="gameName" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="reviewContent" HeaderText="reviewContent" SortExpression="reviewContent" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReviewsConnection %>" SelectCommand="SELECT gm.gameName, us.userName, re.reviewContent
FROM Games gm, Users us, Reviews re
WHERE re.userID = us.userID AND re.gameID = gm.gameID
ORDER BY gm.gameName ASC"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
