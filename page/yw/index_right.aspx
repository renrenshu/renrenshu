<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index_right.aspx.cs" Inherits="page_yw_index_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/index_right.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="i_right" runat="server" Height="100%">
            <img  class="boder" src="../../image/border.gif" />
            <asp:Panel ID="aboutofus" runat="server">
                <asp:Label ID="lab1" runat="server"  ForeColor="#6F605A" Font-Size="Larger" Font-Bold="True" Font-Names="幼圆">About our store:</asp:Label>
                <br />
                <asp:TextBox ID="information" runat="server" TextMode="MultiLine"></asp:TextBox>
                <img id="about" src="../../image/about.gif" />           
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server">
                <img class="boder" src="../../image/border.gif" />
                <asp:Panel ID="xs_text" runat="server">
                    <asp:Label ID="xs_lab" runat="server" ForeColor="#6F605A" Font-Size="XX-Large" Font-Bold="True" Font-Names="楷体">悬赏榜</asp:Label>
                </asp:Panel>
                <asp:Table  ID="xs_tab" runat="server" Width="100%" BorderStyle="Dashed" GridLines="Horizontal">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">悬赏图书</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">赏金</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server" CssClass="xs_name">1</asp:TableCell>
                        <asp:TableCell runat="server" CssClass="xs_price">1</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
