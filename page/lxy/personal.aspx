<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal.aspx.cs" Inherits="page_lxy_qwe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        body {
            background-color: #6F605A;
            margin: 0;
            padding: 0;
        }

        #head {
            border: none;
            height: 190px;
            width: 60%;
            left: 20%;
            right: 20%;
            position: absolute;
            background-color: #502F1E;
            margin: 0,0,0,0;
            padding: 0,0,0,0;
        }

        #left {
            border: none;
            background-color: white;
            width: 19.7%;
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
            width: 40%;
            height: 80%;
            float: left;
            margin: 0;
            left: 40%;
            top: 195px;
            position: absolute;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }

        #top {
            border: none;
            height: 190px;
            width: 100%;
            margin: 0 0 0 0;
            padding: 0 0 0 0;
        }

        #_left {
            border: none;
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
        <div id="left"><iframe src="personal_left.aspx" id="_left" name="_left"></iframe></div>
        <div id="right"><iframe src="personal_MI_right.aspx" id="_right" name="_right"></iframe></div>
    </div>
    </form>
</body>
</html>
