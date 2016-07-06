<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comment_left.aspx.cs" Inherits="page_jl_comment_left" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="../../css/jl/comment_left.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        #form1 {
            height: 426px;
        }
    </style>
</head>
<body style="background-color :#f5ede2">
    <form id="form1" runat="server">
    <asp:Panel ID="comment_left" runat="server">
            <asp:Panel ID="div_title" runat="server">
                <asp:Label ID="Label1" runat="server" Text="标题："></asp:Label>
                <asp:Label ID="lab_title" runat="server"><%=ct.title %></asp:Label>
            </asp:Panel>
            <asp:Panel ID="div_content" runat="server">
                <asp:Label ID="Label2" runat="server" Text="内容："></asp:Label>
                <br />
                <textarea id="lab_content" readonly="readonly" cols="25" rows="10"><%=ct.content %></textarea>
            </asp:Panel>
            <asp:Panel ID="div_ending" runat="server">
                <asp:Panel ID="div_time" runat="server">
                    <asp:Label ID="Label5" runat="server" Text="发表时间："></asp:Label>
                    <asp:Label ID="lab_time" runat="server" Text="Label"><%=ct.time %></asp:Label>
                </asp:Panel>
                <asp:Panel ID="div_person" runat="server">
                    <asp:Label ID="Label6" runat="server" Text="发言人："></asp:Label>
                    <asp:Label ID="lab_person" runat="server" Text="Label"><%=ct.name %></asp:Label>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
