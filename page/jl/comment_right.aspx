<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comment_right.aspx.cs" Inherits="page_jl_comment_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 339px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border-style: hidden; height: 70%; width: 100%;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="自由发言区" Height="5%" Width="19%" align="center"></asp:Label>
        <table style="class:taskList ; width:100%">
            <colgroup>
                    <col width="" />
                    <col width="110" />
                    <col width="100" />
                    <col width="95" />
                    <col width="85" />
                </colgroup>

        <tr class="taskItem even">
                    
                        <td class="auto-style1"><div class="taskPrice">高等数学有谁卖的吗？急</div></td>
                        <td><div class="taskEndTime">游客 000001<br />17:00 2016..6.30</div></td>
                    </tr>
            <tr class="taskItem even">
                    
                        <td class="auto-style1"><div class="taskPrice">什么破网站</div></td>
                        <td><div class="taskEndTime">游客 000002<br />17:00 2016..6.30</div></td>
                        
                    </tr>
                 <tr class="taskItem even">
                    
                        <td class="auto-style1"><div class="taskPrice">怎么又卡主了</div></td>
                        <td><div class="taskEndTime">游客 000003<br />17:00 2016..6.30</div></td>
                        
                    </tr>
                 <tr class="taskItem even">
                    
                        <td class="auto-style1"><div class="taskPrice">断网了</div></td>
                        <td><div class="taskEndTime">游客 000004<br />17:00 2016..6.30</div></td>
                        
                    </tr>
               <tr class="taskItem even">
                    
                        <td class="auto-style1"><div class="taskPrice">大师大师法师 收费的公打算打算打死的爱的撒旦阿萨德爱迪生司垫付给对方给对方给对方给对方个地方官 </div></td>
                        <td><div class="taskEndTime">游客 000005<br />17:00 2016..6.30</div></td>
                        
                    </tr>

             </table>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="25%" OnTextChanged="TextBox2_TextChanged" Width="97%" TextMode="MultiLine">发言区</asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="5%" Text="提交" Width="10%" />
    
     </div>
    </form>
</body>
</html>
