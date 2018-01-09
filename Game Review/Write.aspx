<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Write.aspx.cs" Inherits="Game_Review.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Write a Review</title>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Write a Review</h1>
        <asp:AdRotator ID="adrotatorControl" runat="server" AdvertisementFile="~/adRotator.xml"  Width="210" float="right"/>

        <div class="stuff">
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
        <asp:SiteMapDataSource ID="sitemapSource" runat="server" ShowStartingNode="true"/>
            <asp:TreeView ID="treeviewControl" runat="server" DataSourceID="sitemapSource" />
    </div>
    </form>
</body>
</html>
