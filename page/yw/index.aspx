<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="page_yw_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../js/lxy/jquery.tmpl.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">
        body {
            background-color: #6F605A;
            margin: 0;
            padding: 0;
        }
        #head {
            border:none;
            height: 190px;
            width: 60%;
            left: 20%;
            right: 20%;
            position: absolute;
            background-color: #502F1E;
            margin: 0;
            padding: 0;
        }

        #left {
            border: none;
            background-color: white;
            width: 30%;
            height: 80%;
            float: left;
            margin: 0;
            left: 20%;
            top: 195px;
            position: absolute;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }



        #right {
            border: none;
            background-color: white;
            width: 30%;
            height: 80%;
            float: left;
            margin: 0;
            left: 50%;
            top: 195px;
            position: absolute;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }
        #top {
            border:none;
            height: 190px;
            width:100%;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }
        #_left {
            
            width: 100%;
            height: 100%;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }
        #_right {
            border: none;
            width: 100%;
            height: 100%;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="head"><iframe src="top.aspx" id="top" name="_top"></iframe></div>
    <div id="content">
        <div id="left"><iframe src="index_left.aspx" id="_left" name="_left"></iframe></div>
        <div id="right"><iframe src="index_right.aspx" id="_right" name="_right"></iframe></div>
    </div>
    </form>
    <script>
        $(function chance() {
            var a = "<%=getstate()%>";
                if (a == "False") {
                    window.location = "maintaining.aspx";
                }
            });
        </script>
</body>
</html>
