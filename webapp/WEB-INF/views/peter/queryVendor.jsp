<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>YA!夜總匯</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	<!-- Custom Theme files -->
	<link href="<c:url value='/css/ccc/index/css/bootstrap.css'/>" type="text/css" rel="stylesheet" media="all">
	<link href="<c:url value='/css/ccc/index/css/style.css'/>" type="text/css" rel="stylesheet" media="all">
	<link href="<c:url value='/css/ccc/index/css/font-awesome.css'/>" rel="stylesheet">
	<!-- font-awesome icons -->
	<link rel="stylesheet" href="<c:url value='/css/ccc/index/css/owl.carousel.css'/>" type="text/css" media="all" />
	<!-- Owl-Carousel-CSS -->
	<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
	
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
		System.out.println(basePath);
	%>
<style type="text/css">
#BB {
	background: linear-gradient(to right, #abbaab, #ffffff);
}
.directTag0 {
	border-bottom-left-radius: 20px;
	height: 100px;
	width: 35px;
	background-color: blueviolet;
	border-radius: 5px, 5px, 5px, 20px;
	/*             border: 2px solid blue; */
	right: 0px;
	top: 80px;
	position: fixed;
	text-align: center;
	color: #FFFF77;
	font-weight: 900;
	font-size: larger;
}

.directTag1 {
	border-bottom-left-radius: 20px;
	height: 100px;
	width: 35px;
	background-color: #0000FF;
	border-radius: 5px, 5px, 5px, 20px;
	/*             border: 2px solid blue; */
	right: 0px;
	top: 180px;
	position: fixed;
	text-align: center;
	color: #FFFF77;
	font-weight: 900;
	font-size: larger;
}
#Header2 {
	height: 40px;
	margin: auto;
	text-align: center;
	line-height: 10px;
	font-size: 19px;
	color: black;
	background: linear-gradient(to right, #ee9ca7, #ffdde1);
	border: 1px solid black;
}

ul:hover{
 	background-color: #EEFFBB;
}
li{
	ist-style-type: square;
}
.data{
	width:200px;
	height:180px;
	padding:9px;
	margin:5px;
	float:left;
	border:3px Double black;
}
.pos{
	margin-top:20px;
	background-color:yellow;
	text-align:center;
	font-size:large;
	font-weight:800;
	border:3px solid black;
}
.clearfix:after {
  content: "";
  display: block;
  clear: both;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="<c:url value='/jQuery/jquery-3.6.0.min.js' />"
	type="text/javascript"></script>
<script src="<c:url value='/jQuery/toggle.js' />" type="text/javascript"></script>
<script>

let dataArea = null;
let venName = null;
let query = null;
document.addEventListener("DOMContentLoaded", function() {
		venName = document.getElementById("venName");
		posA = document.getElementById("posA");
		posB = document.getElementById("posB");
		posC = document.getElementById("posC");
		posD = document.getElementById("posD");
		posE = document.getElementById("posE");
		query = document.getElementById("query");
		var A = 'A';
		var B = 'B';
		var C = 'C';
		var D = 'D';
		var E = 'E';
		let xhr1 = new XMLHttpRequest();
		xhr1.open('GET', "<c:url value='/findByPosition/A' />", true);
		xhr1.send();
		xhr1.onreadystatechange = function() {
			if (xhr1.readyState == 4 && xhr1.status == 200) {
				posA.innerHTML = showData(A,xhr1.responseText);
			}
		};
		let xhr2 = new XMLHttpRequest();
		xhr2.open('GET', "<c:url value='/findByPosition/B' />", true);
		xhr2.send();
		xhr2.onreadystatechange = function() {
			if (xhr2.readyState == 4 && xhr2.status == 200) {
				posB.innerHTML = showData(B,xhr2.responseText);
			}
		};
		let xhr3 = new XMLHttpRequest();
		xhr3.open('GET', "<c:url value='/findByPosition/C' />", true);
		xhr3.send();
		xhr3.onreadystatechange = function() {
			if (xhr3.readyState == 4 && xhr3.status == 200) {
				posC.innerHTML = showData(C,xhr3.responseText);
			}
		};
		let xhr4 = new XMLHttpRequest();
		xhr4.open('GET', "<c:url value='/findByPosition/D' />", true);
		xhr4.send();
		xhr4.onreadystatechange = function() {
			if (xhr4.readyState == 4 && xhr4.status == 200) {
				posD.innerHTML = showData(D,xhr4.responseText);
				
			}
		};
		let xhr5 = new XMLHttpRequest();
		xhr5.open('GET', "<c:url value='/findByPosition/E' />", true);
		xhr5.send();
		xhr5.onreadystatechange = function() {
			if (xhr5.readyState == 4 && xhr5.status == 200) {
				posE.innerHTML = showData(E,xhr5.responseText);
			}
		};			
	})
        
	function showData(char,textobj){
		let obj = JSON.parse(textobj);
		let size = obj.size;
		let vendors = obj.list;
		let segment = "<div style='float:none'class='pos'>"+char+"區廠商一覽</div>";	
			for ( n=0; n<vendors.length; n++ ){
				 let vendor = vendors[n];
				segment += "<div class='data'><ul>"
				segment += "<li>編號: "+vendor.venID+"</li>";
				segment += "<li>名稱: "+vendor.venName+"</li>";
				segment += "<li>種類: "+vendor.venType+"</li>";
				segment += "<li>負責人: "+vendor.venRes+"</li>";
				segment += "<li>位置: "+vendor.venPosition+"</li>";
				segment += "<li>金額: "+vendor.venValue+"</li>"
				segment += "</ul></div>";
			}
			segment += "<div class='clearfix'></div>";
		return segment;		
		}
	
</script>
<meta charset="UTF-8">
</head>
<header class="main-header">
			<!-- header -->
	<header class="main-header">
			<!-- banner -->
		<div class="banner about-w3bnr">
				<!-- header -->
		<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
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
<%-- 								<a href="<c:url value='/test'/>"><i class="fa fa-gift" aria-hidden="true"></i> 目前沒用到</a> --%>
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
								 
								<!--  li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">活動 <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="icons.html">Web Icons</a></li>
										<li><a href="codes.html">Short Codes</a></li>     
									</ul>
								</li-->  
								<li><a href="<c:url value='/PETER'/>">加入夜市</a></li>
								<li><a href="<c:url value='/queryStoreJudge' />">討論區</a></li>
								<li><a href="<c:url value='/MIKE'/>"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>購物車</a></li>
								<li class="w3pages">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="display:none" id="showName"><i class="fa fa-user"></i>${member_name} <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="<c:url value='/r_afterLogin/'/>">個人資料</a></li>
										<li id="adminLi"><a href="<c:url value='/BackStage'/>">管理員介面</a></li>
										<li id="vendorLi"><a href="<c:url value='/'/>">我的攤販</a></li>
										<li id="orderli"><a href="<c:url value='/MyOrder'/>">我的訂單</a></li>
										<li><a href="http://localhost:8080">線上客服</a></li>
										<li><a href="#">活動紀錄</a></li>
										<li><a href="<c:url value='/Logout'/>">登出</a></li>     
									</ul>
								</li>  
							</ul>
						</div>
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
	</header>
<body id="BB">
	<div  style="margin: 0 auto">
		<div id="Header2">
			<h3 id="#">攤商登記資料一覽</h3>
		</div>
		<hr>
		</div>
		<div id="dataArea" class="mainbody" style="margin-top: 20px">
			<div id="posA">
			</div>
			<div id="posB">
			</div>
			<div id="posC">
			</div>
			<div id="posD">
			</div>
			<div id="posE">
			</div>
		</div>
<!-- 		<div class="icon"  style= "width:100px;margin-left:150px;"> -->
<!-- 			<i class="far fa-hand-point-up"">點擊看商品</i> -->
<!-- 		</div> -->
	</div>
	<div>
		<div class="directTag0" onclick="location.href='#'" style='width:30px;'>回上層</div>
		<div class="directTag1" onclick="location.href='./PETER'" style='width:30px;'>回前頁</div>
	</div>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="<c:url value='/css/ccc/index/js/owl.carousel.js'/>"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel({
				items : 3,
				lazyLoad : true,
				autoPlay : true,
				pagination : true,
			});
		});
	</script>
	<script type="text/javascript"
		src="<c:url value='/css/ccc/index/js/jquery.jscrollpane.min.js'/>"></script>
	<script type="text/javascript" id="sourcecode">
		$(function() {
			$('.scroll-pane').jScrollPane();
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>/css/ccc/index/js/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="<%=basePath%>/css/ccc/index/js/SmoothScroll.min.js'"></script>
	<script type="text/javascript" src="<%=basePath%>/css/ccc/index/js/move-top.js"></script>
	<script type="text/javascript" src="<%=basePath%>/css/ccc/index/js/easing.js"></script>
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
	<script type="text/javascript">
		$(document).ready(function() {
			
			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
</body>
<script src="dist/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	data-auto-replace-svg="nest"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</html>