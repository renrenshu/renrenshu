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
    <script src="../../js/lxy/jquery.tmpl.min.js"></script>
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
        <div class="container book">
            <asp:Panel ID="find" runat="server">
                <asp:TextBox ID="book_find" runat="server"></asp:TextBox>
                <asp:Button ID="btn_find" runat="server" Text="搜索" />
            </asp:Panel>
            
            <div class="row items-body" id="items-container">
                <!-- items -->
            </div>
        </div>
        <asp:Panel ID="Panel1" CssClass="clear" runat="server"></asp:Panel>
        <asp:Panel ID="Panel25" runat="server">
            <asp:Panel ID="paging" runat="server">
                <asp:Label ID="Label25" runat="server" ><a>1</a></asp:Label>
                <asp:Label ID="Label26" runat="server" ><a>2</a></asp:Label>
                <asp:Label ID="Label27" runat="server" ><a>3</a></asp:Label>
                <asp:Label ID="Label28" runat="server" ><a>...</a></asp:Label>
                <asp:Label ID="Label29" runat="server" ><a>6</a></asp:Label>
                <asp:Label ID="Label30" runat="server" ><a>下一页</a></asp:Label>
            </asp:Panel>
        </asp:Panel>
    </div>
    </form>

    <script id="gooods-item" type="text/x-jquery-tmpl">
            <!-- item -->
        <div class="col-lg-4 book_div">
            <a href="#" class="thumbnail">
                <img class="book_img" src="${ image }" />
            </a>
            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="Label1" runat="server" Text="价格">${ price }</asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <asp:Label ID="Label2" runat="server" Text="书名">${ name }</asp:Label>
            </asp:Panel>
        </div>
        <!-- end item -->
    </script> 
    <script>
        $(function () {
            var container = $("#items-container");

            data = [
                { "image": "../../image/thumb3.gif", "price": "5", "name": "asd" },
                { "image": "../../image/thumb3.gif", "price": "5", "name": "asd" },
                { "image": "../../image/thumb3.gif", "price": "5", "name": "asd" },
                { "image": "../../image/thumb3.gif", "price": "5", "name": "asd" },
                { "image": "../../image/thumb3.gif", "price": "5", "name": "asd" },
                { "image": "../../image/thumb3.gif", "price": "5", "name": "asd" }
            ];

            $("#gooods-item").tmpl(data).appendTo("#items-container");

        });
    </script>
</body>
</html>
