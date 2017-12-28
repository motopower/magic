<%@ Page Language="C#" AutoEventWireup="true"  validateRequest="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        GridView1.DataBind();
    }
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
    
        <table class="style1" align="left">
            <tr>
                <td style="text-align: center">
                    <table class="style1">
                        <tr>
                            <td class="style2" style="background-color: #CCCC00; text-align: left;">
                                保養資訊管理</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [maintenance] WHERE [mid] = @mid" 
        InsertCommand="INSERT INTO [maintenance] ([mtitle], [mtext]) VALUES (@mtitle, @mtext)" 
        SelectCommand="SELECT * FROM [maintenance]" 
        UpdateCommand="UPDATE [maintenance] SET [mtitle] = @mtitle, [mtext] = @mtext WHERE [mid] = @mid">
        <DeleteParameters>
            <asp:Parameter Name="mid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mtitle" Type="String" />
            <asp:Parameter Name="mtext" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="mtitle" Type="String" />
            <asp:Parameter Name="mtext" Type="String" />
            <asp:Parameter Name="mid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="mid" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        oniteminserted="FormView1_ItemInserted" Width="448px" 
        style="text-align: left">
        <EditItemTemplate>
            mid:
            <asp:Label ID="midLabel1" runat="server" Text='<%# Eval("mid") %>' />
            <br />
            mtitle:
            <asp:TextBox ID="mtitleTextBox" runat="server" Text='<%# Bind("mtitle") %>' />
            <br />
            mtext:
            <asp:TextBox ID="mtextTextBox" runat="server" Text='<%# Bind("mtext") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            標題:
            <asp:TextBox ID="mtitleTextBox" runat="server" Text='<%# Bind("mtitle") %>' />
            <br />
            網址:
            <asp:TextBox ID="mtextTextBox" runat="server" Height="16px" 
                Text='<%# Bind("mtext") %>' Width="339px" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            mid:
            <asp:Label ID="midLabel" runat="server" Text='<%# Eval("mid") %>' />
            <br />
            mtitle:
            <asp:Label ID="mtitleLabel" runat="server" Text='<%# Bind("mtitle") %>' />
            <br />
            mtext:
            <asp:Label ID="mtextLabel" runat="server" Text='<%# Bind("mtext") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [maintenance] WHERE [mid] = @mid" 
        InsertCommand="INSERT INTO [maintenance] ([mtitle], [mtext]) VALUES (@mtitle, @mtext)" 
        SelectCommand="SELECT * FROM [maintenance] ORDER BY [mid] DESC" 
        UpdateCommand="UPDATE [maintenance] SET [mtitle] = @mtitle, [mtext] = @mtext WHERE [mid] = @mid">
        <DeleteParameters>
            <asp:Parameter Name="mid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mtitle" Type="String" />
            <asp:Parameter Name="mtext" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="mtitle" Type="String" />
            <asp:Parameter Name="mtext" Type="String" />
            <asp:Parameter Name="mid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="mid" 
        DataSourceID="SqlDataSource2" Width="649px" Font-Size="Small">
        <Columns>
            <asp:BoundField DataField="mtitle" HeaderText="標題" SortExpression="mtitle" />
            <asp:BoundField DataField="mtext" HeaderText="網址" SortExpression="mtext" />
            <asp:CommandField DeleteText="Del" EditText="Edit" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
