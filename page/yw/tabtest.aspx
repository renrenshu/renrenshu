<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabtest.aspx.cs" Inherits="page_yw_tabtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/book_right.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="book_div1" CssClass="book_div" runat="server" Height="20%">
            <asp:Image ID="Image1" CssClass="book_img"  runat="server" ImageUrl="~/image/thumb3.gif" />
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" OnDataBinding="" runat="server" Text="价格"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="书名"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="卖家名称"></asp:Label>
                    <asp:Label ID="Label4" CssClass="book_more" runat="server"><a>详情>></a></asp:Label>
                </asp:Panel>
            </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:人人书ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [bname], [bprice], [bpicture] FROM [Stacks]"></asp:SqlDataSource>
    </form>
</body>
</html>

