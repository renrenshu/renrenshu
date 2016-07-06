<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="page_yw_top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/top.css" rel="stylesheet" />
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
    <div id="img">
        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/image/header1.png" Width="100%" />       
        </div>
            <div id="menu">
                <div id="tab">
                <asp:Table ID="menutab" runat="server" BorderStyle="None" Height="30px">
                    <asp:TableRow runat="server">
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="index.aspx" target ="_parent">首页</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="book.html" target ="_parent">书库</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="../jl/reward.html" target ="_parent">悬赏</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="../jl/comment.html" target ="_parent">评论区</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="70px"><a href="../lxy/personal.html" target="_parent">个人中心</a></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                </div>
                <div id="logn">
                   <asp:Label ID="show_name" runat="server" Text="Label" Visible="False"></asp:Label>
                   <a class="menu_a"  href="../lxy/login.aspx" target ="_parent">
                        <asp:Label ID="a_logn" runat="server" Text="Label">登录</asp:Label>
                   </a>
                </div>
            </div> 
        
    </form>
</body>
</html>
