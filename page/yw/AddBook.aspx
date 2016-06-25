<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="page_yw_AddBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/addbook.css" rel="stylesheet" />
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
        <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="add_book" runat="server">
                <asp:Panel ID="title_div" runat="server">
                    <asp:Label ID="title_lab" runat="server" Text="出售图书"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="details" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="书   名："></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox1" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Label ID="Label2" runat="server" Text="作   者："></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox2" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:Label ID="Label3" runat="server" Text="出版社："></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox3" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel7" runat="server">
                        <asp:Label ID="Label10" runat="server" Text="价格："></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox5" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel5" runat="server">
                        <asp:Label ID="Label4" runat="server" Text="简介："></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox4" CssClass="text" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </asp:Panel>
                    <asp:Panel ID="Panel6" runat="server">
                        <asp:Label ID="Label8" runat="server" Text="上传图片："></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Label ID="Label12" runat="server" >暂只支持上传一张图片</asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="确  定" OnClick="Button1_Click"/>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
