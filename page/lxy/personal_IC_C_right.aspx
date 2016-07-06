<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_IC_C_right.aspx.cs" Inherits="page_lxy_personal_IC_C_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 20%;
        }
        .auto-style2 {
            width: 30%;
        }
        .auto-style3 {
            width: 30%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="height: 80%; width: 100%;">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" CssClass="ordertable" runat="server" Text="揭榜用户名" Width="100%"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label2" CssClass="ordertable" runat="server" Text="揭榜手机号码" Width="100%"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox3" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox5" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox6" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox7" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox8" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox9" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox10" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox11" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox12" CssClass="ordertable" runat="server" Width="100%" Font-Size="Large"></asp:TextBox>
            </td>
            <td></td>
        </tr>
    </table>
    </div>
    <div>
        <asp:Panel ID="Panel1" CssClass="clear" runat="server"></asp:Panel>
        <asp:Panel ID="Panel25" runat="server">
            <asp:Panel ID="paging" runat="server">
                <asp:Label ID="Label4" runat="server" Text="当前第"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="<%# pagecurrent %>"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="页/共："></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="<%# pagecount %>"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="页"></asp:Label>
                <asp:Button ID="FistPage" runat="server" Text="首页" OnClick="FistPage_Click" />
                <asp:Button ID="LastPage" runat="server" Text="上一页" OnClick="LastPage_Click" />
                <asp:Button ID="NextPage" runat="server" Text="下一页" OnClick="NextPage_Click" />
                <asp:Button ID="FinalPage" runat="server" Text="尾页" OnClick="FinalPage_Click" />
                <asp:Label ID="Label9" runat="server" Text="转到第"></asp:Label>
                <asp:TextBox ID="txtpage" runat="server" Width="20px"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="页。"></asp:Label>
                <asp:Button ID="GoPage" runat="server" Text="Go" OnClick="GoPage_Click" />
                </asp:Panel>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
