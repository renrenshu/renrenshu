<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reward_left.aspx.cs" Inherits="page_jl_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="width: 297px; height: 405px">
    <form id="form1" runat="server">
    <div style="width: 283px; height: 406px;">
    
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="推荐悬赏"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="217px" ImageUrl="~/image/thumb3.gif" Width="136px" />
        <asp:Button ID="Button1" runat="server" Text="详情" Width="56px" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="119px" OnTextChanged="TextBox1_TextChanged" Width="257px">图文要求</asp:TextBox>
    
    </div>
        <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="联系书主" />
        </div>
    </form>
</body>
</html>
