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
            <asp:Panel ID="find" runat="server">
                <asp:TextBox ID="book_find" runat="server"></asp:TextBox>
                <asp:Button ID="btn_find" runat="server" Text="搜索" />
            </asp:Panel>
            <asp:Panel ID="book_div1" CssClass="book_div" runat="server" Height="20%">
                <img class="book_img" src="../../image/thumb3.gif" />
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label4" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="Panel5" CssClass="book_div" runat="server">
                <img class="book_img" src="../../image/thumb3.gif" />
                <asp:Panel ID="Panel6" runat="server">
                    <asp:Label ID="Label5" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel7" runat="server">
                    <asp:Label ID="Label6" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel8" runat="server">
                    <asp:Label ID="Label7" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label8" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="Panel9" CssClass="book_div" runat="server">
                <img class="book_img" src="../../image/thumb3.gif" />
                <asp:Panel ID="Panel10" runat="server">
                    <asp:Label ID="Label9" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel11" runat="server">
                    <asp:Label ID="Label10" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel12" runat="server">
                    <asp:Label ID="Label11" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label12" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>

            <br />
            <asp:Panel ID="Panel13" CssClass="book_div" runat="server">
                <img class="book_img" src="../../image/thumb3.gif" />
                <asp:Panel ID="Panel14" runat="server">
                    <asp:Label ID="Label13" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel15" runat="server">
                    <asp:Label ID="Label14" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel16" runat="server">
                    <asp:Label ID="Label15" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label16" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="Panel17" CssClass="book_div" runat="server" Height="20%">
                <img class="book_img" src="../../image/thumb3.gif" />
                <asp:Panel ID="Panel18" runat="server">
                    <asp:Label ID="Label17" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel19" runat="server">
                    <asp:Label ID="Label18" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel20" runat="server">
                    <asp:Label ID="Label19" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label20" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>

            <asp:Panel ID="Panel21" CssClass="book_div" runat="server" Height="20%">
                <img class="book_img" src="../../image/thumb3.gif" />
                <asp:Panel ID="Panel22" runat="server">
                    <asp:Label ID="Label21" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel23" runat="server">
                    <asp:Label ID="Label22" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel24" runat="server">
                    <asp:Label ID="Label23" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label24" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
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
</body>
</html>
