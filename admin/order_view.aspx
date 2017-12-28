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
            width: 86%;
        }
        .style2
        {
            color: #FFFFFF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <table class="style1">
                        <tr>
                            <td class="style2" style="background-color: #FF0066">
                                預約資料查詢<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
                                    DeleteCommand="DELETE FROM [reservation] WHERE [rid] = @rid" 
                                    InsertCommand="INSERT INTO [reservation] ([rname], [rphone], [rdate], [rtime], [rtext]) VALUES (@rname, @rphone, @rdate, @rtime, @rtext)" 
                                    SelectCommand="SELECT * FROM [reservation] where radd is null ORDER BY [rdate], [rtime]" 
                                    UpdateCommand="UPDATE [reservation] SET [rname] = @rname, [rphone] = @rphone, [rdate] = @rdate, [rtime] = @rtime, [rtext] = @rtext WHERE [rid] = @rid">
                                    <DeleteParameters>
                                        <asp:Parameter Name="rid" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="rname" Type="String" />
                                        <asp:Parameter Name="rphone" Type="String" />
                                        <asp:Parameter Name="rdate" Type="String" />
                                        <asp:Parameter Name="rtime" Type="String" />
                                        <asp:Parameter Name="rtext" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="rname" Type="String" />
                                        <asp:Parameter Name="rphone" Type="String" />
                                        <asp:Parameter Name="rdate" Type="String" />
                                        <asp:Parameter Name="rtime" Type="String" />
                                        <asp:Parameter Name="rtext" Type="String" />
                                        <asp:Parameter Name="rid" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="rid" 
        DataSourceID="SqlDataSource1" Width="543px">
        <Columns>
            <asp:BoundField DataField="rname" HeaderText="預約人" SortExpression="rname" />
            <asp:BoundField DataField="rphone" HeaderText="預約人電話" SortExpression="rphone" />
            <asp:BoundField DataField="rdate" HeaderText="預約日期" SortExpression="rdate" />
            <asp:BoundField DataField="rtime" HeaderText="預約時間" SortExpression="rtime" />
            <asp:BoundField DataField="rtext" HeaderText="預約內容" SortExpression="rtext" />
            <asp:CommandField DeleteText="Del" EditText="Edit" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
