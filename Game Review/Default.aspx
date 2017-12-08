<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Game_Review.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome!</title>
    <link rel="stylesheet" type="text/css" href="MainStyle.css" />
</head>
<body>
    <form id="form1" runat="server">

        <h1>Welcome!</h1>

    <div>
    <asp:SiteMapDataSource ID="sitemapSource" runat="server" ShowStartingNode="true"/>        
        <asp:TreeView ID="treeviewControl" runat="server" DataSourceID="sitemapSource" />
        
        <div class="stuff">This is a video game reviewing site! It's currently under construction, and this text is mostly here to be filler. I hope you're having a wonderful day!</div>

    </div>
    </form>
</body>
</html>
