<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 65%;
        }
        .style2
        {
            color: #FFFFFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
                    <table class="style1">
                        <tr>
                            <td class="style2" style="background-color: #CCCC00; text-align: left;">
                                報廢車預約回收</td>
                        </tr>
                    </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [reservation] WHERE [rid] = @rid" 
        InsertCommand="INSERT INTO [reservation] ([rname], [rphone], [rdate], [rtime], [rtext], [radd]) VALUES (@rname, @rphone, @rdate, @rtime, @rtext, @radd)" 
        SelectCommand="SELECT * FROM [reservation] where radd!='' ORDER BY [rdate]" 
        UpdateCommand="UPDATE [reservation] SET [rname] = @rname, [rphone] = @rphone, [rdate] = @rdate, [rtime] = @rtime, [rtext] = @rtext, [radd] = @radd WHERE [rid] = @rid">
        <DeleteParameters>
            <asp:Parameter Name="rid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="rname" Type="String" />
            <asp:Parameter Name="rphone" Type="String" />
            <asp:Parameter Name="rdate" Type="String" />
            <asp:Parameter Name="rtime" Type="String" />
            <asp:Parameter Name="rtext" Type="String" />
            <asp:Parameter Name="radd" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="rname" Type="String" />
            <asp:Parameter Name="rphone" Type="String" />
            <asp:Parameter Name="rdate" Type="String" />
            <asp:Parameter Name="rtime" Type="String" />
            <asp:Parameter Name="rtext" Type="String" />
            <asp:Parameter Name="radd" Type="String" />
            <asp:Parameter Name="rid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="rid" 
        DataSourceID="SqlDataSource1" Width="576px">
        <Columns>
            <asp:BoundField DataField="rname" HeaderText="姓名" SortExpression="rname" />
            <asp:BoundField DataField="rphone" HeaderText="電話" SortExpression="rphone" />
            <asp:BoundField DataField="rdate" HeaderText="日期" SortExpression="rdate" />
            <asp:BoundField DataField="rtime" HeaderText="時間" SortExpression="rtime" />
            <asp:BoundField DataField="rtext" HeaderText="備註" SortExpression="rtext" />
            <asp:BoundField DataField="radd" HeaderText="地址" SortExpression="radd" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
