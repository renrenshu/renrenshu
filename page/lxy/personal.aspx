<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal.aspx.cs" Inherits="page_lxy_personal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/lxy/personal/personal.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 20%;
            height: 793px;
        }
        .auto-style3 {
            width: 45%;
            height: 793px;
        }
        .auto-style4 {
            width: 15%;
            height: 793px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
        <table style="border-style: none; width: 100%" border="0">
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
                            <asp:TreeNode Expanded="True" Text="我的书籍" Value="我的书籍">
                                <asp:TreeNode Text="我是卖家" Value="我是卖家"></asp:TreeNode>
                                <asp:TreeNode Text="我是买家" Value="我是买家"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Expanded="True" Text="我的悬赏" Value="我的悬赏">
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
                            11111
                        </asp:View>
                        <asp:View ID="View2" runat="server">  
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
