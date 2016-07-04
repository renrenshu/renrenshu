<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reward_right.aspx.cs" Inherits="page_jl_reward_right" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>       
    <script type="text/javascript">
            function startTime() {
                var today = new Date()
                var h = today.getHours()
                var m = today.getMinutes()
                var s = today.getSeconds()
                // add a zero in front of numbers<10
                m = checkTime(m)
                s = checkTime(s)
                document.getElementById('txt').innerHTML = h + ":" + m + ":" + s
                t = setTimeout('startTime()', 500)
            }

            function checkTime(i) {
                if (i < 10)
                { i = "0" + i }
                return i
            }
</script>
</head>
<body onload="startTime()">
    <form id="form1" runat="server">
    <div  id="txt" style ="width :100%;height : 518px; 100%">
 
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="20%" ImageUrl="~/image/Login/Images/PNYI6YDQLCYNICY))N]GYM9.png" Width="21%" />
        <br />
        <asp:Panel ID="find" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="book_find" runat="server" Height="15%" Width="20%"></asp:TextBox>
                <asp:Button ID="btn_find" runat="server" Text="搜索" Height="15%" Width="10%" />
            </asp:Panel>
 
     <table style ="width:100%; height: 273px;">
                <colgroup>
                    <col width="" />
                    <col width="110" />
                    <col width="100" />
                    <col width="95" />
                    <col width="85" />
                </colgroup>
                
                	<tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
         <tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
         <tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
         <tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
         <tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
         <tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
               <tr class="taskItem">
                    	<td><div class="taskName">悬赏榜</a>&nbsp;
                        
                
                        </div></td>
                        <td><div class="taskPrice">1</div></td>
                        <td><div class="taskAbout">2</div></td>
                        <td><div class="taskEndTime">3</div></td>
                        <td><div class="taskSubmit"><a href="http://task.huitu.com/detail/8052/" class="contributing" target="_blank">预定</a></div></td>
                    </tr>
         </table>
          <asp:Panel ID="Panel1" CssClass="clear" runat="server"></asp:Panel>
        <asp:Panel ID="Panel25" runat="server">
            <asp:Panel ID="paging" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label25" runat="server" ><a>1</a></asp:Label>
                <asp:Label ID="Label26" runat="server" ><a>2</a></asp:Label>
                <asp:Label ID="Label27" runat="server" ><a>3</a></asp:Label>
                <asp:Label ID="Label28" runat="server" ><a>...</a></asp:Label>
                <asp:Label ID="Label29" runat="server" ><a>6</a></asp:Label>
                <asp:Label ID="Label30" runat="server" ><a>下一页</a></asp:Label>
            </asp:Panel>
        </asp:Panel>

    </div>
    </form>
</body>
</html>
