<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reward_left.aspx.cs" Inherits="page_jl_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%; height: 70%;">
    
    &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="推荐悬赏"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="50%" ImageUrl="~/image/thumb3.gif" Width="50%" />
        <asp:Button ID="Button1" runat="server" Text="放大" Width="15%" Height="5%" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="30%" OnTextChanged="TextBox1_TextChanged" Width="90%">图文要求</asp:TextBox>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="5%" Text="联系书主" Width="25%" />
    
    </div>
        <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
