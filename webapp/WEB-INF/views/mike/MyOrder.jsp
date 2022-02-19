<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<title>YA!夜總匯</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="FrontPage/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="FrontPage/css/style.css" type="text/css" rel="stylesheet" media="all">  
<link href="FrontPage/css/font-awesome.css" rel="stylesheet"> <!-- font-awesome icons -->
<link rel="stylesheet" href="FrontPage/css/owl.carousel.css" type="text/css" media="all"/> <!-- Owl-Carousel-CSS -->

<link rel="stylesheet" href="FrontPage/car.css">
<!-- <link rel="stylesheet" href="fontawesome/css/all.min.css"> -->
<script src="FrontPage/jquery-2.2.3.min.js"></script>
<script src="FrontPage/car.js"></script>
<!-- //Custom Theme files --> 
<!-- js -->
<script src="FrontPage/js/jquery-2.2.3.min.js"></script>  
<!-- //js -->
<!-- web-fonts -->   
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet"> 
<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
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
<!-- //web-fonts -->


<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<%-- <link rel='stylesheet' href="<c:url value='/css/ccc/newstyles.css'/>" /> --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/css/ccc/js/scripts.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/css/ccc/js/datatables-simple-demo.js'/>"></script>


<style>
.btna {
	line-height: 1.5em;
	border: 1px solid #000;
	text-decoration: none;
	padding: 0 1em;
	border-radius: 200px;
	margin-top: auto;
	color: #000;
}

.cre {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

</head>
<body> 
<!-- banner -->
	<div class="banner">
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
								<li><a href="<c:url value='/WANG'/>">表演節目</a></li>
								 
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
		
	</div>
	<!-- //banner -->  
	
<!-- --------------------------------------------------------------------------------------------------- -->	
		<div class="container-fluid px-4">
					<h3 class="mt-4"><i class="fas fa-table me-1"></i>我的訂單</h3>
					<!--123123123123123231231231231231231232-->
					
					<!--13123123123123123123123123123123123123-->
					<div class="card mb-4"></div>
					<div class="card mb-4">
					
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>編號</th>
										<th>訂單代碼</th>
										<th>下單日期</th>
										<th>會員編號</th>
										<th>商品名稱</th>
										<th>購買數量</th>
										<th>訂單金額</th>
										<th>訂單狀態</th>
										<th style="text-align:center">調整</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>編號</th>
										<th>訂單代碼</th>
										<th>下單日期</th>
										<th>會員編號</th>
										<th>商品名稱</th>
										<th>購買數量</th>
										<th>訂單金額</th>
										<th>訂單狀態</th>
										<th>調整</th>
									</tr>
								</tfoot>
							<tbody>	
<!-- ------------------------------埋碼區---------------------------------------------------------------------------------- -->								
							<form class="form" action="#" method="POST">
										
										
										<%@ page import="java.util.*"%>
										<%
										
                                        int size = (int) request.getAttribute("order_Size");
										
										ArrayList order_Id = new ArrayList((ArrayList) request.getAttribute("order_Id"));/*編號*/
										ArrayList order_No = new ArrayList((ArrayList) request.getAttribute("order_No"));/*編號*/
										ArrayList order_Date = new ArrayList((ArrayList) request.getAttribute("order_Date"));/*編號*/
										ArrayList buyer = new ArrayList((ArrayList) request.getAttribute("buyer"));/*編號*/
										ArrayList qty = new ArrayList((ArrayList) request.getAttribute("qty"));/*編號*/
										ArrayList total_Price = new ArrayList((ArrayList) request.getAttribute("total_Price"));/*編號*/
										ArrayList order_State = new ArrayList((ArrayList) request.getAttribute("order_State"));/*編號*/
										ArrayList v_id = new ArrayList((ArrayList) request.getAttribute("v_id"));/*編號*/
										ArrayList c_name = new ArrayList((ArrayList) request.getAttribute("c_name"));/*編號*/
                                       
										%>
										<%for (int counter = 0;  counter < size; counter++) {%>
										<tr>
											<td><input type="checkbox" name="hobby" value="<%=order_Id.get(counter) %>" />No.<%=counter+1 %>
												<span></span></td>
											<td><%= order_No.get(counter) %></td>
											<td><%= order_Date.get(counter) %></td>
											<td><%= buyer.get(counter) %></td>
											<td><%= c_name.get(counter) %></td>
											<td><input id="number" type="number" value="<%= qty.get(counter) %>"></td>
											<td><%= total_Price.get(counter) %></td>
											<td><%= order_State.get(counter) %></td>
									
											<td>
												<div class="cre">
													<a href="<c:url value='<%="/reCheck/" + order_Id.get(counter) %>'/>" class='btna'>重新付款</a>
													<div>&emsp;</div>
<%-- 													<a href="<c:url value='<%="MIKE_DELETE/" + order_Id.get(counter) %>'/>" class='btna'>刪除訂單</a> --%>
													<div>&emsp;</div>
													<a href="<c:url value='<%="MIKE_FINISH/" + order_Id.get(counter) %>'/>" class='btna'>完成訂單</a>
													<div>&emsp;</div>
													<a href="<c:url value='<%="insertMessage/" + order_Id.get(counter) %>'/>" class='btna'>我要評價</a>
												</div>
											</td>
										</tr>
										<%
									}
									%>
										
										
										
										</form>
			
			
								
<!-- ------------------------------埋碼區---------------------------------------------------------------------------------- -->								
									</tbody>
								</table>
							
							
							
							
						</div>
					</div>
				</div>


<!-- --------------------------------------------------------------------------------------------------- -->
	<!-- add-products -->
	<div class="add-products">  
		<div class="container">
			<div class="add-products-row">
				<div class="w3ls-add-grids">
					<a href="CCC_BB/"> 
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
					<a href="CCC_BB/"> 
						<h4>
							獲得高達<span><br>5% 的優惠</span>
						</h4>
						<h5>今天訂購消夜</h5>
						<h6>
							現在下單 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div> 
				<div class="clearfix"> </div> 
			</div>  	 
		</div>
	</div>
	<!-- //add-products --> 
	<!-- order -->   	
	<div class="wthree-order">  
<%-- 		<img src="<c:url value='front/images/i2.jpg'/>" class="w3order-img" alt=""/> --%>
		<div class="container">
			<h3 class="w3ls-title">夜總匯使用指南</h3>
			<p class="w3lsorder-text">四個步驟享受夜市!</p>
			<div class="order-agileinfo">  
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-map" aria-hidden="true"></i> 
						<h5>找好想吃的</h5>
						<span>1</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-credit-card" aria-hidden="true"></i>
						<h5>付錢</h5>
						<span>2</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-cutlery" aria-hidden="true"></i> 
						<h5>大吃一頓</h5>
						<span>3</span>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6 order-w3lsgrids"> 
					<div class="order-w3text"> 
						<i class="fa fa-truck" aria-hidden="true"></i>
						<h5>滿足回家</h5>
						<span>4</span>
					</div>
				</div>
				<div class="clearfix"> </div> 
			</div>
		</div>
	</div>
	<!-- //order -->    
	<!-- //deals --> 
	<!-- dishes -->
	<div class="w3agile-spldishes">
		<div class="container">
			<h3 class="w3ls-title">人氣美食</h3>
			<div class="spldishes-agileinfo">
				<div class="col-md-3 spldishes-w3left">
					<h5 class="w3ltitle">寧夏夜市</h5>
					<p>臺灣人生活中最具代表性的飲食文化&emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
						&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;</p>				</div> 
				<div class="col-md-9 spldishes-grids">
					<!-- Owl-Carousel -->
					<div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a1.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>王家生炒魷魚焿</h4>
								<span>將阿根廷魷魚切斷後直接以大火快炒， </span> <span>保存鮮脆的原味!</span>
							</div>
						</a>
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a2.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>鹽烤杏鮑菇</h4>
								<span>Q彈多汁的頂級杏鮑菇，絕對能滿足您喜好美食的胃</span>
							</div>
						</a>
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a3.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>大昌沙拉船</h4>
								<span>來自埔里的小黃瓜脆甜、滷鴨蛋 Q 香，剛做好時麵包熱呼呼，外酥內冷有嚼勁</span>
							</div>
						</a>
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a4.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>最老牌苦茶</h4>
								<span>遵循古法傳統清涼退火 </span>
							</div>
						</a>
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a5.png'/>" alt=""/>
							<div class="agile-dish-caption">
								<h4>料理長胡椒蝦</h4>
								<span>蝦膏鮮黃蝦肉飽滿</span>
							</div>
						</a> 
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a6.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>火烤厚切牛排</h4>
								<span>好的食材，只要簡單料理就可以完美呈現出美味 </span>
							</div>
						</a>
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a7.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>雅米花生捲冰淇淋</h4>
								<span>當天現做潤餅皮依序包覆花生、冰淇淋、些許香菜提味，一口咬下吃得到花生香脆顆粒，口感層次豐富 </span>
							</div>
						</a>
					<a href="CCC_BB/" class="item g1"> 
							<img class="lazyOwl" src="<c:url value='front/images/a8.png'/>" title="Our latest gallery" alt=""/>
							<div class="agile-dish-caption">
								<h4>馥陽鍋貼水餃專賣店</h4>
								<span>煎好的鍋貼金黃油亮，上 Q下脆，一咬就有鮮美的湯汁流出 </span>
							</div>
						</a>
					</div> 
				</div>  
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //dishes --> 
	<!-- subscribe -->
	<div class="subscribe agileits-w3layouts"> 
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
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
			</div> 
			<div class="col-md-6 subscribe-right">
				<h3 class="w3ls-title">夜市平台 <br><span>歡迎加入</span></h3>  
				<form action="#" method="post"> 
					<input type="email" name="email" placeholder="輸入您的Email" required="">
					<input type="submit" value="加入">
					<div class="clearfix"> </div> 
				</form>  
			</div>
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
	<script src="FrontPage/js/minicart.js"></script>
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
	<!-- Owl-Carousel-JavaScript -->
	<script src="FrontPage/js/owl.carousel.js"></script>
	<script>
		$(document).ready(function() {
			$("#owl-demo").owlCarousel ({
				items : 3,
				lazyLoad : true,
				autoPlay : true,
				pagination : true,
			});
		});
	</script>
	<!-- //Owl-Carousel-JavaScript -->  
	<!-- start-smooth-scrolling -->
	<script src="FrontPage/js/SmoothScroll.min.js"></script>  
	<script type="text/javascript" src="FrontPage/js/move-top.js"></script>
	<script type="text/javascript" src="FrontPage/js/easing.js"></script>	
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
		if('${loginSuccess}'!=''){
			swal("",'${loginSuccess}',"success");
		}
		if('${changePwdSuccess}'!=''){
			swal("成功",'${changePwdSuccess}',"success");
		}
	}
	</script>
	
	
	

	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="FrontPage/js/bootstrap.js"></script>
</body>
</html>