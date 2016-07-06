<%@ Page Language="C#" AutoEventWireup="true" CodeFile="commentmanage.aspx.cs" Inherits="page_yw_commentmanage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../css/yw/commentmanage.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Width="100%">
            <asp:Panel ID="grid" Width="80%" runat="server">
    
        <asp:GridView ID="GridView1" Width="100%" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="no" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="no" HeaderText="no" InsertVisible="False" ReadOnly="True" SortExpression="no" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="person" HeaderText="person" SortExpression="person" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    
    </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:人人书ConnectionString3 %>" DeleteCommand="DELETE FROM [CommentArea] WHERE [no] = @original_no AND [title] = @original_title AND [comment] = @original_comment AND [time] = @original_time AND [person] = @original_person" InsertCommand="INSERT INTO [CommentArea] ([title], [comment], [time], [person]) VALUES (@title, @comment, @time, @person)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CommentArea]" UpdateCommand="UPDATE [CommentArea] SET [title] = @title, [comment] = @comment, [time] = @time, [person] = @person WHERE [no] = @original_no AND [title] = @original_title AND [comment] = @original_comment AND [time] = @original_time AND [person] = @original_person">
            <DeleteParameters>
                <asp:Parameter Name="original_no" Type="Int32" />
                <asp:Parameter Name="original_title" Type="String" />
                <asp:Parameter Name="original_comment" Type="String" />
                <asp:Parameter DbType="Time" Name="original_time" />
                <asp:Parameter Name="original_person" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter DbType="Time" Name="time" />
                <asp:Parameter Name="person" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="comment" Type="String" />
                <asp:Parameter DbType="Time" Name="time" />
                <asp:Parameter Name="person" Type="String" />
                <asp:Parameter Name="original_no" Type="Int32" />
                <asp:Parameter Name="original_title" Type="String" />
                <asp:Parameter Name="original_comment" Type="String" />
                <asp:Parameter DbType="Time" Name="original_time" />
                <asp:Parameter Name="original_person" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>
