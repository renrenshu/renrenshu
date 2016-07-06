<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reward_left.aspx.cs" Inherits="page_jl_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/jl/reward_left.css" rel="stylesheet" />
    <title></title>
</head>
<body>
        <form id="form1" runat="server">
    <asp:Panel ID="book_left" runat="server">
            <br />
            <div>
                <img id="book_img" src="<%=rd.picture %>" />
            </div>
            <asp:Panel ID="book_details" runat="server">
                <div>
                    <asp:Label ID="book_name" runat="server" >书名：</asp:Label>
                    <asp:Label ID="Label1" runat="server" ><%=rd.name%></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="book_author" runat="server" Text="作者："></asp:Label>
                    <asp:Label ID="Label2" runat="server" ><%=rd.author %></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="book_press" runat="server" Text="出版社："></asp:Label>
                    <asp:Label ID="Label3" runat="server" ><%=rd.press %></asp:Label>
                </div>
                <br />
                <div>
                    <asp:Label ID="book_price" runat="server" Text="价格："></asp:Label>
                    <asp:Label ID="Label4" runat="server" ><%=rd.price %></asp:Label>
                </div>
                <div>
                    <asp:Button ID="book_order" runat="server" Text="揭榜" OnClick="book_order_Click" />
                </div>
            </asp:Panel>
            <asp:Panel ID="information" runat="server">
                <asp:Label ID="book_information" runat="server" Text="简介："></asp:Label>
                <br />
                <textarea id="book_text" cols="25" rows="10"><%=rd.intro %></textarea>
            </asp:Panel>
        </asp:Panel>
    </form>

</body>
</html>
