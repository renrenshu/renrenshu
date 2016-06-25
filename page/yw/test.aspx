<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="page_yw_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="renderer" content="webkit"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"/>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form>
  <asp:Panel ID="Panel6" runat="server">
        <asp:Label ID="Label8" runat="server" Text="上传图片："></asp:Label>
       <asp:FileUpload ID="FileUpload1" runat="server" />
      <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="确  定" OnClick="Button1_Click"/>
   </asp:Panel>
</form>
</body>
</html>
