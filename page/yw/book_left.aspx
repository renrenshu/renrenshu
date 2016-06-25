<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_left.aspx.cs" Inherits="page_yw_book_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/book_left.css" rel="stylesheet" />
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
        <asp:Panel ID="book_left" runat="server">
            <br />
            <div>
                <img id="book_img" src="../../image/thumb3.gif" />
                <button type="button" id="img_expand" class="btn btn-default" aria-label="放大图片">
                    <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
                </button>
            </div>
            <asp:Panel ID="book_details" runat="server">
                <div>
                    <asp:Label ID="book_name" runat="server" >书名：</asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="book_author" runat="server" Text="作者："></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="book_press" runat="server" Text="出版社："></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="book_price" runat="server" Text="价格："></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </div>
                <div>
                    <asp:Button ID="book_order" runat="server" Text="预订" />
                </div>
            </asp:Panel>
            <asp:Panel ID="information" runat="server">
                <asp:Label ID="book_information" runat="server" Text="简介："></asp:Label>
                <br />
                <asp:TextBox ID="book_text" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
