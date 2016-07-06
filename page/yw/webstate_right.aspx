<%@ Page Language="C#" AutoEventWireup="true" CodeFile="webstate_right.aspx.cs" Inherits="page_yw_webstate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/webstate.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="div_webstate" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Label">网站状态：</asp:Label>
            <br />
            <asp:Label ID="lab_state" runat="server" Text="Label"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="div_btn" runat="server">
            <asp:Button ID="btn_zc" runat="server" Text="正常" OnClick="btn_zc_Click" />
            <asp:Button ID="btn_wh" runat="server" Text="维护" OnClick="btn_wh_Click" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
