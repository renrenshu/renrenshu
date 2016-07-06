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
                <%--<asp:TextBox ID="information" runat="server" TextMode="MultiLine">现在大学生的教材泛滥成灾，教材的利用率低，为促进教材的回收利用，故建立该网站帮助大学生更便捷的处理自己的不用书籍，也方便大学生的购买。网站制作人：2013081076 袁炜 2013081078 罗兴宇 2013081055 蒋力
                </asp:TextBox>--%>
                <asp:Label ID="information" runat="server">现在大学生的教材泛滥成灾，教材的利用率低，为促进教材的回收利用，故建立该网站帮助大学生更便捷的处理自己的不用书籍，也方便大学生的购买。
                    网站制作人：2013081076 袁炜 2013081078 罗兴宇 2013081055 蒋力</asp:Label>
                <img id="about" src="../../image/about.gif" />           
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server">
                <img class="boder" src="../../image/border.gif" />
                <asp:Panel ID="xs_text" runat="server">
                    <asp:Label ID="xs_lab" runat="server" ForeColor="#6F605A" Font-Size="XX-Large" Font-Bold="True" Font-Names="楷体">悬赏榜</asp:Label>
                </asp:Panel>
                <%--<asp:Table  ID="xs_tab" runat="server" Width="100%" BorderStyle="Dashed" GridLines="Horizontal">
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
                </asp:Table>--%>
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Panel ID="xs_tab" runat="server">
                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname">
                                </asp:BoundField>
                                <asp:BoundField DataField="loffer" HeaderText="loffer" SortExpression="loffer">
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </asp:Panel>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:人人书ConnectionString2 %>" SelectCommand="SELECT TOP (10) lname, loffer FROM List ORDER BY loffer DESC, ltime DESC"></asp:SqlDataSource>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
