<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="page_lxy_test" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>窗口大小测试</title>
    <link href="../../css/lxy/Register/Popup.css" rel="stylesheet" />
    <link href="../../css/lxy/Register/register.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/lxy/Popup.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 276px;
        }
        .auto-style3 {
            width: 161px;
        }
        .auto-style4 {
            width: 176px;
            height: 39px;
        }
        .auto-style5 {
            width: 159px;
            height: 39px;
        }
    </style>
</head>
<body style="margin:0px;">
    <form id="form1" runat="server">
        <%--<div style="Z-INDEX:8888;POSITION:absolute;-moz-opacity:0.50;opacity:0.3;filter:alpha(opacity=30);BACKGROUND-COLOR:#000;display:none;" id="show">
</div>
<div class="topDiv" id="show_win"><a href="#">你可以看到一个层在最上面了吗???这里就可以放你的登陆框</a></div>--%>
        <div>
            <table width="100%">
            <tr>
            <td align="center"><asp:Label ID="user_register_Label" runat="server" BorderStyle="None" Font-Bold="True" 
                Font-Names="宋体" Font-Size="XX-Large" Height="50px" Text="用户注册" Width="200px"></asp:Label></td></tr></table>
            <br />
            <table width="100%">
            <tr>
            <td align="right" class="auto-style1" height="30"><asp:Label ID="user_name_Label" runat="server" Height="20px" Text="用 户 名：" Width="80px"></asp:Label></td>
            <td align="left" height="30"><asp:TextBox ID="user_name_TextBox" runat="server" Height="20px" Width="200px"></asp:TextBox></td></tr>
            <tr>
            <td align="right" class="auto-style1" height="30"><asp:Label ID="user_phone_Label" runat="server" Height="20px" Text="电话号码：" Width="115px"></asp:Label></td>
            <td align="left" height="30"><asp:TextBox ID="user_phone_TextBox" runat="server" Height="20px" TextMode="Phone" Width="200px"></asp:TextBox></td></tr>
            <tr>
            <td align="right" class="auto-style1" height="30"><asp:Label ID="user_password_Label1" runat="server" Height="20px" Text="密 码：" Width="80px"></asp:Label></td>
            <td align="left" height="30"><asp:TextBox ID="user_password_TextBox1" runat="server" Height="20px" TextMode="Password" Width="200px"></asp:TextBox></td></tr>
            <tr>
            <td align="right" class="auto-style1" height="30"><asp:Label ID="user_password_Label2" runat="server" Height="20px" Text="确认密码："></asp:Label></td>
            <td align="left" height="30"><asp:TextBox ID="user_password_TextBox2" runat="server" Height="20px" TextMode="Password" Width="200px"></asp:TextBox></td></tr></table>
            <table width="100%">
            <tr>
            <td class="auto-style3"></td>
            <td align="center" class="auto-style4"><asp:Button ID="user_register_Button1" runat="server" Height="30px" Text="提交" Width="80px" /></td>
            <td align="center" class="auto-style5"><asp:Button ID="user_register_Button2" runat="server" Height="30px" Text="返回" Width="80px" PostBackUrl="~/page/lxy/login.aspx" /></td>
            <td></td>
            </tr></table>
        </div>
    </form>

</body>
</html>