<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title> YA!夜總匯</title>
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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
		System.out.println(basePath);
	%>
<style type="text/css">
#BB {
 	background-image: url(./images/peter/bg20.jpg); 
 	background-size: 100%; 
}
.directTag0 {
	border-bottom-left-radius: 20px;
	height: 100px;
	width: 30px;
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
	width: 30px;
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
	height: 80px;
	margin: auto;
	text-align: center;
	line-height: 10px;
	font-size: 19px;
	color: black;
	background-color: #FFFF37;
	border: 1px solid black;
}
.store{
	background-color: #FFEE99;
	border-radius:10px;
	width:265px;
	height:320px;
	float:left;
	border:1px solid black;
	margin:24px;
	padding:10px;
	text-align:center;
	line-height:25px;
	font-weight: bold;
}
.title{
	background-color:#7744FF;
	color:white;
	font-weight:bold;
	height:35px;
	line-height:30px;
	text-align:center;
}
.clearfix:after {
  content: "";
  display: block;
  clear: both;
}
img{
	border-bottom:25px;
}
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<!-- <script -->
<!-- 	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" -->
<!-- 	crossorigin="anonymous"></script> -->

<script src="<c:url value='/jQuery/jquery-3.6.0.min.js' />"
	type="text/javascript"></script>
<script src="<c:url value='/jQuery/toggle.js' />" type="text/javascript"></script>
<script>
$(document).ready(function(){
	$(document.body).on('click','[data-parent]', function () {
 		var child = $(this).attr("data-parent"); 
        $('[data-child="'+ child + '"]').slideToggle("slow"); 
        });    
	jQuery("body").click(function(e){
		e = e || window.event;
		var obj =e.target || e.srcElement;
		if($(obj).closest("[data-parent]").length <=0){
			//點選的區域如果沒有id為explain的標籤，就將explain收起隱藏
			jQuery("[data-child]").slideUp();
			}
		});
	 $('.img').on('click', function () {
		    
         var src = $(this).attr('src');
         $('.imgPreview img').attr('src', src);
         $('.imgPreview').show()
     });
     $('.imgPreview').on('click', function () {
         $('.imgPreview').hide()
     });
})

let dataArea = null;
let venName = null;
let query = null;
document.addEventListener("DOMContentLoaded", function() {
		venName = document.getElementById("venName");
		dataArea = document.getElementById("dataArea");
		query = document.getElementById("query");
		let xhr = new XMLHttpRequest();
		xhr.open('GET', "<c:url value='/findAllVen' />", true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				dataArea.innerHTML = showData(xhr.responseText);
			}
		};
						
		query.addEventListener('click', function(){
			let vname = venName.value;
			if(!vname){
				alert('請輸入攤商名稱(包含部分名稱)');
				return;
			}
			let xhr2 = new XMLHttpRequest();
			xhr2.open('GET', "<c:url value='/queryByName' />?vname=" + vname);
			xhr2.send();
			xhr2.onreadystatechange = function(){
				if ( xhr2.readyState ==4 && xhr2.status ==200 ){
					dataArea.innerHTML = showData(xhr2.responseText);
				}
			}
		});				
	})
        
	function showData(textobj){
		let obj = JSON.parse(textobj);
		let size = obj.size;
		let vendors = obj.list;
		let segment = ""
		if ( size==0 ){
			segment += "<div>查無相關資料</div>"
		}else{
			segment += "<div class='title'>目 前 有 " + size + " 家 廠 商 進 駐 唷 ^ _ ^</div>";
			for ( n=0; n<vendors.length; n++ ){
				 let vendor = vendors[n];
				 tmp = "<c:url value='/insertStoreJudge/"+ vendor.venID +"' />";
// 				 if(n%2==0){
					 
// 				 }eles{
					 
// 				 }
				 segment += "<div class='store'>";
				 segment += "<img width='220' height='200' src='" + vendor.pictureString+ " '><br>";
				 segment += "<div style='font-size:17px;background-color:#EEFFBB;width:220px;margin:auto'>"+ vendor.venName + "</div>";
				 segment += "<span>分類: "+ vendor.venType +"</span><br>";
				 segment += "<span style='margin-left:66.5px;'>位置: "+ vendor.venPosition +"區</span>&nbsp";
				 segment += "<button style='border-radius:5px;height:30px;margin-left:10px;'><a href='"+tmp+"'>給評價</a></button>";
				 segment += "<div style='height:10px;margin:0px' data-parent='"+n+"'>看介紹<i class='far fa-caret-square-down'></i></div><br>";
				 segment += "<div style='display:none;background-color:#CCEEFF;border-radius:10px;height:43px;margin-top:-2px;' data-child='"+n+"'>"+ vendor.venIntro +"</div>";
				 segment += "</div>";
			}
		}
		return segment;		
	}

		
</script>
<meta charset="UTF-8">
</head>
<body id="BB">
	<header class="main-header">
			<!-- banner -->
		<div class="banner about-w3bnr">
			<!-- header -->
			<div class="header">
			<div class="w3ls-header"><!-- header-one --> 
				<div class="container">
<!-- 					<div class="w3ls-header-left"> -->
<!-- 						<p>Free home delivery at your doorstep For Above $30</p> -->
<!-- 					</div> -->
					<div class="w3ls-header-right">
						<ul> 
<!-- 							<li class="head-dpdn"> -->
<!-- 								<i class="fa fa-phone" aria-hidden="true"></i> Call us: +01 222 33345  -->
<!-- 							</li>  -->
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
								<li><a href="<c:url value='/queryStoreJudge' />">討論區</a></li>			
								<li><a href="<c:url value='/MIKE'/>"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>購物車</a></li>
								<li class="w3pages">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="display:none" id="showName"><i class="fa fa-user"></i>${member_name} <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="<c:url value='/r_afterLogin/'/>">個人資料</a></li>
										<li id="adminLi"><a href="<c:url value='/BackStage'/>">管理員介面</a></li>
										<li id="vendorLi"><a href="<c:url value='/CCC_MANAGEMENT'/>">我的攤販</a></li>
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
	</header>
	<div id=mainbody style="margin: 0 auto">
		<div id="Header2">
			<h2 id="#">Yeah!夜市夜總匯</h2>
			<h3>作伙逛夜市</h3>
		</div>
		<hr>
			<h3 style="color:blue; font-weight:700;">${successMessage}&nbsp;</h3> 
		<div style="background-color:#FFE153;width:370px;margin:auto;padding:15px;border-radius:5px">
			搜尋攤商(名稱) <input id="venName" type="text" />
			<i class="fad fa-search"></i>
			<button id='query'>查詢</button>
		</div>
			<div id="dataArea" style="margin-top: 20px">
			<img  style="width:200px;" src="<c:url value='/images/peter/loading.gif' />">
		</div>
		<div class='clearfix'></div>
<!-- 		<div class="icon"  style= "width:100px;margin-left:150px;"> -->
<!-- 			<i class="far fa-hand-point-up"">點擊看商品</i> -->
<!-- 		</div> -->
	</div>
	<div>
		<div class="directTag0" onclick="location.href='#'">回上層</div>
		<div class="directTag1" onclick="location.href='./PETER'">回前頁</div>
	</div>
	<div class="footer agileits-w3layouts">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>company</h3>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="careers.html">Careers</a></li>
						<li><a href="help.html">Partner With Us</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>help</h3>
					<ul>
						<li><a href="faq.html">FAQ</a></li>
						<li><a href="login.html">Returns</a></li>
						<li><a href="login.html">Order Status</a></li>
						<li><a href="offers.html">Offers</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>policy info</h3>
					<ul>
						<li><a href="terms.html">Terms & Conditions</a></li>
						<li><a href="privacy.html">Privacy Policy</a></li>
						<li><a href="login.html">Return Policy</a></li>
					</ul>
				</div>
				<div class="col-xs-6 col-sm-3 footer-grids w3-agileits">
					<h3>Menu</h3>
					<ul>
						<li><a href="menu.html">All Day Menu</a></li>
						<li><a href="menu.html">Lunch</a></li>
						<li><a href="menu.html">Dinner</a></li>
						<li><a href="menu.html">Flavours</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="copyw3-agile">
		<div class="container">
			<p>
				&copy; 2017 Staple Food. All rights reserved | Design by <a
					href="http://w3layouts.com/">W3layouts</a>
			</p>
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
<!-- <script src="dist/js/bootstrap.min.js"></script> -->
<script src="<c:url value='front/js/bootstrap.js'/>"></script>
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	data-auto-replace-svg="nest"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
</html>