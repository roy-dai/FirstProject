<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		
	</div>
	<!-- //banner -->  
	
<!-- --------------------------------------------------------------------------------------------------- -->	
	<!-- shoppingCart.jsp移植測試區 --> 
<div class="w">
    <div class="cart-warp">
      <!-- 頭部全選模塊 -->
      <div class="cart-thead">
        <div class="t-checkbox">
          <input type="checkbox" name="" id="" class="checkall"> 全選
        </div>
        <div class="t-goods">商品</div>
        <div class="t-goods"><i class="fa fa-pencil-square-o" aria-hidden="true"></i><i class="fa fa-male" aria-hidden="true"></i>客製化內容</div>
        <div class="t-price">單價</div>
        <div class="t-num">數量</div>
        <div class="t-sum">小計</div>
        <div class="t-action">操作</div><i class="fas fa-trash-alt"></i>
      </div>
<form class="form"  action="/nightMarket3/checkOut" method="POST" enctype="multipart/form-data" >
<div  id='dataArea'>

</div>
	<div class="cart-item-list">
	</div>
     
  	<div class="cart-floatbar">
        <div class="select-all">
          <input type="checkbox" name="" id="" class="checkall">全選
        </div>
        <div class="operation">
          <a href="javascript:;" class="remove-batch"><i class="fa fa-eraser" aria-hidden="true"></i>移除選取商品</a>
          <a href="javascript:;" class="clear-all"><i class="fa fa-times" aria-hidden="true"></i>清空購物車</a>
        </div>
        <div class="toolbar-right">
          <div class="amount-sum">已經選<em></em>件商品</div>
          <div class="price-sum">總價： <em></em></div>
          <input type="submit" class="btn-area"  value="去結帳" >
 </form>         
        </div>
      </div> <!-- cart-floatbar end -->
    </div> <!-- cart-warp end -->
  </div> <!-- w end -->
<!-- shoppingCart.jsp移植測試區 --> 
<!-- ---"script"---- -->
<script>

$(function(){

	window.addEventListener('load', function() {
		dataArea = document.getElementById("dataArea");
	});

	let xhr = new XMLHttpRequest();
	xhr.open('GET', "<c:url value='/findshoppingcart' />", true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			console.log(xhr.responseText);
			dataArea.innerHTML = showData(xhr.responseText);
		}
	};

	function showData(textObj) {
		
		//全域變數區
		let obj = JSON.parse(textObj);//拿到map
		let size = obj.size;
		let shoppingCartSize = obj.list;
		//-----------------HTML初始碼埋碼區----------------------------------	
		let segment = "";
		//迴圈&區域變數
		for(i=0 ; i< shoppingCartSize ; i++){
			
			let cartId_i = "cartId" + i ;//但這邊必須依附著i >> cartId0 ,cartId1
			let custom_i = "custom" + i ;
			let c_name_i = "c_name" + i ;
			let qty_i = "qty" + i ; 
			let c_image_i = "c_image" + i ;
			let c_price_i = "c_price" + i ;
			
			
			let obj_cartId_i = obj[cartId_i];  //map[cartId0]
			let obj_custom_i = obj[custom_i]; 
			let obj_c_name_i = obj[c_name_i];
			let obj_qty_i = obj[qty_i];
			let obj_c_image_i = obj[c_image_i];
			let obj_c_price_i = obj[c_price_i];
			//------ 因為客製化內容出現順序問題,需要先拉出來處理 , 然後再用tmp來當佔存-------------------------		
	 		let tmp = ""	
	 			for(k=0 ; k < obj_custom_i.length ; k++ ){
	 				
	 				let l = k+1
	 				
	 				console.log(obj_custom_i[k]);//去冰 無糖 +珍珠
	 				//segment += "<h4>商品客製化內容" + l +":" + obj_custom_i[k] + "<h4>"
	 				
	 				tmp += obj_custom_i[k]
	 			}
			
	 		let j =0;
	 		
	 	// 我這邊進來後需要從0重新來過
			// 不能跟著i變成1 ,不然0就會吃不到(第一筆)
				console.log(obj_cartId_i[j]); //map[cartId0][0] >> 1
				console.log(obj_c_name_i[j]);// map[c_name0][0] >> 藍柑檸檬汽水
				console.log(obj_qty_i[j]);//map[qty0][0] >> 99 
				console.log(obj_c_image_i[j]);//map[c_image][0] >> 8c8f12d3-d57a-4deb-abc5-ecb2eb2a4930.jpg
		//--------------迴圈埋碼區---------------------------------------------------------

		segment += '<div class="cart-item check-cart-item">'
		segment += '<div class="p-checkbox">'
		segment += '<input type="checkbox" name="box" id="' + obj_cartId_i[j] + '"  value="' + i + '" class="j-checkbox">' //這樣設計是為了可以讓後端讀取多個以勾選資料(先轉換成另外一個形式的id)
		segment += '<input type="hidden" name="boxx" value="' + obj_cartId_i[j] + '">'//使用input做hidden型態 , 裡面埋購物車id , name="boxx"讓我取value 
		segment += '</div>'
		segment += '<div class="p-goods">'
		segment += '<div class="p-images">'
		segment += '<img src="images/ccc/'+ obj_c_image_i[j] + '" alt="" width="90px" height="90px">'
		segment += '</div>'
		segment += '<div class="p-msg">' + obj_c_name_i[j] + '</div>'
		segment += '<div class="p-msg">' + tmp + '</div>'
		segment += '</div>'
		segment += '<div class="p-price">$' + obj[c_price_i] + '</div>'
		segment += '<div class="p-num">'
		segment += '<div class="quantity-form">'
		segment += '<a href="javascript:;" class="decrement">-</a>'
		segment += '<input id="' + 'qtyOfOrder'+ obj_cartId_i[j] + '"  name="qty" type="text" class="itxt" value="' + obj_qty_i[j]  +'">'
		segment += '<a href="javascript:;" class="increment">+</a>'
		segment += '</div>'
		segment += '</div>'
		segment += '<div class="p-sum">$' + obj[c_price_i] + '</div>'
		segment += '<i class="fas fa-trash-alt"></i>'
		segment += '<div class="p-action"><a href="<c:url value="/mike_remove/'+ obj_cartId_i[j] +'"/>">移除<i class="fa fa-trash" aria-hidden="true"></i></a></div>'
		segment += '</div>' 

//--------------迴圈埋碼區結束---------------------------------------------------------			
	j++;
		
		}
		
		return segment;
		
	}
	
})

</script>
<!-- ---"script"---- -->

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
	
	<!-- //order -->    
	<!-- deals -->
	<!-- div class="w3agile-deals">
		<div class="container">
			<h3 class="w3ls-title">Special Services</h3>
			<div class="dealsrow">
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>FREE DELIVERY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
					</div> 
					<div class="clearfix"> </div>
				</div> 
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-birthday-cake" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>Party Orders</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
					</div> 
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-users" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>Team up Scheme</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
					</div>
					<div class="clearfix"> </div>
				</div> 
				<div class="col-md-6 col-sm-6 deals-grids">
					<div class="deals-left">
						<i class="fa fa-building" aria-hidden="true"></i>
					</div> 
					<div class="deals-right">
						<h4>corporate orders</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
					</div>
					<div class="clearfix"> </div>
				</div> 
				<div class="clearfix"> </div>
			</div>
		</div>
	</div-->
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
	
	
	
	
	<script>
   
   
   
$(function () {
	dataArea.addEventListener('click', function() {
	  $(".checkall").change(function () {
	    // 當全選按鈕改變時，讓小復選框按鈕和全選按鈕保持一致（隱式迭代，不需要回圈遍歷）
	    $(".j-checkbox, .checkall").prop("checked", $(this).prop("checked"));
	    getSum();   // 計算總額函式
	    // 添加背景
	    // 判斷是否是選中狀態，是的話添加check-cart-item類，沒有就移除
	    if ($(this).prop("checked")) {
	      $(".cart-item").addClass("check-cart-item");
	    } else {
	      $(".cart-item").removeClass("check-cart-item");
	    }
	  })
	  $(".j-checkbox").change(function () {
	    if ($(".j-checkbox:checked").length === $(".j-checkbox").length) {
	      $(".checkall").prop("checked", true);
	    } else {
	      $(".checkall").prop("checked", false);
	    }
	    getSum();
	    // 當小復選框為選中狀態時，改變背景顏色（添加check-cart-item類）
	    if ($(this).prop("checked")) {
	      $(this).parents(".cart-item").addClass("check-cart-item");
	    } else {
	      $(this).parents(".cart-item").removeClass("check-cart-item");
	    }
	  })

	  // 點擊+按鈕，文本框數字加一
	  $(".increment").click(function () {
	    var n = $(this).siblings(".itxt").val();
	    n++;
	    $(this).siblings(".itxt").val(n);
	    // 小計模塊
	    // num為獲取過來的單價，用substr()截取字串把前邊的$去掉
	    var num = $(this).parents(".p-num").siblings(".p-price").html().substr(1);
	    // toFixed(2)保留兩位小數
	    var price = (num * n).toFixed(2);
	    $(this).parents(".p-num").siblings(".p-sum").html("$" + price);
	    getSum();
	  })
	  // 點擊-按鈕，文本框數字減一
	  $(".decrement").click(function () {
	    var n = $(this).siblings(".itxt").val();
	    n <= 1 ? n : n--;
	    $(this).siblings(".itxt").val(n);
	    // 小計模塊
	    var num = $(this).parents(".p-num").siblings(".p-price").html().substr(1);
	    // toFixed(2)保留兩位小數
	    var price = (num * n).toFixed(2);
	    $(this).parents(".p-num").siblings(".p-sum").html("$" + price);
	    getSum();
	  })
	  // 當用戶直接修改文本框時
	  $(".itxt").change(function () {
	    var n = $(this).val();
	    var num = $(this).parents(".p-num").siblings(".p-price").html().substr(1);
	    // toFixed(2)保留兩位小數
	    var price = (num * n).toFixed(2);
	    $(this).parents(".p-num").siblings(".p-sum").html("$" + price);
	    getSum();
	  })

	  // 計算總額函式
	  getSum();
	  function getSum() {
	    var count = 0;
	    var money = 0;
	    // 只遍歷選中的商品   each遍歷，i為索引，ele為物件
	    $(".j-checkbox:checked").parents(".cart-item").find(".itxt").each(function (i, ele) {
	      count += parseInt($(ele).val());   // 會有小誤差，要取整一下
	    })
	    $(".amount-sum em").text(count);
	    $(".j-checkbox:checked").parents(".cart-item").find(".p-sum").each(function (i, ele) {
	      money += parseFloat($(ele).text().substr(1));
	    })
	    $(".price-sum em").text("$" + money.toFixed(2));
	  }

	  // 洗掉商品模塊
	  // 洗掉單個商品
	  $(".p-action a").click(function () {
	    $(this).parents(".cart-item").remove();
	    getSum();
	  })
	  // 洗掉選中商品
	  $(".remove-batch").click(function () {
	    $(".j-checkbox:checked").parents(".cart-item").remove();
	    getSum();
	  })
	  // 清理購物車
	  $(".clear-all").click(function () {
	    $(".cart-item").remove();
	    getSum();
	  })
	})

   })

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