<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Game_Review.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
</head>
<body>
    <form id="form1" runat="server">

        <h1>About Me</h1>
        
    <div>
            <asp:AdRotator ID="adrotatorControl" runat="server" AdvertisementFile="~/adRotator.xml"  Width="210" float="right"/>

        
        <div class="stuff">This site was made by Vincent Wright (300928112) for a Web Applications course.<br />Feel free to contact him at fake@email.placeholder</div>

        <asp:SiteMapDataSource ID="sitemapSource" runat="server" ShowStartingNode="true"/>        
        <asp:TreeView ID="treeviewControl" runat="server" DataSourceID="sitemapSource" />
    </div>
    </form>
</body>
</html>