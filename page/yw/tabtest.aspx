<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabtest.aspx.cs" Inherits="page_yw_tabtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/framestyle.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table  id="tab" border="0"  >
        <tr>
            <td colspan="2" id="top" ><iframe src="top.aspx" id="_top" name="_top"></iframe></td>
        </tr>
        <tr>
            <td  id="frmTitle">
                <iframe   name="leftFrame"></iframe>
            </td>

            <td >
                <iframe  name="center" ></iframe>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
