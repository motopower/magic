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

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>摩煥力輛</title>
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
    <div>
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
			
			<li><a href="#">服務</a>
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
	
			<li class="activate"><a href="maintenance.aspx">保養資訊</a></li>
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
		<h3 class="style pull-left">保養資訊</h3>
		<ol class="breadcrumb pull-right">
		  <li><a href="index.aspx">回首頁</a></li>
		  <li class="active">保養資訊</li>
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
						<span class="date">保養資訊
						<p><p></p></span>
						 
					</div>
					<div class="col-md-10 blog_left">
						<img src="jpg/Main_Brand_02.jpg" alt="" width="1920" 
                            class="img-responsive"/>
						
                        
                    


   


   		
		      <%
                  //string cs = "server=.\\SQLEXPRESS;AttachDbFilename=C:\\inetpub\\wwwroot\\motorbike\\App_Data\\motorbike.mdf;;Integrated Security=True;Connect Timeout=30;User Instance=True";
                  //string cs = "server=.\\SQLEXPRESS;AttachDbFilename=E:\\c#\\work\\20171013\\motorbike\\App_Data\\motorbike.mdf;;Integrated Security=True;Connect Timeout=30;User Instance=True";
                  string cs = "Data Source=(localdb)\\MSSQLLocalDB;AttachDbFilename=E:\\c#\\work\\20171013\\MOTO\\App_Data\\motorbike.mdf;Initial Catalog=motorbike;Integrated Security=True";
                    string qs = "select * from maintenance";
                    using (SqlConnection cn = new SqlConnection(cs))
                    {
                        cn.Open();
                        using (SqlCommand command = new SqlCommand(qs, cn))
                        {
                            using (SqlDataReader dr = command.ExecuteReader())
                            {
                                while ((dr.Read()))
                                {
                                    %>
                                 <h4><a href="#"><% Response.Write(dr["mtitle"].ToString()); %> </a>
 <% Response.Write(dr["mtext"].ToString()); %>   
						</h4>  <hr />  
<%
                                }
                            }
                        }
                    }   
                     %>






				</div>
				
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
			<p class="link"><span>&nbsp;W3</span></p>
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
    </div>
    </form>
</body>
</html>
