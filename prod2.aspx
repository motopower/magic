﻿<%@ Page Language="C#" %>
 <% @Import Namespace="System.Data" %>
 <% @Import Namespace="System.Data.SqlClient" %> 

<!DOCTYPE HTML>
<html>
<head>
<title>摩煥力輛</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/blue.css" rel="stylesheet" type="text/css" media="all" />
<!----font-Awesome----->
   	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/menu.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/fliplightbox.min.js"></script>
		<script type="text/javascript">
		    $('body').flipLightBox()
		</script>
		<script type="text/javascript" src="js/jquery.easing.min.js"></script>
		<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
		<script type="text/javascript">
		    $(function () {

		        var filterList = {

		            init: function () {

		                // MixItUp plugin
		                // http://mixitup.io
		                $('#portfoliolist').mixitup({
		                    targetSelector: '.portfolio',
		                    filterSelector: '.filter',
		                    effects: ['fade'],
		                    easing: 'snap',
		                    // call the hover effect
		                    onMixEnd: filterList.hoverEffect()
		                });

		            },

		            hoverEffect: function () {

		                // Simple parallax effect
		                $('#portfoliolist .portfolio').hover(function () {
		                    $(this).find('.label').stop().animate({
		                        bottom: 0
		                    }, 200, 'easeOutQuad');
		                    $(this).find('img').stop().animate({
		                        top: -30
		                    }, 500, 'easeOutQuad');
		                }, function () {
		                    $(this).find('.label').stop().animate({
		                        bottom: -40
		                    }, 200, 'easeInQuad');
		                    $(this).find('img').stop().animate({
		                        top: 0
		                    }, 300, 'easeOutQuad');
		                });

		            }
		        };
                 
                                  
		        // Run the show!
		        filterList.init();

		    });
		</script>

<!-- start light_box -->
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen" />
<!--
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
-->
<script type="text/javascript" src="js/jquery.fancybox-1.2.1.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("div.fancyDemo a").fancybox();
	    });
	</script>

    	<script type="text/javascript">
    	    $(document).ready(function () {
    	        $("div.label a").fancybox();
    	    });
	</script>

</head>
<body>
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
		<h3 class="style pull-left">C.C數查詢</h3>
		<ol class="breadcrumb pull-right">
		  <li><a href="index.aspx">首頁</a></li>
		  <li class="active">c.c數查詢</li>
		</ol>
		<div class="clearfix"></div>
	</div>
</div>

</div>
<div class="main_btm1"><!-- start main_btm -->
<div class="container">
    <div class="portfolio_main">

        <ul id="filters" class="clearfix">
            <li>
                <span class="filter active" data-filter="125c 150c 155c 155up">全部</span>
            </li>
            <li>
                <span class="filter" data-filter="125c">125c.c</span>
            </li>
            <li>
                <span class="filter" data-filter="150c">150c.c</span>
            </li>
            <li>
                <span class="filter" data-filter="155c">155c.c</span>
            </li>
            <li>
                <span class="filter" data-filter="155up">155c.c 以上</span>
            </li>
        </ul>

        <div id="portfoliolist">
            <div class="portfolio 150c" data-cat="150c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m1.jpg">
                            <img src="images/m1.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m1-SR30GE.JPG">SR30GE</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>

            <div class="portfolio 150c" data-cat="150c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m2.jpg">
                            <img src="images/m2.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m2-SR30GD.JPG">SR30GD</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>

            <div class="portfolio 155c" data-cat="155c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m3.jpg">
                            <img src="images/m3.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m3-FORCE.JPG">FORCE</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>

            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m4.jpg">
                            <img src="images/m4.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m4-Jog Sweet.JPG">Jog Sweet</a></span>
                            <!--<span class="text-category"><a href="http://www.google.com">Jog Sweet</a></span>-->
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>

            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m5.jpg">
                            <img src="images/m5.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m5-Ray.JPG">Ray</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m6.jpg">
                            <img src="images/m6.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m6-Z1 attila.JPG">Z1 attila</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 155c" data-cat="155c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m7.jpg">
                            <img src="images/m7.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m7-SMAX.JPG">SMAX</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m8.jpg">
                            <img src="images/m8.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m8-CUXi.JPG">CUXi</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m9.jpg">
                            <img src="images/m9.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m9-BWSR.JPG">BWSR</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m10.jpg">
                            <img src="images/m10.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m10-GTR aero.JPG">GTR aero</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 125c" data-cat="125c">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m11.jpg">
                            <img src="images/m11.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m11-JET S.JPG">JET S</a></span>
                            <span class="text-category"><a rel="group" title="" href="images/m11-JET S-2.JPG"></a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
            <div class="portfolio 155up" data-cat="155up">
                <div class="portfolio-wrapper">
                    <div class="fancyDemo">
                        <a rel="group" title="" href="images/m12.jpg">
                            <img src="images/m12.jpg" alt="" class="img-responsive" /></a>
                    </div>
                    <div class="label">
                        <div class="label-text">
                            <span class="text-category"><a rel="group" title="" href="images/m12-SR30JD.JPG">SR30JD</a></span>
                        </div>
                        <div class="label-bg"></div>
                    </div>
                </div>
            </div>
        </div>


        <div class="clearfix"></div>
    </div>
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
</body>
</html>