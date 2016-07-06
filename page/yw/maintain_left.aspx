<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maintain_left.aspx.cs" Inherits="page_yw_maintain_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/maintain_left.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="maintain_left">
        <asp:Panel ID="div_webstate" runat="server">
            <a href="webstate_right.aspx" target="_right">网站状态</a>
        </asp:Panel>
        <asp:Panel ID="div_manage" runat="server">
            <a href="commentmanage.aspx" target="_right">管理评论区</a>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
