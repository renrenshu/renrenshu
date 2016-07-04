<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_right.aspx.cs" Inherits="page_yw_book_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/book_right.css" rel="stylesheet" />
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../js/lxy/jquery.tmpl.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
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
                <asp:Label ID="Label3" runat="server" Text="当前第"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="<%# pagecurrent %>"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="页/共："></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="<%# pagecount %>"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="页"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="首页" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="上一页" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="下一页" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" Text="尾页" OnClick="Button4_Click" />
                <asp:Label ID="Label8" runat="server" Text="转到第"></asp:Label>
                <asp:TextBox ID="txtpage" runat="server" Width="20px"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="页。"></asp:Label>
                <asp:Button ID="Button5" runat="server" Text="Go" OnClick="Button5_Click" />
            </asp:Panel>
        </asp:Panel>
    </div>
    </form>

    <script id="gooods-item" type="text/x-jquery-tmpl">
            <!-- item -->
        <div class="col-lg-4 book_div">
            <a href="book_left.aspx?id=${ no }" target="_left"  class="thumbnail">
                <img class="book_img" src="${ picture }" />
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
            var a = <%=func()%>
            var container = $("#items-container");

            //data = [
            //    { "picture": "../../upload/1.png", "price": "5", "name": "asd" },
            //    { "picture": "../../upload/1.png", "price": "5", "name": "asd" },
            //    { "picture": "../../upload/1.png", "price": "5", "name": "asd" },
            //];

            $("#gooods-item").tmpl(a).appendTo("#items-container");

        });
    </script>
</body>
</html>
