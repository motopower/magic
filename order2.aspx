<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ Page Language="C#" %>
 <% @Import Namespace="System.Data" %>
 <% @Import Namespace="System.Data.SqlClient" %>  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        Response.Redirect("order2_ok.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  
<title>摩煥力輛</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/blue.css" rel="stylesheet" type="text/css" media="all" />
<!----font-Awesome----->
   	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/menu.js" type="text/javascript"></script>
</head>
<body>
 <form id="form1" runat="server">
<div class="header_bg">
<div class="container">
	<div class="header">
		<div class="logo">
			<a href="index.aspx"><img src="images/logo.png" alt=""/></a>
		</div>
		<div class="h_menu">
		<a id="touch-menu" class="mobile-menu" href="#">Menu</a>
		<nav>
		 
			<ul class="menu list-unstyled">
			<li ><a href="index.aspx">回首頁</a></li>
			
			<li><a href="#">產品</a>
			<ul class="sub-menu list-unstyled">
				<li><a href="prod.aspx?type=機車型號">機車型號</a></li>
                <li><a href="prod.aspx?type=二手車專區">二手車專區</a></li>	 
				<li><a href="prod.aspx?type=機車周邊">機車周邊</a></li>
                <li><a href="prod2.aspx">CC數查詢</a></li>
			</ul>			
			</li>
			
			<li class="activate"><a href="#">服務</a>
			<ul class="sub-menu list-unstyled">
				<li><a href="order.aspx">預約服務</a></li>
				<li><a href="order2.aspx">報廢車申請</a></li>
				</ul>			
			</li>
		 
			<li><a href="#">活動消息</a>
			<ul class="sub-menu list-unstyled">
				<li><a href="news.aspx?type=最新消息">最新消息</a></li>
				 <li><a href="news.aspx?type=優惠訊息">優惠訊息</a></li>
				 <li><a href="news.aspx?type=活動消息">活動消息</a></li>
				</ul>			
			</li>
	
			<li><a href="maintenance.aspx">保養資訊</a></li>
			<li><a href="store.aspx">商家介紹</a></li>
			
			<li><a href="url.aspx">相關連結</a></li>
			 
		</ul>
		</nav>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="main_bg"><!-- start main -->
<div class="container">
	<div class="main_grid1">
		<h3 class="style pull-left">服務</h3>
		<ol class="breadcrumb pull-right">
		  <li><a href="index.aspx">回首頁</a></li>
		  <li class="active">服務</li>
		</ol>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="main_btm1"><!-- start main_btm -->
<div class="container">
	<div class="blog"><!-- start blog -->
			<div class="blog_main col-md-9">
				<div class="blog_list">
					<div class="col-md-2 blog_date">
						<span class="date">報廢車申請
						<p><p></p></span>
					
					</div>
					<div class="col-md-10 blog_left">
						<!--<a href="single-page.aspx"><img src="jpg/order2.jpg" alt="" width="600" height="285" class="img-responsive"/></a>-->
						<h4>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString_motorbike %>" 
                                DeleteCommand="DELETE FROM [reservation] WHERE [rid] = @rid" 
                                InsertCommand="INSERT INTO [reservation] ([rname], [rphone], [rdate], [rtime], [rtext], [radd]) VALUES (@rname, @rphone, @rdate, @rtime, @rtext, @radd)" 
                                SelectCommand="SELECT * FROM [reservation]" 
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
                            

                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                DataKeyNames="rid" DataSourceID="SqlDataSource1" Height="50px" 
                                Width="572px" DefaultMode="Insert" 
                                oniteminserted="DetailsView1_ItemInserted">
                                <Fields>
                                    <asp:TemplateField HeaderText="日期" SortExpression="rdate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("rdate") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                                BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                                ForeColor="Black" Height="153px" NextPrevFormat="FullMonth" 
                                                SelectedDate='<%# Bind("rdate") %>' Width="296px">
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                                    VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                                    Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                <TodayDayStyle BackColor="#CCCCCC" />
                                            </asp:Calendar>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                            </asp:DropDownList>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("rdate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="時間" SortExpression="rtime">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("rtime") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                                SelectedValue='<%# Bind("rtime") %>'>
                                             <asp:ListItem>9:00</asp:ListItem>
                                                <asp:ListItem>10:00</asp:ListItem>
                                                <asp:ListItem>11:00</asp:ListItem>
                                                <asp:ListItem>12:00</asp:ListItem>
                                                <asp:ListItem>13:00</asp:ListItem>
                                                <asp:ListItem>14:00</asp:ListItem>
                                                <asp:ListItem>15:00</asp:ListItem>
                                                <asp:ListItem>16:00</asp:ListItem>
                                                <asp:ListItem>17:00</asp:ListItem>
                                                <asp:ListItem>18:00</asp:ListItem>
                                                <asp:ListItem>19:00</asp:ListItem>
                                                <asp:ListItem>20:00</asp:ListItem>
                                                <asp:ListItem>21:00</asp:ListItem>
                                            </asp:DropDownList>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("rtime") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="rname" HeaderText="姓名" SortExpression="rname" />
                                    <asp:BoundField DataField="rphone" HeaderText="電話" 
                                        SortExpression="rphone" />
                                    <asp:TemplateField HeaderText="地址" SortExpression="radd">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("radd") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("radd") %>' 
                                                Width="503px"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("radd") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="內容" SortExpression="rtext">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rtext") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Height="102px" 
                                                Text='<%# Bind("rtext") %>' TextMode="MultiLine" Width="511px"></asp:TextBox>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("rtext") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowInsertButton="True" InsertText="預約" />
                                </Fields>
                            </asp:DetailsView>


                            </h4>
					 			
				  </div>
					<div class="clearfix"></div>
				</div>
				<div class="blog_list">
				  <div class="clearfix"></div>
			  </div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 blog_right">
				<h4>機車官網</h4>
				<ul class="ads_nav list-unstyled">
					<li><a href="http://www.kymco.com.tw/" target="_blank"><img src="images/a.jpg" alt=""> </a></li>
					<li><a href="http://www.sym.com.tw" target="_blank"><img src="images/b.jpg" alt=""> </a></li>
					<li><a href="http://www.aeonmotor.com.tw/home.php" target="_blank"><img src="images/c.jpg" alt=""> </a></li>
					<li><a href="https://www.yamaha-motor.com.tw/" target="_blank"><img src="images/d.jpg" alt=""> </a></li>
					<li><a href="http://www.suzukimotor.com.tw/" target="_blank"><img src="images/e.jpg" alt=""> </a></li>
					 
					<div class="clearfix"></div>
				</ul>
				 
				 
			</div>
			<div class="clearfix"></div>
	</div><!-- end blog -->
</div>
</div>
<div class="footer_bg"><!-- start footer -->
<div class="container">
	<div class="footer">
		<div class="col-md-4 footer1_of_3">
			<div class="f_logo">
				<a href="index.aspx"><img src="images/logo.png" alt=""/></a>
			</div>		
			<p class="f_para">在台灣社會裡，機車是大部分人的第一部交通工具，但很少有人清楚了解各式機車的優缺點，進而找到適合自身需求的產品，而機車廠商也缺乏管道向需求者推銷，因此，有了摩煥力輛一個實用的機車網站，幫助需求者找到完美的第一輛車，也幫助廠商增加客源。</p>
			<p>Phone:&nbsp;<span>(02)2985-6612</span></p>
			<span class="">Email:&nbsp;motorbike@gmail.com</span>
		</div>
		<div class="col-md-2 footer1_of_3">
			<h4>機車官網</h4>
			<ul class="list-unstyled f_list">
				<li><a href="http://www.kymco.com.tw/" target="_blank">KYMCO 光陽機車</a></li>
				<li><a href="http://www.sym.com.tw" target="_blank">SYM 三陽機車</a></li>
				<li><a href="http://www.aeonmotor.com.tw/home.php" target="_blank">Aeon 宏佳騰機車</a></li>
				<li><a href="https://www.yamaha-motor.com.tw/" target="_blank">YAMAHA 台灣山葉機車</a></li>
				<li><a href="http://www.suzukimotor.com.tw/" target="_blank">SUZUKI 台鈴機車</a></li>
		 
				 
			</ul>
		</div>
		 
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="footer1_bg"><!-- start footer1 -->
<div class="container">
	<div class="footer1">
		<div class="copy pull-left">
			<p class="link"><span>&#169; &nbsp;W3</span></p>
		</div>
		<div class="soc_icons pull-right">
			<ul class="list-unstyled text-center">
				<li><a href="https://www.facebook.com/%E5%8B%9D%E9%B4%BB%E8%BB%8A%E6%A5%AD-Sheng-Hong-1072501959455178/" target="_blank"><i class="fa fa-facebook"></i></a></li>
			
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
 </form>
</body>
</html>