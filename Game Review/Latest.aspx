﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Game_Review.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Latest Reviews</title>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
</head>
<body>
    
    <form id="form1" runat="server">

        <h1>Latest Game Reviews</h1>

    <div>
        <asp:AdRotator ID="adrotatorControl" runat="server" AdvertisementFile="~/adRotator.xml"  Width="210" float="right"/>
   
        <asp:GridView ID="LatestGrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Game" HeaderText="Game" SortExpression="Game" />
                <asp:BoundField DataField="User" HeaderText="User" SortExpression="User" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" SortExpression="Date Submitted" />
            </Columns>
        </asp:GridView>
        
        <asp:SiteMapDataSource ID="sitemapSource" runat="server" ShowStartingNode="true"/>
            <asp:TreeView ID="treeviewControl" runat="server" DataSourceID="sitemapSource" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReviewsConnection %>" SelectCommand="SELECT gm.gameName AS 'Game', us.userName AS 'User', re.reviewContent AS 'Review', reviewDate 'Date Submitted'
FROM Games gm, Users us, Reviews re
WHERE re.userID = us.userID AND re.gameID = gm.gameID
ORDER BY re.reviewDate DESC"></asp:SqlDataSource>



    </div>
    </form>
</body>
</html>
