<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index_left.aspx.cs" Inherits="page_yw_index_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/index_left.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="i_left" runat="server" Width="30%" ForeColor="#6F605A" Height="100%">
            <asp:Label ID="lab1" runat="server"  ForeColor="#6F605A" Font-Size="Larger" Font-Bold="True" Font-Names="幼圆">推荐书籍：</asp:Label>
            <br />
            <a href="book_left.aspx"><asp:Image cssclass="rec_book" runat="server" ImageUrl="~/image/thumb3.gif" /></a>
            <asp:Panel ID="rec_div" runat="server" Width="50%">
                <asp:Label ID="rec_lab" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="rec_text" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                <br />
                <a id ="rec_link" href="book_left.aspx">详情>></a>
            </asp:Panel>
            <br />
            <hr id="virline1" />
            <a href="book_left.aspx"><asp:Image cssclass="rec_book1" runat="server" ImageUrl="~/image/thumb3.gif" /></a>
            <asp:Panel ID="rec_div1" runat="server" Width="50%">
                <asp:Label ID="rec_lab1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="rec_text1" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                <br />
                <a id ="rec_link1" href="book_left.aspx">详情>></a>
            </asp:Panel>
            <hr id="virline2" />
            <asp:Panel ID="newbook_div" runat="server">
                <asp:Label ID="new_lab" runat="server" ForeColor="#6F605A" Font-Size="Larger" Font-Bold="True" Font-Names="幼圆">最新上架:</asp:Label>
                <br />
                <a href="book_left.aspx"><asp:Image ID="newbook1" CssClass="newbook" runat="server" ImageUrl="~/image/thumb3.gif" /></a>
                <a href="book_left.aspx"><asp:Image ID="newbook2" CssClass="newbook" runat="server" ImageUrl="~/image/thumb3.gif"/></a>
                <a href="book_left.aspx"><asp:Image ID="newbook3" CssClass="newbook" runat="server" ImageUrl="~/image/thumb3.gif" /></a>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
