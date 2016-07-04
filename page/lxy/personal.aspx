<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal.aspx.cs" Inherits="page_lxy_personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/lxy/personal/personal.css" rel="stylesheet" />
    <link href="../../css/lxy/personal/Popup.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/lxy/Popup.js"></script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 20%;
            height: 371px;
        }
        .auto-style3 {
            width: 45%;
            height: 371px;
        }
        .auto-style4 {
            width: 15%;
            height: 371px;
        }
        .auto-style6 {
            width: 20%;
        }
        .auto-style8 {
            width: 10%;
        }
        .auto-style9 {
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
        <div id="img">
            <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/image/header1.png" Width="100%" />       
        </div>
        <div id="menu">
            <div id="tab">
            <asp:Table ID="menutab" runat="server" BorderStyle="none" Height="30px">
                <asp:TableRow runat="server">
                    <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="index.html" target ="_parent">首页</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="book.html" target ="_parent">书库</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="../jl/reward.html" target ="_parent">悬赏</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="50px"><a href="../jl/comment.html" target ="_parent">评论区</a></asp:TableCell>
                        <asp:TableCell cssclass="menu_a" runat="server" Height="30px" Width="70px"><a href="../lxy/personal.aspx" target="_parent">个人中心</a></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
            <div id="logn">
               <a class="menu_a">登录</a>
            </div>
        </div> 
        <table style="border-style: none; width: 100%; height: 80%;" border="0">
            <tr>
                <td class="auto-style1" style="border-style: none">

                    <br />

                </td>
                <td class="auto-style4" style="border-style: none">

                    <asp:TreeView ID="TreeView1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Names="新宋体" Font-Size="Large" ForeColor="Black" Height="100%" Width="100%" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                        <LeafNodeStyle ChildNodesPadding="10px" Height="30px" />
                        <LevelStyles>
                            <asp:TreeNodeStyle Font-Names="新宋体" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Height="50px" Width="100%" />
                        </LevelStyles>
                        <Nodes>
                            <asp:TreeNode Text="我的信息" Value="我的信息" Selected="True"></asp:TreeNode>
                            <asp:TreeNode Expanded="True" Text="我的书籍" Value="我的书籍" SelectAction="None">
                                <asp:TreeNode Text="我是卖家" Value="我是卖家"></asp:TreeNode>
                                <asp:TreeNode Text="我是买家" Value="我是买家"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="True" Text="我的悬赏" Value="我的悬赏" SelectAction="None">
                                <asp:TreeNode Text="我是委托人" Value="我是委托人"></asp:TreeNode>
                                <asp:TreeNode Text="我是受托人" Value="我是受托人"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                        <SelectedNodeStyle BackColor="#FFFF66" />
                    </asp:TreeView>

                </td>
                <td class="auto-style3" id="right" style="border-style: none">

                    <asp:MultiView  ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">  
                            <table style="border-style: none; width: 100%; height: 80%;" border="0">
                                <tr>
                                    <td class="auto-style8" style="border-style: none">
                                    </td>
                                    <td class="auto-style6" style="border-style: none" align="right">
                                        <asp:Label ID="Label1" runat="server" Text="用户名  ：" Width="100%" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style9" style="border-style: none">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="100%" MaxLength="20" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                                    </td>
                                    <td style="border-style: none">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="border-style: none">
                                    </td>
                                    <td class="auto-style6" style="border-style: none" align="right">
                                        <asp:Label ID="Label2" runat="server" Text="密   码 ：" Width="100%" style="margin-left: 0px" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style9" style="border-style: none">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="100%" MaxLength="20" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                                    </td>
                                    <td style="border-style: none">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8" style="border-style: none">
                                    </td>
                                    <td class="auto-style6" style="border-style: none" align="right">
                                        <asp:Label ID="Label3" runat="server" Text="电话号码 ：" Width="100%" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="auto-style9" style="border-style: none">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="100%" TextMode="Phone" BorderStyle="None" Font-Size="Large"></asp:TextBox>
                                    </td>
                                    <td style="border-style: none">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                     <td>
                                    </td>
                                     <td class="auto-style9" align="right">
                                    </td>
                                     <td>
                                         <span > <a href="javascript:void(0);" onclick="javascript:showDiv();"> 修改注册信息 </a></span>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">  
                            22222
                        </asp:View>
                        <asp:View ID="View3" runat="server">  
                            22222
                        </asp:View>
                    </asp:MultiView>
                </td>
                <td class="auto-style1" style="border-style: none">

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
