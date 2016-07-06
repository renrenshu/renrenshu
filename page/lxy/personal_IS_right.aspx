<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_IS_right.aspx.cs" Inherits="page_lxy_personal_IS_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/lxy/personal/personal_right.css" rel="stylesheet" />
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../js/lxy/jquery.tmpl.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="row items-body" id="items-container">
                <!-- items -->
        </div>
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
    <script id="gooods-item" type="text/x-jquery-tmpl">
            <!-- item -->
        <div class="col-lg-4 book_div">
            <a <%--href="book_left.aspx?id=${ no }" target="_left"--%>  class="thumbnail">
                <img class="book_img" src="${ picture }" />
            </a>
            <asp:Panel ID="Panel2" runat="server">
                &nbsp;<a href="personal_IS_C_right.aspx?seller=${ seller }&bno=${ bno }" target="_right"  class="check">查看订阅详情>>></a>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server">
                <asp:Label ID="Label1" runat="server" Text="书名">${ name }</asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <asp:Label ID="Label3" runat="server" Text="时间">${ time }</asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                <a <%--href="personal_IS_D_right.aspx?buyer=${ buyer },bno=${ bno }" target="_right"--%>  class="check">取消预定</a>
                <asp:Label ID="Label11" CssClass="jiage" runat="server" Text="价格">${ price }元</asp:Label>
            </asp:Panel>
        </div>
        <!-- end item -->
    </script> 
    <script>
        $(function () {
            var a = <%=func()%>
            var container = $("#items-container");

            //data = [
            //    { "picture": "../../upload/1.png", "price": "5", "name": "asd" ,"time":"17:38"},
            //    { "picture": "../../upload/1.png", "price": "5", "name": "asd","time":"17:38" },
            //    { "picture": "../../upload/1.png", "price": "5", "name": "asd","time":"17:38" },
            //];

            $("#gooods-item").tmpl(a).appendTo("#items-container");

        });
    </script>
</body>
</html>
