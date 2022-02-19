<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>YA!夜總匯</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Staple Food Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

	<!-- Custom Theme files -->
	<link href="<c:url value='front/css/bootstrap.css'/>" type="text/css" rel="stylesheet" media="all">
	<link href="<c:url value='front/css/style.css'/>" type="text/css" rel="stylesheet" media="all">  
	<link href="<c:url value='front/css/font-awesome.css'/>" rel="stylesheet">
	 <!-- font-awesome icons -->
	<link rel="stylesheet" href="<c:url value='front/css/owl.carousel.css'/>" type="text/css" media="all"/> 
	<!-- Owl-Carousel-CSS -->
	<script src="<c:url value='front/js/jquery-2.2.3.min.js'/>"></script> 
	<!-- js -->
	<link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
		System.out.println(basePath);
	%>
<style type="text/css">
#BB {
	background-image: url(./images/peter/bg2.jpg);
	background-size: 50%;
	background-position: -130px;
}

#Header2 {
	width: 750px;
	height: 130px;
	margin: auto;
	text-align: center;
	line-height: 50px;
	font-size: 19px;
	color: black;
	background-color: #FFFF37;
	border: 1px solid black;
}

.container2 {
	width: 750px;
	margin-top: 50px;
	margin: auto;
	display: flex;
	align-items: center;
}

#Sidebar {
	padding-top: 350px;
	width: 200px;
	margin: auto;
	float: left;
	height: 800px;
	text-align: center;
	line-height: 60px;
	font-size: 15px;
	color: #ffffff;
	font-weight: bold;
	background-image: url(./images/peter/wc3.jpg);
	background-repeat: no-repeat;
	background-size: 200px;
	background-color: #D0D0D0;
	border: 1px solid black;
}

#body {
	width: 550px;
	height: 800px;
	text-align: center;
	line-height: 20px;
	font-size: 15px;
	color: blue;
	font-weight: bold;
	background-color: #fffaf3;
	border: 1px solid black;
	float: left;
}

#Footer {
	border-bottom: 10px;
	width: 750px;
	height: 80px;
	margin: auto;
	text-align: center;
	line-height: 25px;
	font-size: 15px;
	color: #fffaf3;
	font-weight: bold;
	background-color: #FFDC35;
	border: 1px solid black;
}

textarea {
	resize: none;
}

input {
	height: 25px;
}

th, td {
	border: 1px solid #d0d0d0;
	color: black;
	font: 16px;
	height: 35px;
	text-align:center;
}
.del{
	cursor:point;
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

#binContainer{
	margin: auto; 
	text-align: center;
	height:500px;
	overflow:auto;
}


</style>
</head>
<body id="BB">
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
	<!-- 	登入用的script -->
	
	
	
	
	<!-- breadcrumb -->
	</header>
	<div id=Header2>
		<h1
			style="font-weight: 900; display: block; margin-top: 45px; font-family: Arial, Helvetica, sans-serif, 黑體-繁, 微軟正黑體, LiHei Pro;">Yeah!夜市夜總匯攤販資訊網</h1>
	</div>
	<div style="clear: both;"></div>
	<div class=container2>
		<br>
		<nav id="Sidebar">

			<!-- 			<div> -->
			<!-- 				<button class="btn btn-warning" id="signIn" name="登入">登入(Fake for test)</button> -->
			<!-- 			</div> -->
<!-- 			<div> -->
<!-- 				<button style="width: 140px; color:black; background-color:gold" class="btn btn-secondary" id="backStage" name="backStage">後台管理</button> -->
<!-- 			</div> -->
			<div>
				<button style="width: 140px;" class="btn btn-success" id="history" name="條件查詢">歷屆廠商資料</button>
			</div>
			<div> 
				<button style="width: 140px; color:black; background-color:gold" class="btn btn-secondary" id="winBin" name="winBin">當月得標公告</button>
			</div>
			<div>
				<button style="width: 140px;" class="btn btn-primary" id="selectAll" name="查詢所有" onclick="self.location.href='queryVendor'">次月廠商查詢</button>
			</div>
			<div>
				<button style="width: 140px;" class="btn btn-danger" id="edit">修改/刪除資料</button>
			</div>
			<div>
				<button style="width: 140px;" class="btn btn-warning" id="registerVen"
					>招標登記</button>
			</div>
			<div>
				<button style="width: 140px;" class="btn btn-info" 
					onclick="self.location.href='mapDesign'">場地模擬</button>
			</div>
<!-- 			<div> -->
<!-- 				<button style="width: 140px;" class="btn btn-info"  -->
<!-- 					onclick="self.location.href='AllVendor'">逛夜市(商家)</button> -->
<!-- 			</div> -->
		</nav>
		<div id="body">
			<h1
				style="margin-bottom: 50px; margin-top: 20px; font-weight: 700; color: #000093;font-family: Arial, Helvetica, sans-serif, 黑體-繁, 微軟正黑體, LiHei Pro;">110年8月份攤商招標登記</h1>
			<div style="color: black; margin-bottom: 20px;">
				<h3 style="text-align: left; margin-left: 20px; font-weight: 700;font-family: Arial, Helvetica, sans-serif, 黑體-繁, 微軟正黑體, LiHei Pro;">招標須知:</h3>
				申請前請詳閱文件說明書，攤位及負責人資訊需確實填寫，負責人須為本人。
			</div>
			<div id="pic">
				<div id="text"
					style="background: linear-gradient(to right, #a8ff78, #78ffd6); height: 100px; margin-top: 45px; color:#A23400">
					消遣無趣的時光</br> 滿足一天的工作勞累</br> 一塊空地，一個歸屬</br> 帶給所有人歡笑，是我們的理想</br> 歡迎加入我們，一起築夢</br>
				</div>
				<img style="margin-top: 20px;" src="./images/peter/bg14_2.jpg"
					alt="" id="bg14" width="300px" height="450px">
			</div>
			<div style="display: none;" id="dataView">
				<div
					style="margin: auto; width: 500px; height: 580px; border: 1px solid black; text-align: center; background-color: #DDDDDD">
					<!-- 					<form action="/Login" method="POST" class="view1" style="display: none"> -->
					<!-- 						<div> -->
					<!-- 							<div style="margin: 20px;"> -->
					<!-- 								<label for="" style="color: black; font-weight: bolder; font-size: larger; background-color: tan; display: block;">登入</label> -->
					<!-- 							</div> -->
					<!-- 							<div style="margin: 20px;"> -->
					<!-- 								<label for="">帳號: </label> <input type="text" name="act" id="act"> -->
					<!-- 							</div> -->
					<!-- 							<div style="margin: 20px;"> -->
					<!-- 								<label for="">密碼: </label> <input type="password" name="pwd" id="pwd"> -->
					<!-- 							</div> -->
					<!-- 							<div id="loginResult"></div> -->
					<!-- 							<input type="submit" name="Login" value="使用者登入"> -->
					<!-- 						</div> -->
					<!-- 					</form> -->
					<div class="view1"  style="margin: 5px;overflow:auto;">
						<label for="" style="color: black; font-weight: bolder; font-size: larger; background-color: tan; display: block;">標案結果</label>
						<div id="binContainer">
							<div id="bin" style="margin: auto"></div>
						</div>
					</div>
					<div class="view2">
						<br>
						<label style="margin-bottom:20px;">選擇年度</label>
						<select name="input" id="annual">
							<option value="110">110年度</option>
							<option value="109">109年度</option>
							<option value="108">108年度</option>
							<option value="107">107年度</option>
						</select>
						<div id="hisData">
							
						</div>
					</div>
					<div style="margin: 20px;" class="view3">
						<label for="" style="color: black; font-weight: bolder; font-size: larger; background-color: tan; display: block;">您的登記資料</label>
						<div id="dataArea" style="margin: auto; text-align: center"></div>
								<h3 id="DelCheck"></h3>
					</div>
				</div>
			</div>
		</div>
		<div style="clear: both;"></div>
	</div>
	<!-- footer -->
	<footer id="Footer">
		<div style="color: black;">
			<div style="text-align: left; padding-left: 520px">
				<i class="fas fa-user-tie"></i>&nbsp;&nbsp;管理員:陳秉儀<br> 
				&nbsp;<i class="fas fa-mobile-alt"></i>&nbsp;&nbsp;電話:0910906488<br> 
				<i class="far fa-envelope"></i>&nbsp;<a href="mailto:p80414@gmail.com">信箱:p80414@gmail.com</a><br>
<%-- 				                <a href="<c:url value='/readfile/excel' />">匯入初始資料</a><br>  --%>
			</div>
		</div>
	</footer>
	<div style="margin: auto; width: 110px;">
		<p style="font-weight: 700; font-size: large;">
			<a href="#"><span style="color: #DDDDDD;">Back to top</span></a>
		</p>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="<c:url value='front/js/owl.carousel.js'/>"></script>
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
	<script type="text/javascript" src="<%=basePath%>/css/ccc/index/js/jquery.mousewheel.js"></script>
	<!-- the mouse wheel plugin -->
	<!-- start-smooth-scrolling -->
<%-- 	<script type="text/javascript" src="<%=basePath%>/css/ccc/index/js/SmoothScroll.min.js'"></script> --%>
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
</body>
<!-- <script src="dist/js/bootstrap.min.js"></script> -->
<script src="<c:url value='front/js/bootstrap.js'/>"></script>

<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	data-auto-replace-svg="nest"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script>
	$(function() {
		
		$(document).ready(function(){
			$(document.body).on('click','.del', function () {
				  console.log('123');
				  var r=confirm("確定要刪除此筆資料?");
				  if (r==true)
				    {
					  let xhr1 = new XMLHttpRequest();
					  var a = Number($(this).next().text());
					  xhr1.open('GET', "<c:url value='/delete/"+a+"' />", true);
						xhr1.send();
						xhr1.onreadystatechange = function() {
							if (xhr1.readyState == 4 && xhr1.status == 200) {
								let DelCheck = document.getElementById("DelCheck")
								  DelCheck.innerHTML="刪除成功";
								let xhr2 = new XMLHttpRequest();
								xhr2.open('GET', "<c:url value='/queryByMember' />", true);
								xhr2.send();
								xhr2.onreadystatechange = function() {
									if (xhr2.readyState == 4 && xhr2.status == 200) {
										dataArea.innerHTML = showData(xhr2.responseText);
									}
								};
							}else{
								  DelCheck.innerHTML("刪除失敗");
							}
						};
				    }
				  else
				    {
					  $('#DelCheck').innerHTML("取消刪除")
				    }
			  })
		})
		
		$('#winBin').on('click', function() {
			pic.style.display = "none";
			
			bin = document.getElementById("bin");
			let xhr = new XMLHttpRequest();
			xhr.open('GET', "<c:url value='/winBin'/>", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					bin.innerHTML = showBinResult(xhr.responseText,'是');
				}
			}
			let xhr2 = new XMLHttpRequest();
			xhr2.open('GET', "<c:url value='/loseBin'/>", true);
			xhr2.send();
			xhr2.onreadystatechange = function() {
				if (xhr2.readyState == 4 && xhr2.status == 200) {
					bin.insertAdjacentHTML ('afterend',showBinResult(xhr2.responseText,'否'));
				}
			}
		
			$('#dataView').attr({
				'style' : 'display:block'
			})
			$('.view1').css('display', 'block')
			$('.view2').css('display', 'none')
			$('.view3').css('display', 'none')
		})
		
		$('#history').on('click', function() {
			pic.style.display = "none";
			$('#dataView').attr({
				'style' : 'display:block'
			})
			$('.view1').css('display', 'none')
			$('.view2').css('display', 'block')
			$('.view3').css('display', 'none')
			let dataHis = document.getElementById("hisData")
			dataHis.innerHTML=historyData();
		})
		
		$('#annual').on('change',function(){
			let dataHis = document.getElementById("hisData");
			dataHis.innerHTML=historyData();
		})
		
		$('#edit').on('click', function() {
			pic.style.display = "none";
			
			dataArea = document.getElementById("dataArea");
			let xhr = new XMLHttpRequest();
			xhr.open('GET', "<c:url value='/queryByMember' />", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					dataArea.innerHTML = showData(xhr.responseText);
				}
			};
			
			$('#dataView').attr({
				'style' : 'display:block'
			})
			$('.view1').css('display', 'none')
			$('.view2').css('display', 'none')
			$('.view3').css('display', 'block')
		})

		$('#num').attr('checked', 'checked')
		$('#num').on('click', function() {
			$('#num_sub').attr('disabled', false)
			$('#type_sub').attr('disabled', true)
			$('#keyWord_sub').attr('disabled', true)
		})
		$('#type').on('click', function() {
			$('#num_sub').attr('disabled', true)
			$('#type_sub').attr('disabled', false)
			$('#keyWord_sub').attr('disabled', true)
		})
		$('#keyWord').on('click', function() {
			$('#num_sub').attr('disabled', true)
			$('#type_sub').attr('disabled', true)
			$('#keyWord_sub').attr('disabled', false)
		})
		$('#bg14').on('mousemove', function() {
			$('#bg14').attr({
				'src' : './images/peter/bg14.jpg'
			})
		})
		$('#registerVen').on('click',function(){
			let xhr2 = new XMLHttpRequest();
			xhr2.open('GET', "<c:url value='/checkLogin' />", true);
			xhr2.send();
			xhr2.onreadystatechange = function() {
				if (xhr2.readyState == 4 && xhr2.status == 200) 
				{
					console.log(xhr2.responseText);
					if(xhr2.responseText=='false'){
						window.alert("請先登入以進行操作");
					}else{
						window.location.assign("vendorRegister");
					}
				}
			};
		})
		
		$('#backStage').on('click',function(){
			window.location.assign("backstage");
// 			let xhr2 = new XMLHttpRequest();
// 			xhr2.open('GET', "<c:url value='/checkAdmin' />", true);
// 			xhr2.send();
// 			xhr2.onreadystatechange = function() {
// 				if (xhr2.readyState == 4 && xhr2.status == 200) 
// 				{
// 					console.log(xhr2.responseText);
// 					if(xhr2.responseText=='false'){
// 						window.alert("不好意思，您無權訪問此空間");
// 					}else{
// 						window.location.assign("backstage");
// 					}
// 				}
// 			};
 		})
		
		function historyData(ann){	
			var ann = $('#annual').val();
			let segment = "<table style='background-color:#FFFFB9;text-align:center;width:480px;border:1px;margin:auto'>";
			    segment +="<thead><tr style='background-color:#D1E9E9;'><th style='text-align:center;'>月份</th><th style='text-align:center;'>資料表名稱</th><th style='text-align:center;'>建檔日期</th><th style='text-align:center;width:170px'>下載</th></tr></thead>";
			let fileCSV11007 = "<a href='./File/Vendor11007.csv'><i class='fas fa-file-csv'  style='font-size:28px'></i></a>&nbsp;<a href='./File/Vendor11007.json'><img src='./images/peter/json-file.png' style='width: 16%;display:inline-block';vertical-align:middle'></a>";
			let fileCSV11006 = "<a href='./File/Vendor11006.csv'><i class='fas fa-file-csv'  style='font-size:28px'></i></a>&nbsp;<a href='./File/Vendor11006.json'><img src='./images/peter/json-file.png' style='width: 16%;display:inline-block';vertical-align:middle'></a>";
			let fileCSV11005 = "<a href='./File/Vendor11005.csv'><i class='fas fa-file-csv'  style='font-size:28px'></i></a>&nbsp;<a href='./File/Vendor11005.json'><img src='./images/peter/json-file.png' style='width: 16%;display:inline-block';vertical-align:middle'></a>";
			
			if(ann==110){
				segment +="<tr><td>1月</td><td>Ven11001</td><td>2020-12-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>2月</td><td>Ven11002</td><td>2021-01-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>3月</td><td>Ven11003</td><td>2021-02-28</td><td>No Data found</td></tr>";
				segment +="<tr><td>4月</td><td>Ven11004</td><td>2021-03-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>5月</td><td>Ven11005</td><td>2021-04-29</td><td>"+fileCSV11005+"</td></tr>";
				segment +="<tr><td>6月</td><td>Ven11006</td><td>2021-05-31</td><td>"+fileCSV11006+"</td></tr>";
				segment +="<tr><td>7月</td><td>Ven11007</td><td>2021-06-27</td><td>"+fileCSV11007+"</td></tr>";
			}else if(ann==109){
				segment +="<tr><td>1月</td><td>Ven10901</td><td>2019-12-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>2月</td><td>Ven10902</td><td>2020-01-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>3月</td><td>Ven10903</td><td>2020-02-28</td><td>No Data found</td></tr>";
				segment +="<tr><td>4月</td><td>Ven10904</td><td>2020-03-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>5月</td><td>Ven10905</td><td>2020-04-29</td><td>No Data found</td></tr>";
				segment +="<tr><td>6月</td><td>Ven10906</td><td>2020-05-31</td><td>No Data found</td></tr>";
				segment +="<tr><td>7月</td><td>Ven10907</td><td>2020-06-27</td><td>No Data found</td></tr>";
				segment +="<tr><td>8月</td><td>Ven10908</td><td>2020-07-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>9月</td><td>Ven10909</td><td>2020-08-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>10月</td><td>Ven10910</td><td>2020-09-28</td><td>No Data found</td></tr>";
				segment +="<tr><td>11月</td><td>Ven10911</td><td>2020-10-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>12月</td><td>Ven10912</td><td>2020-11-29</td><td>No Data found</td></tr>";			
			}else if(ann==108){
				segment +="<tr><td>1月</td><td>Ven10801</td><td>2018-12-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>2月</td><td>Ven10802</td><td>2019-01-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>3月</td><td>Ven10803</td><td>2019-02-28</td><td>No Data found</td></tr>";
				segment +="<tr><td>4月</td><td>Ven10804</td><td>2019-03-30</td><td>No Data found</td></tr>";
				segment +="<tr><td>5月</td><td>Ven10805</td><td>2019-04-29</td><td>No Data found</td></tr>";
				segment +="<tr><td>6月</td><td>Ven10806</td><td>2019-05-31</td><td>No Data found</td></tr>";
				segment +="<tr><td>7月</td><td>Ven10807</td><td>2019-06-27</td><td>No Data found</td></tr>";
				segment +="<tr><td>8月</td><td>Ven10808</td><td>2019-08-01</td><td>No Data found</td></tr>";
				segment +="<tr><td>9月</td><td>Ven10809</td><td>2019-09-05</td><td>No Data found</td></tr>";
				segment +="<tr><td>10月</td><td>Ven10810</td><td>2019-10-04</td><td>No Data found</td></tr>";
				segment +="<tr><td>11月</td><td>Ven10811</td><td>2019-11-02</td><td>No Data found</td></tr>";
				segment +="<tr><td>12月</td><td>Ven10812</td><td>2019-12-01</td><td>No Data found</td></tr>";							
			}else if(ann==107){
				segment +="<tr><td>8月</td><td>Ven10708</td><td>2017-08-03</td><td>No Data found</td></tr>";
				segment +="<tr><td>9月</td><td>Ven10709</td><td>2018-09-09</td><td>No Data found</td></tr>";
				segment +="<tr><td>10月</td><td>Ven10710</td><td>2018-10-04</td><td>No Data found</td></tr>";
				segment +="<tr><td>11月</td><td>Ven10711</td><td>2018-11-02</td><td>No Data found</td></tr>";
				segment +="<tr><td>12月</td><td>Ven10712</td><td>2018-12-03</td><td>No Data found</td></tr>";	
			}
			segment +="</table>"
		return segment;
		}
		
		function showData(textobj){
			let obj = JSON.parse(textobj);
			let size = obj.size;
			let vendors = obj.list;
			let segment = "<table  style='border: 1px solid black;background-color: #FFFF77;color: black; text-align: center;width:460px;'>"
			if ( size==0 ){
				segment += "<tr><th colspan='8' style='text-align:center'>目前沒有您的登記資料</th></tr>"
			}else{
				segment += "<tr><th>編輯</th><th>刪除</th><th>攤商編號</th><th>攤販名稱</th><th>種類</th><th>負責人</th></tr>";
				for ( n=0; n<vendors.length; n++ ){
					 let vendor = vendors[n];
					 tmp = "<c:url value='/modifyVendor/"+ vendor.venID +"' />";
					 segment += "<tr>";
					 segment += "<td> <a href='"+tmp+"'><i class='far fa-edit'></i></td>";
					 segment += "<td class='del'><i class='fas fa-trash-alt'></i></td>";
					 segment += "<td >"+ vendor.venID +"</td>";
					 segment += "<td >"+ vendor.venName +"</td>";
					 segment += "<td >"+ vendor.venType +"</td>";
					 segment += "<td>"+ vendor.venRes +"</td>";
					 segment += "</tr>";
				}
			}
			segment += "</table>";
			return segment;		
		}

		function showBinResult(textobj,result){
			let vendors = JSON.parse(textobj);
			let segment = "<table  style='border: 1px solid black;background-color:#F3F3FA;color: black; text-align: center;width:460px;'>"
				segment += "<tr style='background-color:#A3D1D1;'><th style='width:130px'>攤商編號</th><th style='width:200px'>攤販名稱</th><th>負責人</th><th>得標</th></tr>";
				for ( n=0; n<vendors.length; n++ ){
					 let vendor = vendors[n];
					 segment += "<tr>";
					 segment += "<td >"+ vendor.venID +"</td>";
					 segment += "<td >"+ vendor.venName +"</td>";
					 segment += "<td>"+ vendor.venRes +"</td>";
					 segment += "<td>"+ result +"</td>";
					 segment += "</tr>";
				}
			segment += "</table>";
			return segment;		
		}
 	})
</script>
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
	}
	</script>
</html>