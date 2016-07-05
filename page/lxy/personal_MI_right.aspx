<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_MI_right.aspx.cs" Inherits="page_lxy_personal_MI_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/lxy/personal/Popup.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/lxy/Popup.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 10%;
        }
        .auto-style2 {
            width: 20%;
        }
        .auto-style3 {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="Z-INDEX:8888;POSITION:absolute; -moz-opacity:0.50;opacity:0.3;filter:alpha(opacity=30);BACKGROUND-COLOR:#000;display:none; width: 100%; height: 100%;" id="show"></div>
      <div class="topDiv" id="show_win">
        <table width="100%" style="height: 50px">
            <tr>
                <td align="center" style="clip: rect(10px, auto, auto, auto); position: relative; top: 10px;"><asp:Label ID="user_personal_Label" runat="server" BorderStyle="None" Font-Bold="True" 
                    Font-Names="宋体" Font-Size="XX-Large" Height="100%" Text="注册信息修改" Width="200px"></asp:Label>
                </td>
            </tr>
        </table>
        <table width="100%">
            <tr>
                <td align="right" height="30"><asp:Label ID="user_name_Label" runat="server" Height="20px" Text="用 户 名：" Width="80px"></asp:Label></td>
                <td align="left" height="30"><asp:TextBox ID="user_name_TextBox" runat="server" Height="20px" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" height="30"><asp:Label ID="user_phone_Label" runat="server" Height="20px" Text="电话号码：" Width="115px"></asp:Label></td>
                <td align="left" height="30"><asp:TextBox ID="user_phone_TextBox" runat="server" Height="20px" TextMode="Phone" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" height="30"><asp:Label ID="user_password_Label1" runat="server" Height="20px" Text="新 密 码：" Width="80px"></asp:Label></td>
                <td align="left" height="30"><asp:TextBox ID="user_password_TextBox1" runat="server" Height="20px" TextMode="Password" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" height="30"><asp:Label ID="user_password_Label2" runat="server" Height="20px" Text="确认密码："></asp:Label></td>
                <td align="left" height="30"><asp:TextBox ID="user_password_TextBox2" runat="server" Height="20px" TextMode="Password" Width="200px"></asp:TextBox></td>
            </tr>
        </table>
        <table width="100%">
            <tr>
                <td width="10%"></td>
                <td align="center" style="height: 30px" width="40%"><asp:Button ID="user_personal_Button1" runat="server" Height="30px" Text="提交" Width="80px" OnClick="user_personal_Button1_Click" /></td>
                <td align="center" style="height: 30px" width="40%"><asp:Button ID="user_personal_Button2" runat="server" Height="30px" Text="返回" Width="80px" PostBackUrl="~/page/lxy/personal.aspx" /></td>
                <td width="10%"></td>
            </tr>
        </table>
      </div>
        <div>
            <table style="border-style: none; width: 100%; height: 400px;" border="0">
                <tr>
                    <td class="auto-style1" style="border-style: none">
                    </td>
                    <td class="auto-style2" style="border-style: none" align="right">
                        <asp:Label ID="personal_account_Label" runat="server" Text="用户名  ：" Width="100%" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3" style="border-style: none">
                        <asp:TextBox ID="TextBox1" runat="server" Width="100%" MaxLength="20" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td style="border-style: none">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="border-style: none">
                    </td>
                    <td class="auto-style2" style="border-style: none" align="right">
                        <asp:Label ID="personal_password_Label" runat="server" Text="密   码 ：" Width="100%" style="margin-left: 0px" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3" style="border-style: none">
                        <asp:TextBox ID="TextBox2" runat="server" Width="100%" MaxLength="20" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td style="border-style: none">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="border-style: none">
                    </td>
                    <td class="auto-style2" style="border-style: none" align="right">
                        <asp:Label ID="Label3" runat="server" Text="电话号码 ：" Width="100%" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style3" style="border-style: none">
                        <asp:TextBox ID="TextBox3" runat="server" Width="100%" TextMode="Phone" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                    </td>
                    <td style="border-style: none">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                    </td>
                     <td class="auto-style2">
                    </td>
                     <td class="auto-style3" align="right">
                    </td>
                     <td>
                         <span > <a href="javascript:void(0);" onclick="javascript:showDiv();"> 修改注册信息 </a></span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
