<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reward_right.aspx.cs" Inherits="page_jl_reward_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 541px;
        }
        #virline1 {
            height: -12px;
        }
    </style>
</head>
<body style="width: 321px; height: 488px; margin-bottom: 15px;">
    <form id="form1" runat="server">
    <div style="height: 52px">
    
        <asp:Label ID="Label1" runat="server" Text="检 索"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="149px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="学 期"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="55px">
            <asp:ListItem>大一</asp:ListItem>
            <asp:ListItem>大二</asp:ListItem>
            <asp:ListItem>大三</asp:ListItem>
            <asp:ListItem>大四</asp:ListItem>
            <asp:ListItem>考研</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <hr id="virline1" />
        <div style="height: 475px;">
 
        <div style="width:179px; height:400px;float:right;">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="任务要求"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="70px" Width="140px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="联系书主" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="任务要求"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="70px" Width="140px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="联系书主" />
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="任务要求"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="70px" Width="140px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Text="联系书主" />
            </div>
 
            <div style="width:40%; height:406px; float:left;padding-left:0px">&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl="~/image/thumb3.gif" Width="90px" />
                <br />
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="详情" />
                <br />
&nbsp;
                <asp:Image ID="Image2" runat="server" Height="110px" ImageUrl="~/image/thumb3.gif" Width="90px" />
                <br />
&nbsp;
                <asp:Button ID="Button4" runat="server" Text="详情" />
                <br />
&nbsp;
                <asp:Image ID="Image3" runat="server" Height="110px" ImageUrl="~/image/thumb3.gif" Width="90px" />
                <br />
&nbsp;
                <asp:Button ID="Button5" runat="server" Text="详情" />
            </div>
            <br />
&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" Text="上一页" />
&nbsp;
            <asp:Button ID="Button8" runat="server" Text="下一页" />
            <br />
        </div>
    
       
    
    </div>
    </form>
</body>
</html>
