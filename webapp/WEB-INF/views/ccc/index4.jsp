<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />


<!-- Custom Theme files -->
<link href="<c:url value='/css/ccc/index/css/bootstrap.css'/>"
	type="text/css" rel="stylesheet" media="all">
<link href="<c:url value='/css/ccc/index/css/style.css'/>"
	type="text/css" rel="stylesheet" media="all">
<link href="<c:url value='/css/ccc/index/css/font-awesome.css'/>"
	rel="stylesheet">
<!-- font-awesome icons -->
<link rel="stylesheet"
	href="<c:url value='/css/ccc/index/css/owl.carousel.css'/>"
	type="text/css" media="all" />
<!-- Owl-Carousel-CSS -->
<script src="<c:url value='/css/ccc/index/js/jquery-2.2.3.min.js'/>"></script>
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900"
	rel="stylesheet">



<style>
#showLogin{
display: none;
}
#showName{
display: none;
}
#adminLi{
display:none;
}
#vendorLi{
display:none;
}
</style>


<title> YA!夜總匯</title>

</head>
<body>
	<!-- banner -->
	<div class="banner about-w3bnr">
		<!-- header -->
		<div class="header">
			<div class="w3ls-header">
				<!-- header-one -->
				<div class="container">
					<div class="w3ls-header-right">
						<ul>
							<li class="head-dpdn">
								<a href="<c:url value='/member/login'/>" id="showLogin"><i class="fa fa-sign-in" aria-hidden="true"></i>登入</a>
							</li> 
							<li class="head-dpdn" >
								<a id="signUp" href="<c:url value='/r_singup'/>"><i class="fa fa-user-plus" aria-hidden="true"></i> 註冊</a>
							</li> 
							<li class="head-dpdn">
<%-- 								<a href="<c:url value='/test'/>"><i class="fa fa-gift" aria-hidden="true"></i>交通資訊</a> --%>
							</li> 
							<li class="head-dpdn">
<!-- 								<a href="help.html"><i class="fa fa-question-circle" aria-hidden="true"></i> 幫助</a> -->
							</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //header-one -->
			<!-- navigation -->
			<div class="navigation agiletop-nav">
				<div class="container">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header w3l_logo">
							<button type="button"
								class="navbar-toggle collapsed navbar-toggle1"
								data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<h1><a href="<c:url value='/'/>">夜總匯<span>最方便的夜市平台</span></a></h1>
						</div>
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav navbar-right">
								<!-- Mega Menu -->
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">逛夜市 <b class="caret"></b></a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="row">
											<div class="col-sm-4">
												<ul class="multi-column-dropdown">
													<h6>地圖查詢</h6> 
													<li><a href="menu.html">看地圖</a></li> 
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
								<li><a href="<c:url value='/PETER'/>">加入夜市</a></li>
								<li><a href="<c:url value='/queryStoreJudge' />">討論區</a></li>
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
					Yeah!NightMarket! <br> <span>夜市夜總匯</span>
				</h2>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumb -->
	<div class="container">
		<ol class="breadcrumb w3l-crumbs">
			<li><a href="http://localhost:8080/nightMarket3"><i
					class="fa fa-home"></i> 首頁</a></li>
			<li class="active">逛夜市</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- menu list -->
	<div class="wthree-menu">
		<div class="container">
			<%@ page import="java.util.*"%>
			<%
			ArrayList a = new ArrayList((ArrayList) request.getAttribute("商品"));/*編號*/
			int z = a.size();
			%>

		<% for (int v = 0; v < z; v++) {%>
			<!------------------------------------------------------------------------------------------------>
			<div class="w3spl-menu">
				<h3 class="w3ls-title" id=<%="mark-"+(v+1) %>><%=a.get(v)%></h3>
				<p class="w3lsorder-text">Here your Staple Food Varieties</p>
				<div class="menu-agileinfo">
					<%ArrayList c = new ArrayList((ArrayList) request.getAttribute("商品名稱" + a.get(v)));/*編號*/
					  ArrayList d = new ArrayList((ArrayList) request.getAttribute("商品編號" + a.get(v)));/*編號*/
					  int s = c.size();
				 	  for (int u = 0; u < s; u++) {		
					%>
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids">
						<a href="<c:url value='<%="../nightMarket3/CCC_BA/"+d.get(u) %>'/>"> <%=c.get(u)%></a>
					</div>
					<%}%>
					
					<div class="clearfix"></div>
				</div>
			</div>
			<%}	%>

			<!------------------------------------------------------------------------------------------------>
		</div>
	</div>
	<!-- //menu list -->
	<!-- add-products -->
	<div class="add-products">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">Today's Offers</h3>
			<div class="add-products-row">
				<div class="w3ls-add-grids">
					<a href="products.html">
						<h4>
							獲得 <span>10%</span>的<br>
							<span>現金回饋</span>
							
							</span>
						</h4>
						<h5>僅限今日特價</h5>
						<h6>
							現在下單 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-right">
					<a href="products.html">
						<h4>
							獲得高達<span><br>5% 的優惠</span>
						</h4>
						<h5>今天訂購消夜</h5>
						<h6>
							現在下單 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!-- //add-products -->
	<!-- subscribe -->
	<div class="subscribe agileits-w3layouts">
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>Keep in touch</h4>
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus">
					</a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li>
				</ul>
				<ul class="apps">
					<li><h4>Download Our app :</h4></li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul>
			</div>
			<div class="col-md-6 subscribe-right">
				<h3 class="w3ls-title">
					訂閱我們的 <br> <span>活動特價通知</span>
				</h3>
				<form action="#" method="post">
					<input type="email" name="email" placeholder="請輸入您的 Email..."
						required=""> <input type="submit" value="送出">
					<div class="clearfix"></div>
				</form>
			</div>
			<div class="clearfix"></div>
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
	<!-- 	登入用的script -->
	<script>
	var rights = '${member_rights}';
	var showLogin = document.getElementById("showLogin");
	var showName = document.getElementById("showName");
	var adminLi = document.getElementById("adminLi");
	var vendorLi = document.getElementById("vendorLi");
	var signUp = document.getElementById("signUp");
	window.onload = function(){
		if(rights!=null&&rights!=''){
			signUp.style.display='none';
			showName.style.display = 'block';
			if(rights==4){
				adminLi.style.display = 'block';
				vendorLi.style.display = 'none';
			}else if(rights==3){
				adminLi.style.display = 'none';
				vendorLi.style.display = 'block';
			}else if(rights==1){
				adminLi.style.display = 'none';
				vendorLi.style.display = 'none';
			}
		}else{
		showLogin.style.display = 'block';
		showName.style.display = 'none';
		}
		if('${changePwdMsg}'!=''){
			swal("",'${changePwdMsg}',"success")
		}
		if('${loginSuccess}'!=''){
			swal("",'${loginSuccess}',"success");
		}
		if('${changePwdSuccess}'!=''){
			swal("成功",'${changePwdSuccess}',"success");
		}
	}
	</script>
	<div class="copyw3-agile">
		<div class="container">
			<p>
				&copy; 2017 Staple Food. All rights reserved | Design by <a
					href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>
	</div>
	<!-- //footer -->
	<!-- cart-js -->
	<script src="<c:url value='/css/ccc/index/js/minicart.js'/>"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
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
	<!--  script src="<c:url value='/css/ccc/index/js/SmoothScroll.min.js'/>"></script-->
	<script type="text/javascript" 
			src="<c:url value='/css/ccc/index/js/move-top.js'/>"></script>
	<script type="text/javascript" 
			src="<c:url value='/css/ccc/index/js/easing.js'/>"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
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

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<c:url value='/css/ccc/index/js/bootstrap.js'/>"></script>
</body>
</html>