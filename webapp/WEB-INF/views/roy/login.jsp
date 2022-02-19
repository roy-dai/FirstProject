<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>YA!夜總匯</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="<c:url value='../front/css/bootstrap.css'/>" type="text/css" rel="stylesheet" media="all">
<link href="<c:url value='../front/css/style.css'/>" type="text/css" rel="stylesheet" media="all">  
<link href="<c:url value='../front/css/font-awesome.css'/>" rel="stylesheet"> <!-- font-awesome icons --> 
<!-- //Custom Theme files --> 
<!-- js -->
<script src="<c:url value='../front/js/jquery-2.2.3.min.js'/>"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
<style>
 .btnn{
 outline: none;
    color: #fff;
    padding: .8em 4em;
    font-size: 1em; 
    -webkit-appearance: none;
    background: #fd463e;
	border: solid 1px #fd463e;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -o-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
	font-family: 'Yantramanav', sans-serif;	
}
</style>


</head>
<body> 
	<!-- banner -->
	<div class="banner about-w3bnr">
		<!-- header -->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
					<div class="w3ls-header-left">
					</div>
					<div class="w3ls-header-right">
						<ul> 
							<li class="head-dpdn">
							</li> 
							<li class="head-dpdn">
<!-- 								<a href="login.html"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a> -->
							</li> 
							<li class="head-dpdn">
								<a href="<c:url value='/r_singup'/>"><i class="fa fa-user-plus" aria-hidden="true"></i> 註冊</a>
							</li> 
							<li class="head-dpdn">
<!-- 								<a href="offers.html"><i class="fa fa-gift" aria-hidden="true"></i> 目前沒用到</a> -->
							</li> 
							<li class="head-dpdn">
<!-- 								<a href="help.html"><i class="fa fa-question-circle" aria-hidden="true"></i> 幫助</a> -->
							</li>
						</ul>
					</div>
					<div class="clearfix"> </div> 
				</div>
			</div>
			<!-- //header-one -->    
			<!-- navigation -->
			<div class="navigation agiletop-nav">
				<div class="container">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header w3l_logo">
							<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>  
							<h1><a href="<c:url value='/'/>">夜總匯<span>最方便的夜市平台</span></a></h1>
						</div> 
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav navbar-right">
								<!-- <li><a href="index.html" class="active">Home</a></li>	 -->
								<!-- Mega Menu -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">逛夜市 <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="row">
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>地圖查詢</h6> 
													<li><a href="mapDesign">看地圖</a></li> 
												</ul>
											</div>
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>店家查詢</h6> 
													<li><a href="<c:url value='/AllVendor'/>">所有店家</a></li> 
												</ul>
											</div> 
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>類別查詢</h6>  
													<li><a href="<c:url value='CCC_BB/#mark-1"'/>">主食類</a></li> 
													<li><a href="<c:url value='CCC_BB/#mark-2"'/>">燒烤類</a></li> 
													<li><a href="<c:url value='CCC_BB/#mark-3"'/>">炸食類</a></li> 
													<li><a href="<c:url value='CCC_BB/#mark-4"'/>">冰品類</a></li> 
													<li><a href="<c:url value='CCC_BB/#mark-5"'/>">甜點類</a></li> 

												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul>
								</li>
								<li><a href="<c:url value='WANG"'/>">表演節目</a></li>
								 
								<!--  li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">活動 <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="codes.html">Short Codes</a></li>     
									</ul>
								</li-->  
								<li><a href="<c:url value='/PETER'/>">加入夜市</a></li>
								<li><a href="<c:url value='/queryStoreJudge'/>">討論區</a></li>
								<li><a href="<c:url value='/MIKE'/>"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>購物車</a></li>
								<li class="w3pages">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="display:none" id="showName"><i class="fa fa-user"></i>${member_name} <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="<c:url value='/r_afterLogin/'/>">個人資料</a></li>
										<li id="adminLi"><a href="<c:url value='/BackStage'/>">管理員介面</a></li>
										<li id="vendorLi"><a href="<c:url value='/BackForVendor'/>">我的攤販</a></li>
										<li id="orderli"><a href="<c:url value='/MyOrder'/>">我的訂單</a></li>
										<li><a href="http://localhost:8080">線上客服</a></li>
										<li><a href="#">活動紀錄</a></li>
										<li><a href="<c:url value='/Logout'/>">登出</a></li>     
									</ul>
								</li>  
							</ul>
						</div>
<!-- 						<div class="cart cart box_1">  -->
<!-- 							<form action="#" method="post" class="last">  -->
<!-- 								<input type="hidden" name="cmd" value="_cart" /> -->
<!-- 								<input type="hidden" name="display" value="1" /> -->
<!-- 								<button class="w3view-cart" type="submit" name="submit" value=""></button> -->
<!-- 							</form>    -->
<!-- 						</div>  -->
					</nav>
				</div>
			</div>
			<!-- //navigation --> 
		</div>
		<!-- //header-end --> 
		<!-- banner-text -->
		<div class="banner-text">	
			<div class="container">
				<h2>
				Yeah!NightMarket! <br> <span>夜市夜總匯</span>
				</h2> 
			</div>
		</div>
	</div>
	<!-- //banner -->    
	<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="<c:url value='/'/>"><i class="fa fa-home"></i> 首頁</a></li> 
			<li class="active">登入</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- login-page -->
	<div class="login-page about">
<%-- 		<img class="login-w3img" src="<c:url value='../front/images/img3.jpg'/>" alt=""> --%>
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">登入夜總會</h3>  
			<div class="login-agileinfo"> 
				<form action="<c:url value='/R_login'/>" method="post"> 
					<input class="agile-ltext" type="text" name="userid" placeholder="輸入帳號" required id="userid">
					<input class="agile-ltext" type="password" name="password" placeholder="輸入密碼" required id="password">
					<div class="wthreelogin-text"> 
						<p style="color: red;">${fail}&nbsp;</p>
						<ul> 
							<li>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> 
									<span>記住我</span> 
								</label> 
							</li>
							<li><a href="<c:url value='/forgetPwd'/>">忘記密碼?</a> </li>
						</ul>
						<div class="clearfix"> </div>
					</div>   
					<input type="submit" value="登入">
					<div>
					<input type="button" value="一般會員" onclick='AutoMember()' class="btnn">
					<input type="button" value="管 理 員" onclick='AutoAdmin()' class="btnn">
					</div>
					<div>	&nbsp;	</div>			
					<input type="button" value="攤        販" onclick='AutoVentor()' class="btnn">
					<input type="button" value="會員專用" onclick='AutoRoy()' class="btnn">
					
				</form>
				<p>還沒有帳號嗎? <a href="<c:url value='/r_singup'/>"> 趕快註冊吧!!</a></p> 
			</div>	 
		</div>
	</div>
	<script>
	function AutoMember(){
		document.getElementById("userid").value="B10227035@gmail.com";
		document.getElementById("password").value="royroyroy";
	}
	function AutoAdmin(){
		document.getElementById("userid").value="roy@gmail.com";
		document.getElementById("password").value="royroyroy";
		
	}
	function AutoVentor(){
		document.getElementById("userid").value="sample12@gmail.com";
		document.getElementById("password").value="sample12";
	}
	function AutoRoy(){
		document.getElementById("userid").value="roy2747321@gmail.com";
		document.getElementById("password").value="royroyroy";
		
	}
	
	
	</script>
	<!-- //login-page -->  
	<!-- subscribe -->
	<div class="subscribe agileits-w3layouts"> 
		<div class="container">
<!-- 			<div class="col-md-6 social-icons w3-agile-icons"> -->
<!-- 				<h4>Keep in touch</h4>   -->
<!-- 				<ul> -->
<!-- 					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li> -->
<!-- 					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li> -->
<!-- 					<li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li> -->
<!-- 					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li> -->
<!-- 					<li><a href="#" class="fa fa-rss icon rss"> </a></li>  -->
<!-- 				</ul>  -->
<!-- 				<ul class="apps">  -->
<!-- 					<li><h4>Download Our app : </h4> </li> -->
<!-- 					<li><a href="#" class="fa fa-apple"></a></li> -->
<!-- 					<li><a href="#" class="fa fa-windows"></a></li> -->
<!-- 					<li><a href="#" class="fa fa-android"></a></li> -->
<!-- 				</ul>  -->
<!-- 			</div>  -->
<!-- 			<div class="col-md-6 subscribe-right"> -->
<!-- 				<h3 class="w3ls-title">Subscribe to Our <br><span>Newsletter</span></h3>   -->
<!-- 				<form action="#" method="post">  -->
<!-- 					<input type="email" name="email" placeholder="Enter your Email..." required=""> -->
<!-- 					<input type="submit" value="Subscribe"> -->
<!-- 					<div class="clearfix"> </div>  -->
<!-- 				</form>   -->
<%-- 				<img src="<c:url value='../front/images/i1.png'/>" class="sub-w3lsimg" alt=""/> --%>
<!-- 			</div> -->
			<div class="clearfix"> </div> 
		</div>
	</div>
	<!-- //subscribe --> 
	<!-- footer -->
	<div class="footer agileits-w3layouts">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>company</h3>
					<ul>
						<li><a href="about.html">關於我們</a></li>
						<li><a href="contact.html">聯繫我們</a></li>
						<li><a href="careers.html">工作機會</a></li>
						<li><a href="help.html">與我們合作</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>help</h3>
					<ul>
						<li><a href="faq.html">常問問題</a></li>
						<li><a href="login.html">退貨</a></li>
						<li><a href="login.html">訂單狀態</a></li>
						<li><a href="offers.html">優惠</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>policy info</h3>
					<ul>
						<li><a href="terms.html">條款&條件</a></li>
						<li><a href="privacy.html">隱私政策</a></li>
						<li><a href="login.html">退貨政策</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>Menu</h3>
					<ul>
						<li><a href="<c:url value='CCC_BB'/>">主食類</a></li>
						<li><a href="<c:url value='CCC_BB'/>">燒烤類</a></li>
						<li><a href="<c:url value='CCC_BB'/>">炸食類</a></li>
						<li><a href="<c:url value='CCC_BB'/>">冰品類</a></li>
						<li><a href="<c:url value='CCC_BB'/>">甜點類</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="copyw3-agile">
		<div class="container">
		<p>本網站提供的所有內容均用於資策會成果展示用，非商業用途，如有侵權請連絡告知!</p>
			<p>
				&copy; 2017 Staple Food. All rights reserved | Design by <a
					href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>
	</div>
	<!-- //footer -->
	<!-- cart-js -->
	<script src="<c:url value='../front/js/minicart.js'/>"></script>
	<script>
        w3ls.render();

        w3ls.cart.on('w3sb_checkout', function (evt) {
        	var items, len, i;

        	if (this.subtotal() > 0) {
        		items = this.items();

        		for (i = 0, len = items.length; i < len; i++) { 
        		}
        	}
        });
    </script>  
	<!-- //cart-js -->	
	<!-- start-smooth-scrolling -->
	<script src="<c:url value='../front/js/SmoothScroll.min.js'/>"></script>  
	<script type="text/javascript" src="<c:url value='../front/js/move-top.js'/>"></script>
	<script type="text/javascript" src="<c:url value='../front/js/easing.js'/>"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	  
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value='../front/js/bootstrap.js'/>"></script>
</body>
</html>