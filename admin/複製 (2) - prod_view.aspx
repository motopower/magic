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
                            <td class="style2" style="background-color: #0033CC">
                                產品模組管理</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [prod] WHERE [pid] = @pid" 
        InsertCommand="INSERT INTO [prod] ([pname], [ptype], [pphoto], [ptext]) VALUES (@pname, @ptype, @pphoto, @ptext)" 
        SelectCommand="SELECT * FROM [prod] ORDER BY [ptype], [pname]" 
        UpdateCommand="UPDATE [prod] SET [pname] = @pname, [ptype] = @ptype, [pphoto] = @pphoto, [ptext] = @ptext WHERE [pid] = @pid">
        <DeleteParameters>
            <asp:Parameter Name="pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="ptype" Type="String" />
            <asp:Parameter Name="pphoto" Type="String" />
            <asp:Parameter Name="ptext" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="ptype" Type="String" />
            <asp:Parameter Name="pphoto" Type="String" />
            <asp:Parameter Name="ptext" Type="String" />
            <asp:Parameter Name="pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pid" 
        DataSourceID="SqlDataSource1" Width="632px">
        <Columns>
            <asp:BoundField DataField="pphoto" HeaderText="產品圖片" SortExpression="pphoto" />
            <asp:BoundField DataField="pname" HeaderText="產品名稱" SortExpression="pname" />
            <asp:BoundField DataField="ptype" HeaderText="產品類別" SortExpression="ptype" />
            <asp:BoundField DataField="ptext" HeaderText="產品說明" SortExpression="ptext" />
            <asp:CommandField DeleteText="Del" EditText="Edit" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
