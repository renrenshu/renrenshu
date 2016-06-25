<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_right.aspx.cs" Inherits="page_yw_book_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/book_right.css" rel="stylesheet" />
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <asp:Panel ID="sale_div" runat="server">
                    <a id="book_sale" target="_left" href="AddBook.aspx">出售图书</a>
                </asp:Panel>
            </div>
        </nav>
        <asp:Panel ID="book" runat="server">
            <asp:Panel ID="Panel1" runat="server">
                <asp:TextBox ID="book_find" runat="server"></asp:TextBox>
                <asp:Button ID="btn_find" runat="server" Text="搜索" />
            </asp:Panel>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
