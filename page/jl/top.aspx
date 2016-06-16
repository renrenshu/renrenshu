<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="page_yw_top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/top.css" rel="stylesheet" />
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
                        <asp:TableCell class="menu_a" runat="server" Height="30px" Width="50px"><a href="../page/index.aspx">首页</a></asp:TableCell>
                        <asp:TableCell class="menu_a" runat="server" Height="30px" Width="50px"><a>书库</a></asp:TableCell>
                        <asp:TableCell class="menu_a" runat="server" Height="30px" Width="50px"><a>悬赏</a></asp:TableCell>
                        <asp:TableCell class="menu_a" runat="server" Height="30px" Width="50px"><a>评论区</a></asp:TableCell>
                        <asp:TableCell class="menu_a" runat="server" Height="30px" Width="70px"><a>个人中心</a></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                </div>
                <div id="logn">
                   <a class="menu_a">登录</a>
                </div>
            </div> 
    </form>
</body>
</html>
