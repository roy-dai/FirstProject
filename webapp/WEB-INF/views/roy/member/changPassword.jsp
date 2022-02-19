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
<link href="<c:url value='/front/css/bootstrap.css'/>" type="text/css" rel="stylesheet" media="all">
<link href="<c:url value='/front/css/style.css'/>" type="text/css" rel="stylesheet" media="all">  
<link href="<c:url value='/front/css/font-awesome.css'/>" rel="stylesheet"> <!-- font-awesome icons --> 
<!-- //Custom Theme files --> 
<!-- js -->
<script src="<c:url value='/front/js/jquery-2.2.3.min.js'/>"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
<!-- //web-fonts -->
<style>
 #btnn{
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
							<h1><a href="<c:url value='/'/>">夜總會<span>最棒的夜市平台</span></a></h1>
						</div> 
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="index.html"></a></li>	
								<!-- Mega Menu -->
								<li class="dropdown">
<!-- 									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a> -->
									<ul class="dropdown-menu multi-column columns-3">
<!-- 										<div class="row"> -->
<!-- 											<div class="col-sm-4"> -->
<!-- 												<ul class="multi-column-dropdown"> -->
<!-- 													<h6></h6>   -->
<!-- 													<li><a href="menu.html">Breakfast</a></li>  -->
<!-- 													<li><a href="menu.html">Lunch</a></li>  -->
<!-- 													<li><a href="menu.html">Dinner</a></li>  -->
<!-- 												</ul> -->
<!-- 											</div> -->
<!-- 											<div class="col-sm-4"> -->
<!-- 												<ul class="multi-column-dropdown"> -->
<!-- 													<h6></h6>  -->
<!-- 													<li><a href="menu.html">Indian Recipes</a></li>  -->
<!-- 													<li><a href="menu.html">American Recipes</a></li>  -->
<!-- 													<li><a href="menu.html">French Recipes</a></li>  -->
<!-- 													<li><a href="menu.html">Italian Recipes</a></li>  -->
<!-- 												</ul> -->
<!-- 											</div> -->
<!-- 											<div class="col-sm-4"> -->
<!-- 												<ul class="multi-column-dropdown"> -->
<!-- 													<h6></h6>  -->
<!-- 													<li><a href="menu.html">Diet</a></li>  -->
<!-- 													<li><a href="menu.html">Mini</a></li>  -->
<!-- 													<li><a href="menu.html">Regular</a></li>  -->
<!-- 													<li><a href="menu.html">Special</a></li>  -->
<!-- 												</ul> -->
<!-- 											</div>  -->
<!-- 											<div class="clearfix"></div> -->
<!-- 										</div> -->
									</ul>
								</li>
<!-- 								<li><a href="about.html"></a></li>  -->
<!-- 								<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a> -->
<!-- 									<ul class="dropdown-menu"> -->
<!-- 										<li><a href="icons.html">Web Icons</a></li> -->
<!-- 										<li><a href="codes.html">Short Codes</a></li>      -->
<!-- 									</ul> -->
<!-- 								</li>   -->
<!-- 								<li><a href="contact.html"></a></li> -->
							</ul>
						</div>
<!-- 						<div class="cart cart box_1">  -->
<!-- 							<form action="#" method="post" class="last">  -->
<!-- 								<input type="hidden" name="cmd" value="_cart" /> -->
<!-- 								<input type="hidden" name="display" value="1" /> -->
<!-- 								<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button> -->
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
				Yeah!NightMarket! <br> <span>夜市夜總匯</span></h2>  
			</div>
		</div>
	</div>
	<!-- //banner -->    
	<!-- breadcrumb -->  
	<div class="container">	
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="<c:url value='/'/>"><i class="fa fa-home"></i>首頁</a></li> 
			<li class="active">忘記密碼修改</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- login-page -->
	<div class="login-page about">
<%-- 		<img class="login-w3img" src="<c:url value='/front/images/img3.jpg'/>" alt=""> --%>
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">變更密碼</h3>  
			<div class="login-agileinfo"> 
				<form action="<c:url value='/changPassword'/>" method="post" onsubmit="return checkpwd()"> 
					<input type="hidden" name="mail" value="${mail}"/>
					<input type="hidden" name="token" value="${token}"/>
					<input type="hidden" name="lastTime" value="${lastTime}"/>
					<input class="agile-ltext" type="password" id="pwd1" placeholder="請輸入新密碼" required>
					<input class="agile-ltext" type="password" id="pwd2" name="password" placeholder="請再輸入一次新密碼" required><span style="color:red" id="error"></span>
					<div class="wthreelogin-text"> 
						<p style="color: red;">${fail}&nbsp;</p>
						<div class="clearfix"> </div>
					</div>   
					<input type="submit" value="送出">
					<input type="button" value="一鍵輸入" onclick="autopwd()" id="btnn">
				</form>
			</div>	 
		</div>
	</div>
	<script>
	function autopwd(){
		document.getElementById("pwd1").value="royroyroy";
		document.getElementById("pwd2").value="royroyroy";
	}	
	</script>
	
	
	<script>
	function checkpwd(){
	var pwd1 = document.getElementById('pwd1').value;
	var pwd2 = document.getElementById('pwd2').value;
	var error = document.getElementById('error');
	if(pwd1!=pwd2){
		error.innerHTML = "密碼輸入不一致";
		return false;
		}else{
		error.innerHTML = "";
		return true;
			
		}		
	}
	
	
	
	</script>
	<!-- //login-page -->  
	<!-- subscribe -->
<!-- 	<div class="subscribe agileits-w3layouts">  -->
<!-- 		<div class="container"> -->
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
<!-- <!-- 				<form action="#" method="post">  --> -->
<!-- <!-- 					<input type="email" name="email" placeholder="Enter your Email..." required=""> --> -->
<!-- <!-- 					<input type="submit" value="Subscribe"> --> -->
<!-- <!-- 					<div class="clearfix"> </div>  --> -->
<!-- <!-- 				</form>   --> -->
<%-- <%-- 				<img src="<c:url value='/front/images/i1.png'/>" class="sub-w3lsimg" alt=""/> --%> --%>
<!-- 			</div> -->
<!-- 			<div class="clearfix"> </div>  -->
<!-- 		</div> -->
<!-- 	</div> -->
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
						<li><a href="menu.html">主食類</a></li>
						<li><a href="menu.html">燒烤類</a></li>
						<li><a href="menu.html">炸食類</a></li>
						<li><a href="menu.html">冰品類</a></li>
						<li><a href="menu.html">甜點類</a></li>
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
	<script src="<c:url value='/front/js/minicart.js'/>"></script>
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
	<script src="<c:url value='/front/js/SmoothScroll.min.js'/>"></script>  
	<script type="text/javascript" src="<c:url value='/front/js/move-top.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/front/js/easing.js'/>"></script>	
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
    <script src="<c:url value='/front/js/bootstrap.js'/>"></script>
</body>
</html>