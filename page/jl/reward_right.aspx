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
<body style="width: 100%; height: 70%; margin-bottom: 15px;">
    <form id="form1" runat="server" style = "width: 100%; height: 100%">
    <div style="height: 52px">
    
        <asp:Label ID="Label1" runat="server" Text="检 索" Height="40%" Width="20%"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="40%" Width="50%"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="学 期" Height="40%" Width="20%"></asp:Label>
&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="40%" Width="20%">
            <asp:ListItem>大一</asp:ListItem>
            <asp:ListItem>大二</asp:ListItem>
            <asp:ListItem>大三</asp:ListItem>
            <asp:ListItem>大四</asp:ListItem>
            <asp:ListItem>考研</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <hr id="virline1" />
        <div style="height: 548px;">
 
        <div style="width:179px; height:495px; float:right;">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="任务要求" Height="3%" Width="40%"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="20%" Width="90%"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="联系书主" Height="5%" Width="40%" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="任务要求" Height="3px"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="20%" Width="90%"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="联系书主" Height="5%" Width="40%" />
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="任务要求"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="20%" Width="90%"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button6" runat="server" Text="联系书主" Height="5%" Width="40%" />
            </div>
 
            <div style="width:40%; height:411px; float:left;padding-left:0px">&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;<asp:Image ID="Image4" runat="server" Height="30%" ImageUrl="~/image/thumb3.gif" Width="70%" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="详情" Height="5%" Width="30%" />
                <br />
&nbsp;<asp:Image ID="Image2" runat="server" Height="30%" ImageUrl="~/image/thumb3.gif" Width="70%" />
                <br />&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="详情" Height="5%" Width="30%" />
                <br />
&nbsp;<asp:Image ID="Image3" runat="server" Height="30%" ImageUrl="~/image/thumb3.gif" Width="70%" />
                <br />&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" Text="详情" Height="5%" Width="30%" />
            </div>
            <br />
&nbsp;&nbsp;
            &nbsp;
            <br />
        </div>
    
       
    
    </div>
    </form>
</body>
</html>
