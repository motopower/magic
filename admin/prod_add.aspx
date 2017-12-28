<%@ Page Language="C#" %>
      <% @Import Namespace="System.Data" %>
 <% @Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
//-----------------------------------------
        if (pp.HasFile)
        {
            string path = Page.Server.MapPath("upload");

            pp.SaveAs(path + "\\" + pp.FileName);

        }
        else
        {

        }
    
//-----------------------------------------
        

 //SqlConnection conn = new SqlConnection("server=.\\SQLEXPRESS;AttachDbFilename=C:\\inetpub\\wwwroot\\motorbike\\App_Data\\motorbike.mdf;;Integrated Security=True;Connect Timeout=30;User Instance=True");
 SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=E:\\c#\\work\\20171013\\MOTO\\App_Data\\motorbike.mdf;Initial Catalog=motorbike;Integrated Security=True");
 conn.Open();
 string strsql;
 strsql = "insert into prod(pphoto,pname,ptype,ptext,pprice) values('" + pp.FileName + "','" + nn.Text + "','" + item.Text + "','" + tt.Text + "','" + cc.Text + "')  ";
           System.Data.SqlClient.SqlCommand objcmd = new System.Data.SqlClient.SqlCommand(strsql, conn);
          objcmd.ExecuteNonQuery();
           conn.Close();
           Response.Redirect("prod_add2.aspx");
    }
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
        .style3
        {
            width: 122px;
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
                            <td class="style2" style="background-color: #003300; text-align: left;">
                                產品模組新增</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                名稱</td>
            <td class="style3">
                <asp:TextBox ID="nn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                類別</td>
            <td class="style3">
                <asp:DropDownList ID="item" runat="server">
                    <asp:ListItem>機車型號</asp:ListItem>
                    <asp:ListItem>機車周邊</asp:ListItem>
                    <asp:ListItem Selected="True">二手車專區</asp:ListItem>
                  
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                說明</td>
            <td class="style3">
                <asp:TextBox ID="tt" runat="server" Height="95px" TextMode="MultiLine" 
                    Width="245px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                價格</td>
            <td class="style3">
                <asp:TextBox ID="cc" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                圖片</td>
            <td class="style3">
                <asp:FileUpload ID="pp" runat="server" />
            </td>
        </tr>
       
    </table>
    <p>
        <asp:Button ID="Button1" runat="server" Text="新增" onclick="Button1_Click" />
    </p>
    </form>
</body>
</html>
