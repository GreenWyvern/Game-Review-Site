<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Game_Review.Search1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search for Stuff!</title>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Search for reviews</h1>
            <asp:AdRotator ID="adrotatorControl" runat="server" AdvertisementFile="~/adRotator.xml"  Width="220" float="right"/>
            <table>
            <tr>
                <td>Search by Game Name: </td>
                <td><asp:TextBox ID="gameNamebox" runat="server"></asp:TextBox><asp:Button ID="gameSearch" runat="server" Text="Search!" OnClick="gameSearch_Click" /></td>
                
            </tr>
                <tr>
                <td>Search by Username: </td>
                <td><asp:TextBox ID="userNamebox" runat="server"></asp:TextBox><asp:Button ID="userSearch" runat="server" Text="Search!" OnClick="userSearch_Click" /></td>
                
            </tr>
            </table>

         <br />
            
        

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="Game" HeaderText="Game" SortExpression="Game" />
                <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" SortExpression="Date Submitted" />
            </Columns>
        </asp:GridView>

        <asp:SiteMapDataSource ID="sitemapSource" runat="server" ShowStartingNode="true"/>
            <asp:TreeView ID="treeviewControl" runat="server" DataSourceID="sitemapSource" />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReviewsConnection %>" SelectCommand="SELECT gm.gameName AS 'Game', us.userName AS 'User', re.reviewContent AS 'Review', reviewDate 'Date Submitted'
        FROM Games gm, Users us, Reviews re
        WHERE re.userID = us.userID AND re.gameID = gm.gameID
        ORDER BY re.reviewDate DESC"></asp:SqlDataSource>


        </div>
    </form>
</body>
</html>
