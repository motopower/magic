<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Response.Redirect("news_view.aspx");
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
                            <td class="style2" style="background-color: #CC6600">
                                消息模組新增</td>
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
        SelectCommand="SELECT * FROM [news]" 
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="nid" 
        DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        oniteminserted="FormView1_ItemInserted">
        <EditItemTemplate>
            nid:
            <asp:Label ID="nidLabel1" runat="server" Text='<%# Eval("nid") %>' />
            <br />
            ntype:
            <asp:TextBox ID="ntypeTextBox" runat="server" Text='<%# Bind("ntype") %>' />
            <br />
            ntitle:
            <asp:TextBox ID="ntitleTextBox" runat="server" Text='<%# Bind("ntitle") %>' />
            <br />
            ntext:
            <asp:TextBox ID="ntextTextBox" runat="server" Text='<%# Bind("ntext") %>' />
            <br />
            ndate:
            <asp:TextBox ID="ndateTextBox" runat="server" Text='<%# Bind("ndate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            消息日期:
            <asp:TextBox ID="ndateTextBox" runat="server" Text='<%# Bind("ndate") %>' />
            <br />
            消息類別:
            <asp:TextBox ID="ntypeTextBox" runat="server" Text='<%# Bind("ntype") %>' />
            <br />
            消息標題:
            <asp:TextBox ID="ntitleTextBox" runat="server" Text='<%# Bind("ntitle") %>' />
            <br />
            消息內文:
            <asp:TextBox ID="ntextTextBox" runat="server" Height="74px" 
                Text='<%# Bind("ntext") %>' TextMode="MultiLine" Width="333px" />
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            nid:
            <asp:Label ID="nidLabel" runat="server" Text='<%# Eval("nid") %>' />
            <br />
            ntype:
            <asp:Label ID="ntypeLabel" runat="server" Text='<%# Bind("ntype") %>' />
            <br />
            ntitle:
            <asp:Label ID="ntitleLabel" runat="server" Text='<%# Bind("ntitle") %>' />
            <br />
            ntext:
            <asp:Label ID="ntextLabel" runat="server" Text='<%# Bind("ntext") %>' />
            <br />
            ndate:
            <asp:Label ID="ndateLabel" runat="server" Text='<%# Bind("ndate") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
