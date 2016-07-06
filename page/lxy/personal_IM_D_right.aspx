<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_IM_D_right.aspx.cs" Inherits="page_lxy_personal_IM_D_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 30%;
        }
        .auto-style2 {
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width: 100%; height: 300px; text-align: center;">
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:Label ID="D_Tip" runat="server" Text="是否删除？" Font-Size="X-Large" Width="100%"></asp:Label>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">

            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:Button ID="Sure" runat="server" Text="确定" Font-Size="Large" OnClick="Sure_Click" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">

            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                <asp:Button ID="Return" runat="server" Text="返回" Font-Size="Large" OnClick="Return_Click" />
            </td>
            <td></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
