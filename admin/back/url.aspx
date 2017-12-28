<%@ Page Language="C#" %>

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
    
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <table class="style1">
                        <tr>
                            <td class="style2" style="background-color: #FF66CC">
                                常用連結管理</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="uid" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        oniteminserted="FormView1_ItemInserted" Width="473px">
        <EditItemTemplate>
            uid:
            <asp:Label ID="uidLabel1" runat="server" Text='<%# Eval("uid") %>' />
            <br />
            uname:
            <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            uweburl:
            <asp:TextBox ID="uweburlTextBox" runat="server" Text='<%# Bind("uweburl") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            網站:
            <asp:TextBox ID="unameTextBox" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            網址:
            <asp:TextBox ID="uweburlTextBox" runat="server" Height="16px" 
                Text='<%# Bind("uweburl") %>' Width="362px" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            uid:
            <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
            <br />
            uname:
            <asp:Label ID="unameLabel" runat="server" Text='<%# Bind("uname") %>' />
            <br />
            uweburl:
            <asp:Label ID="uweburlLabel" runat="server" Text='<%# Bind("uweburl") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [url] WHERE [uid] = @uid" 
        InsertCommand="INSERT INTO [url] ([uname], [uweburl]) VALUES (@uname, @uweburl)" 
        SelectCommand="SELECT * FROM [url]" 
        UpdateCommand="UPDATE [url] SET [uname] = @uname, [uweburl] = @uweburl WHERE [uid] = @uid">
        <DeleteParameters>
            <asp:Parameter Name="uid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="uweburl" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="uweburl" Type="String" />
            <asp:Parameter Name="uid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
        DeleteCommand="DELETE FROM [url] WHERE [uid] = @uid" 
        InsertCommand="INSERT INTO [url] ([uname], [uweburl]) VALUES (@uname, @uweburl)" 
        SelectCommand="SELECT * FROM [url] ORDER BY [uname]" 
        UpdateCommand="UPDATE [url] SET [uname] = @uname, [uweburl] = @uweburl WHERE [uid] = @uid">
        <DeleteParameters>
            <asp:Parameter Name="uid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="uweburl" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uname" Type="String" />
            <asp:Parameter Name="uweburl" Type="String" />
            <asp:Parameter Name="uid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="uid" 
        DataSourceID="SqlDataSource2" Width="637px">
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="網站" SortExpression="uname" />
            <asp:BoundField DataField="uweburl" HeaderText="網址" SortExpression="uweburl" />
            <asp:CommandField DeleteText="Del" EditText="Edit" ShowDeleteButton="True" 
                ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
