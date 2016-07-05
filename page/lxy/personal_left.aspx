<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_left.aspx.cs" Inherits="page_lxy_personal_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TreeView ID="TreeView1" runat="server" BackColor="White" BorderStyle="None" Font-Names="新宋体" Font-Size="Large" ForeColor="Black" Height="100%" Width="100%" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
        <LeafNodeStyle ChildNodesPadding="10px" Height="30px" />
        <LevelStyles>
            <asp:TreeNodeStyle Font-Names="新宋体" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" Height="50px" Width="100%" />
        </LevelStyles>
        <Nodes>
            <asp:TreeNode Text="我的信息" Value="我的信息" Selected="True" Checked="True" NavigateUrl="~/page/lxy/personal_MI_right.aspx" Target="_right"></asp:TreeNode>
            <asp:TreeNode Expanded="True" Text="我的书籍" Value="我的书籍" SelectAction="None">
                <asp:TreeNode Text="我是卖家" Value="我是卖家" NavigateUrl="~/page/lxy/personal_IS_right.aspx" Target="_right"></asp:TreeNode>
                <asp:TreeNode Text="我是买家" Value="我是买家" NavigateUrl="~/page/lxy/personal_IB_right.aspx" Target="_right"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Expanded="True" Text="我的悬赏" Value="我的悬赏" SelectAction="None">
                <asp:TreeNode Text="我是委托人" Value="我是委托人" NavigateUrl="~/page/lxy/personal_IC_right.aspx" Target="_right"></asp:TreeNode>
                <asp:TreeNode Text="我是受托人" Value="我是受托人" NavigateUrl="~/page/lxy/personal_IM_right.aspx" Target="_right"></asp:TreeNode>
            </asp:TreeNode>
        </Nodes>
        <SelectedNodeStyle BackColor="#FFFF66" />
    </asp:TreeView>
    </div>
    </form>
</body>
</html>
