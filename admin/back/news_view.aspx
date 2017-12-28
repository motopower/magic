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
            width: 76%;
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
                <td style="text-align: center">
                    <table class="style1">
                        <tr>
                            <td class="style2" style="background-color: #CC6600">
                                消息模組管理</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [news] WHERE [nid] = @nid" 
        InsertCommand="INSERT INTO [news] ([ntype], [ntitle], [ntext], [ndate]) VALUES (@ntype, @ntitle, @ntext, @ndate)" 
        SelectCommand="SELECT * FROM [news] ORDER BY [nid] DESC" 
        UpdateCommand="UPDATE [news] SET [ntype] = @ntype, [ntitle] = @ntitle, [ntext] = @ntext, [ndate] = @ndate WHERE [nid] = @nid">
        <DeleteParameters>
            <asp:Parameter Name="nid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ntype" Type="String" />
            <asp:Parameter Name="ntitle" Type="String" />
            <asp:Parameter Name="ntext" Type="String" />
            <asp:Parameter Name="ndate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ntype" Type="String" />
            <asp:Parameter Name="ntitle" Type="String" />
            <asp:Parameter Name="ntext" Type="String" />
            <asp:Parameter Name="ndate" Type="String" />
            <asp:Parameter Name="nid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="nid" 
        DataSourceID="SqlDataSource1" Width="475px">
        <Columns>
            <asp:BoundField DataField="ndate" HeaderText="發佈日期" SortExpression="ndate" />
            <asp:BoundField DataField="ntype" HeaderText="類別" SortExpression="ntype" />
            <asp:BoundField DataField="ntitle" HeaderText="標題" SortExpression="ntitle" />
            <asp:BoundField DataField="ntext" HeaderText="內容" SortExpression="ntext" />
            <asp:CommandField DeleteText="Del" EditText="Edit" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
