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
            <a href="book_left.aspx?id=<%=bk[0].no %>"><img class="rec_book" src="<%=bk[0].picture %>"/></a>
            <asp:Panel ID="rec_div" runat="server" Width="50%">
                <asp:Label ID="rec_lab" runat="server" ><%=bk[0].name %></asp:Label>
                <br />
                <asp:Label ID="rec_text" runat="server"><%=bk[0].intro %></asp:Label>
                <br />
                <a id ="rec_link" href="book_left.aspx?id=<%=bk[0].no %>">详情>></a>
            </asp:Panel>
            <br />
            <hr id="virline1" />
            <a href="book_left.aspx?id=<%=bk[1].no %>"><img class="rec_book1" src="<%=bk[1].picture %>" /></a>
            <asp:Panel ID="rec_div1" runat="server" Width="50%">
                <asp:Label ID="rec_lab1" runat="server"><%=bk[1].name %></asp:Label>
                <br />
                <asp:Label ID="rec_text1" runat="server"><%=bk[1].intro %></asp:Label>
                <br />
                <a id ="rec_link1" href="book_left.aspx?id=<%=bk[1].no %>">详情>></a>
            </asp:Panel>
            <hr id="virline2" />
            <asp:Panel ID="newbook_div" runat="server">
                <asp:Label ID="new_lab" runat="server" ForeColor="#6F605A" Font-Size="Larger" Font-Bold="True" Font-Names="幼圆">最新上架:</asp:Label>
                <br />
                <asp:Panel ID="newbook1" CssClass="newbook_div" runat="server">
                    <a href="book_left.aspx?id=<%=bk1[0].no %>"><img id="img1" class="newbook" src="<%=bk1[0].picture %>" /></a>
                    <br />
                    <asp:Label ID="Label1" runat="server" ><%=bk1[0].name %></asp:Label>
                </asp:Panel>
                <asp:Panel ID="newbook2" CssClass="newbook_div" runat="server">
                    <a href="book_left.aspx?id=<%=bk1[1].no %>"><img id="Image1" class="newbook" src="<%=bk1[1].picture %>" /></a>
                    <br />
                    <asp:Label ID="Label2" runat="server"><%=bk1[1].name %></asp:Label>
                </asp:Panel>
                <asp:Panel ID="newbook3" CssClass="newbook_div" runat="server">
                    <a href="book_left.aspx?id=<%=bk1[2].no %>"><img id="Image2" class="newbook" src="<%=bk1[2].picture %>" /></a>
                    <br />
                    <asp:Label ID="Label3" runat="server"><%=bk1[2].name %></asp:Label>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
