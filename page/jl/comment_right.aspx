<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comment_right.aspx.cs" Inherits="page_jl_comment_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 483px; width: 498px;">
    <form id="form1" runat="server">
    <div style="height: 498px; width: 491px;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="自由发言区" Height="5%" Width="19%"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="40%" Width="94%">历史发言区</asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="25%" OnTextChanged="TextBox2_TextChanged" Width="85%">发言区</asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="5%" Text="提交" Width="10%" />
    
     </div>
    </form>
</body>
</html>
