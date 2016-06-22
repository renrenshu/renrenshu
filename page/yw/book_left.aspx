<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_left.aspx.cs" Inherits="page_yw_book_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/book_left.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="book_left" runat="server">
            <asp:Label ID="book_lab" runat="server" >书名</asp:Label>
            <br />
            <img id="book_img" src="../../image/thumb3.gif" />
            <asp:Panel ID="book_details" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
