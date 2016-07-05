<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comment_right.aspx.cs" Inherits="page_jl_comment_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/jl/comment_right.css" rel="stylesheet" />
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../js/lxy/jquery.tmpl.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <title></title>       
</head>

<body>
    <form id="form1" runat="server">
            <asp:Panel ID="Panel2" runat="server">
                <!--标题栏-->
                <div class="book_div" id="div_lab">
                <asp:Panel CssClass="xs_name" runat="server">
                    <asp:Label ID="Label2" runat="server" >标题</asp:Label>
                </asp:Panel>
                
                </div>
                <!--动态生成区域-->
                <div>
                    <div class="row items-body" id="items-container">
                        <!-- items -->
                    </div>
                </div>
            </asp:Panel>    
    <div>
        <!--主体-->
        <!--清除浮动float-->
        <asp:Panel CssClass="clear" runat="server"></asp:Panel>
        <!--页码区-->
        <asp:Panel runat="server">
            <asp:Panel ID="paging1" runat="server">
                <asp:Label runat="server" Text="当前第"></asp:Label>
                <asp:Label ID="lab_pagecurrent" runat="server" Text="<%# pagecurrent %>"></asp:Label>
                <asp:Label runat="server" Text="页/共："></asp:Label>
                <asp:Label ID="lab_pagecount" runat="server" Text="<%# pagecount %>"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="页"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="首页" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="上一页" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="下一页" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" Text="尾页" OnClick="Button4_Click" />
                <asp:Label ID="Label8" runat="server" Text="转到第"></asp:Label>
                <asp:TextBox ID="txtpage" runat="server" Width="20px"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="页。"></asp:Label>
                <asp:Button ID="Button5" runat="server" Text="Go" OnClick="Button5_Click" />
            </asp:Panel>
        </asp:Panel>
        <!--发言区-->
        <asp:Panel ID="comment_left" runat="server">
            <asp:Panel ID="div_title" runat="server">
                <asp:Label ID="Label3" runat="server" Text="标题："></asp:Label>
                <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="div_content" runat="server">
                <asp:Label ID="Label4" runat="server" Text="内容："></asp:Label>
                <br />
                <asp:TextBox ID="txt_content" runat="server" TextMode="MultiLine"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="Panel1" runat="server">
                <asp:Button ID="btn_submit" runat="server" Text="发表" OnClick="btn_submit_Click" />
            </asp:Panel>
        </asp:Panel>
    </div>
    <!--要动态生成的模版-->
    <script id="gooods-item" type="text/x-jquery-tmpl">
            <!-- item -->
        <div class="col-lg-4 book_div">
            <asp:Panel CssClass="xs_name" runat="server">
                <a href="reward_left.aspx?id=${no}" target="_left"><asp:Label ID="Label10" runat="server" >${title}</asp:Label></a>
            </asp:Panel>
        </div>
        <!-- end item -->
    </script>
    <!--给模版添加数据，动态生成模版-->
    <script>
        $(function () {
            var a = <%=func()%>
            var container = $("#items-container");

            //data = [
            //    { "title": "第一条", "no": "12" },
            //    { "title": "第一条", "no": "12" },
            //    { "title": "第一条", "no": "12" },
            //];

            $("#gooods-item").tmpl(data).appendTo("#items-container");


        });
    </script>

    </form>
</body>
</html>
