<%@ Page Language="C#" %>
 <% @Import Namespace="System.Data" %>
 <% @Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
      //string cs = "server=.\\SQLEXPRESS;AttachDbFilename=C:\\inetpub\\wwwroot\\motorbike\\App_Data\\motorbike.mdf;;Integrated Security=True;Connect Timeout=30;User Instance=True";
        string cs = "Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=E:\\c#\\work\\20171013\\MOTO\\App_Data\\motorbike.mdf;Initial Catalog=motorbike;Integrated Security=True";
        string qs = "select * from [sys] where s_acc= '" + TextBox1 .Text  + "' and s_pass= '" + TextBox2 .Text + "'  ";
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            using (SqlCommand command = new SqlCommand(qs, cn))
            {
                using (SqlDataReader dr = command.ExecuteReader())
                {
                    if (dr.Read() == true)
                    {
                        Session["username"] = dr["s_acc"];
                        Response.Redirect("index.aspx");
                   
                    }
                }
            }
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 59%;
        }
        .style2
        {
            height: 20px;
            width: 472px;
        }
        .style3
        {
            height: 20px;
            width: 368px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
    <div style="text-align: center">
    
        <br />
        後台登入<hr />
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    管理者帳號</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    管理者密碼</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
&nbsp;<asp:Button ID="Button1" runat="server" Text="後台登入" onclick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
