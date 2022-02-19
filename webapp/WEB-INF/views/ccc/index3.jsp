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
    .btn{
        font-size: 12px;
		margin-top:10px;
        border-radius: 15px;
        border: none;
        width: 80px;
        padding: 8px 0;
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


<title> YA!夜總匯</title>

</head>
<body>
	<!-- banner -->
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
			<li><a href="<c:url value='/CCC_BB'/>"> 逛夜市</a></li>
			<li class="active">商品區</li>
		</ol>
	</div>
	<!-- //breadcrumb -->
	<!-- products -->
				<%@ page import="java.util.*"%>
				<%
				String az = (String) request.getAttribute("a1");
				%>
	<div class="products">
		<div class="container">
			<div class="col-md-9 product-w3ls-right">
				<div class="product-top">
					<h4><%=az %></h4>
					<div class="clearfix"></div>
				</div>
				<!--========================================================================-->
				<div class="products-row">
				<p>&emsp;	 </p>
				<div class="alert alert-danger" role="alert">
					<strong>抱歉!</strong> 沒有查到相關商品，請重新查詢。
				</div>

					
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
				<div class="slider-left">
					<h4>全站搜索</h4>            
						<div class="row row1 scroll-pane">
							<form action="../nightMarket3/CCC_BE" method="POST">
								<input class="form-control mr-sm-2" type="text" placeholder="今天想吃什麼?" aria-label="Search" name="Fuzzyquery">
								<button class="btn"	type="submit">查詢</button>
							</form>
						</div>								
				</div>
				
			<%
			ArrayList a1 = new ArrayList((ArrayList) request.getAttribute("商品"));/*編號*/
			int z = a1.size();
			%>

					<div class="sidebar-row">
						<h4>按料理做分類</h4>
						<% for (int v = 0; v < z; v++) {%>
						<ul class="faq">
							<li class="item1"><a href="#"><%=a1.get(v)%><span
									class="glyphicon glyphicon-menu-down"></span></a>
								<ul>
								<%ArrayList c = new ArrayList((ArrayList) request.getAttribute("商品名稱" + a1.get(v)));/*編號*/
					  			  ArrayList d = new ArrayList((ArrayList) request.getAttribute("商品編號" + a1.get(v)));/*編號*/
					  			  int s = c.size();
				 	  			  for (int u = 0; u < s; u++) {%>
									<li class="subitem1"><a href="<c:url value='<%="../CCC_BA/"+d.get(u) %>'/>"><%=c.get(u)%></a></li>
							<%} %>
								</ul>
								
							</li>
						</ul>
						<%} %>


						<!-- -------------------------------------------- -->

						<div class="clearfix"></div>
						<!-- script for tabs -->
						<script type="text/javascript">
							$(function() {

								var menu_ul = $('.faq > li > ul'), menu_a = $('.faq > li > a');

								menu_ul.hide();

								menu_a
										.click(function(e) {
											e.preventDefault();
											if (!$(this).hasClass('active')) {
												menu_a.removeClass('active');
												menu_ul.filter(':visible')
														.slideUp('normal');
												$(this).addClass('active')
														.next()
														.stop(true, true)
														.slideDown('normal');
											} else {
												$(this).removeClass('active');
												$(this).next().stop(true, true)
														.slideUp('normal');
											}
										});

							});
						</script>
						<!-- script for tabs -->
					</div>
					<!-- -------------------------------------------- -->


				</div>
				<div class="related-row">
					<h4>常用查詢</h4>
					<ul>
						<li><a href="<c:url value='/CCC_BH/茶/'/>">&ensp;茶&ensp; </a></li>
						<li><a href="<c:url value='/CCC_BH/飯/'/>">&ensp;飯&ensp; </a></li>
						<li><a href="<c:url value='/CCC_BH/沙茶/'/>">沙茶 </a></li>
						<li><a href="<c:url value='/CCC_BH/炸/'/>">&ensp;炸&ensp; </a></li>
						<li><a href="<c:url value='/CCC_BH/冰/'/>">&ensp;冰&ensp; </a></li>
						<li><a href="<c:url value='/CCC_BH/玉米/'/>">玉米 </a></li>
						<li><a href="<c:url value='/CCC_BH/湯/'/>">&ensp;湯&ensp; </a></li>
						<li><a href="<c:url value='/CCC_BH/餅/'/>">&ensp;餅&ensp; </a></li>
					</ul>
				</div>
				<div class="related-row">
					<h4>或許你會喜歡</h4>
					<div class="galry-like">
						<a href="#" data-toggle="modal" data-target="#myModal1"><img
							src="../nightMarket3/images/ccc/images/a55.jpg" class="img-responsive"
							alt="img"></a>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //products -->
	<div class="container">
		<div class="w3agile-deals prds-w3text">
			<h5>朋友你帶!&emsp; &emsp; &emsp; &emsp;</h5>
			<h5>&emsp; &emsp; &emsp; &emsp; 美食我來!</h5>
		</div>
	</div>
	<!-- dishes -->
	<div class="w3agile-spldishes">
		<div class="container">
			<h3 class="w3ls-title">Special Foods</h3>
			<div class="spldishes-agileinfo">
				<div class="col-md-3 spldishes-w3left">
					<h5 class="w3ltitle">寧夏夜市</h5>
					<p>臺灣人生活中最具代表性的飲食文化&emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
						&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;</p>

				</div>
				<div class="col-md-9 spldishes-grids">
					<!-- Owl-Carousel -->
					<div id="owl-demo"
						class="owl-carousel text-center agileinfo-gallery-row">
						<a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a1.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>王家生炒魷魚焿</h4>
								<span>將阿根廷魷魚切斷後直接以大火快炒， </span> <span>保存鮮脆的原味!</span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a2.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>鹽烤杏鮑菇</h4>
								<span>Q彈多汁的頂級杏鮑菇，絕對能滿足您喜好美食的胃</span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a3.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>大昌沙拉船</h4>
								<span>來自埔里的小黃瓜脆甜、滷鴨蛋 Q 香，剛做好時麵包熱呼呼，外酥內冷有嚼勁</span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a4.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>最老牌苦茶</h4>
								<span>遵循古法傳統清涼退火 </span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a5.png" alt="" />
							<div class="agile-dish-caption">
								<h4>料理長胡椒蝦</h4>
								<span>蝦膏鮮黃蝦肉飽滿</span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a6.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>火烤厚切牛排</h4>
								<span>好的食材，只要簡單料理就可以完美呈現出美味 </span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a7.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>雅米花生捲冰淇淋</h4>
								<span>當天現做潤餅皮依序包覆花生、冰淇淋、些許香菜提味，一口咬下吃得到花生香脆顆粒，口感層次豐富</span>
							</div>
						</a> <a href="products.html" class="item g1"> <img class="lazyOwl"
							src="../nightMarket3/images/ccc/images/a8.png" title="Our latest gallery"
							alt="" />
							<div class="agile-dish-caption">
								<h4>馥陽鍋貼水餃專賣店</h4>
								<span>煎好的鍋貼金黃油亮，上 Q下脆，一咬就有鮮美的湯汁流出 </span>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //dishes -->
	<!-- modal -->
	<div class="modal video-modal fade" id="myModal1" tabindex="-1"
		role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-5 modal_body_left">
							<img src="../nightMarket3/images/ccc/images/a55.jpg" alt=" "
								class="img-responsive">
						</div>
						<div class="col-md-7 modal_body_right single-top-right">
							<h3 class="item_name">夜市超值優惠價套餐</h3>
							<p>台味十足精選套餐 x 多國混合精選套餐</p>
							<div class="single-rating">
								<ul>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li class="w3act"><i class="fa fa-star-o"
										aria-hidden="true"></i></li>
									<li class="rating">20 條評論</li>
									<li><a href="#">添加你的評論</a></li>
								</ul>
							</div>
							<div class="single-price">
								<ul>
									<li>$149</li>
									<li><del>$235</del></li>
									<li><span class="w3off">37% OFF</span></li>
									<li>結束日期 : 7月31日</li>
									<li><a href="#"><i class="fa fa-gift"
											aria-hidden="true"></i> 贈送</a></li>
								</ul>
							</div>
							<p class="single-price-text">【多國混合精選套餐】 (原價235元) 特惠價 149元 內容：北海道塩烤帝王螺-單人餐×1、幸花明太子起司烤餅×1、焗烤海鮮扇貝×1</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="w3ls_item" value="【多國混合精選套餐】" /> <input
									type="hidden" name="amount" value="149" />
								<button type="submit" class="w3ls-cart">
									<i class="fa fa-cart-plus" aria-hidden="true"></i> 加入購物車
								</button>
							</form>
							<a href="#" class="w3ls-cart w3ls-cart-like"><i
								class="fa fa-heart-o" aria-hidden="true"></i> 我的最愛</a>
							<div class="single-page-icons social-icons">
								<ul>
									<li><h4>Share on</h4></li>
									<li><a href="#" class="fa fa-facebook icon facebook">
									</a></li>
									<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
									<li><a href="#" class="fa fa-google-plus icon googleplus">
									</a></li>
									<li><a href="#" class="fa fa-dribbble icon dribbble">
									</a></li>
									<li><a href="#" class="fa fa-rss icon rss"> </a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //modal -->
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
						<li><a href="CCC_BB/#mark-1">主食類</a></li>
						<li><a href="CCC_BB/#mark-2">燒烤類</a></li>
						<li><a href="CCC_BB/#mark-3">炸食類</a></li>
						<li><a href="CCC_BB/#mark-4">冰品類</a></li>
						<li><a href="CCC_BB/#mark-5">甜點類</a></li>
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
	<!-- Owl-Carousel-JavaScript -->
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
	<!-- //Owl-Carousel-JavaScript -->
	<!-- the jScrollPane script -->
	<script type="text/javascript"
		src="<c:url value='/css/ccc/index/js/jquery.jscrollpane.min.js'/>"></script>
	<script type="text/javascript" id="sourcecode">
		$(function() {
			$('.scroll-pane').jScrollPane();
		});
	</script>
	<!-- //the jScrollPane script -->
	<script type="text/javascript"
		src="<c:url value='/css/ccc/index/js/jquery.mousewheel.js'/>"></script>
	<!-- the mouse wheel plugin -->
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