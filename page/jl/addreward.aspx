﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addreward.aspx.cs" Inherits="page_jl_addreward" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/addbook.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <asp:Panel ID="Panel1" runat="server">
            <asp:Panel ID="add_book" runat="server">
                <asp:Panel ID="title_div" runat="server">
                    <asp:Label ID="title_lab" runat="server" Text="发布悬赏"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="details" runat="server">
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="书   名："></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_name" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:Label ID="Label2" runat="server" Text="作   者："></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_author" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label6" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server">
                        <asp:Label ID="Label3" runat="server" Text="出版社："></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_press" CssClass="text" runat="server"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel7" runat="server">
                        <asp:Label ID="Label10" runat="server" Text="悬赏金额(元)（该行只能填入数值）："></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_price" CssClass="text" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" CssClass="sign" Text="*"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="Panel5" runat="server">
                        <asp:Label ID="Label4" runat="server" Text="备注："></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_jianjie" CssClass="text" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </asp:Panel>
                    <asp:Panel ID="Panel6" runat="server">
                        <asp:Label ID="Label8" runat="server" Text="上传图片："></asp:Label>
                        <asp:FileUpload ID="fileup" runat="server" />
                        <br />
                        <asp:Label ID="Label12" runat="server" >暂只支持上传一张图片</asp:Label>
                        <br />
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                        <asp:Button ID="submit" runat="server" Text="发布" OnClick="submit_Click"/>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
