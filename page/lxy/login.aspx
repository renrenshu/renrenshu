<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="page_lxy_log" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
    <link href="../../css/lxy/Login/User_Login.css" rel="stylesheet" />
    <link href="../../css/lxy/Register/Popup.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/lxy/Popup.js"></script>
</head>
<body id="userlogin_body">
<form id="form1" runat="server">
    <div style="Z-INDEX:8888;POSITION:absolute; -moz-opacity:0.50;opacity:0.3;filter:alpha(opacity=30);BACKGROUND-COLOR:#000;display:none; width: 100%; height: 100%;" id="show"></div>
  <div class="topDiv" id="show_win">
    <table width="100%">
            <tr>
            <td align="center" style="clip: rect(10px, auto, auto, auto); position: relative; top: 10px;"><asp:Label ID="user_register_Label" runat="server" BorderStyle="None" Font-Bold="True" 
                Font-Names="宋体" Font-Size="XX-Large" Height="45px" Text="用户注册" Width="200px"></asp:Label></td></tr></table>
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
            <td align="center" class="auto-style4"><asp:Button ID="user_register_Button1" runat="server" Height="30px" Text="提交" Width="80px" OnClick="user_register_Button1_Click" /></td>
            <td align="center" class="auto-style5"><asp:Button ID="user_register_Button2" runat="server" Height="30px" Text="返回" Width="80px" PostBackUrl="~/page/lxy/login.aspx" /></td>
            <td></td>
            </tr></table></div>
<div id="user_login">
<dl>
  <dd id="user_top">
  <ul>
    <li class="user_top_l"></li>
    <li class="user_top_c"></li>
    <li class="user_top_r"></li></ul></dd>
  <dd id="user_main">
  <ul>
    <li class="user_main_l"></li>
    <li class="user_main_c">
    <div class="user_main_box">
    <ul>
      <li class="user_main_text">用户名： </li>
      <li class="user_main_input"><input class="TxtUserNameCssClass"; id="TxtUserName"; 
      maxlength="20"; name="TxtUserName"> </li></ul>
    <ul>
      <li class="user_main_text">密 码： </li>
      <li class="user_main_input"><input class="TxtPasswordCssClass" id="TxtPassword" 
      type="password" name="TxtPassword"/> </li></ul>
    <ul>
      <li class="user_main_text">
      <span > <a href="javascript:void(0);" onclick="javascript:showDiv();" style="MARGIN-TOP: 40px; 
      font-family: 隶书; text-decoration: underline; font-size: small; color: #3366FF;">
      点此注册>>></a></span>
      
      </li></ul></div></li>
    <li class="user_main_r"><input class="IbtnEnterCssClass" id="IbtnEnter" 
    style="border-top-width: 0px; border-left-width: 0px; border-bottom-width: 0px; border-right-width: 0px" 
    type="image" src="../../../image/Login/Images/user_botton.gif" name="IbtnEnter" onclick="IbtnEnter_onclick"/> </li></ul></dd>
  <dd id="user_bottom">
  <ul>
    <li class="user_bottom_l"></li>
    <li class="user_bottom_c"></li>
    <li class="user_bottom_r"></li></ul></dd></dl></div>

<div></div>

</form></body></html>