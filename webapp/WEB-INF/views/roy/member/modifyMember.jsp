<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>YA!夜總匯</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
   .form .btn{
	font-size: 1em;
    color: #fff;
    background: #08cae2;
    outline: none;
    border: none;
    cursor: pointer;
    padding: 1em;
    -webkit-appearance: none;
    width: 100%;
     margin: 2em 0;  
	-webkit-transition: .5s all;
	-moz-transition: .5s all;
	-o-transition: .5s all;
	-ms-transition: .5s all;
    transition: .5s all;
    }
	.form .btn:hover {   
	-webkit-box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.58);
	-moz-box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.58);  
	box-shadow: 0 3px 3px 0 rgba(0, 0, 0, 0.58);
	letter-spacing:3px; 
	}

label  {
	margin-top: 1em;
	margin-right: 1em;
	font-size: 17px;
	line-height: 24px;

  
}
.login-agileinfo input[type="text"], .login-agileinfo input[type="date"],.login-agileinfo input[type="password"]{
	margin: 0.5em 0;
	color:black;
	width: 100%;
	font-size: 1.3em;
}
fieldset:disabled input[type="text"],fieldset:disabled input[type="date"],fieldset:disabled input[type="password"]{
	background-color: #ccc;
}
  span.error {
	color: red;
	display: inline-block;
	font-size: 5pt;
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
</head>
<body> 
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
			<li><a href="<c:url value='/'/>"><i class="fa fa-home"></i> 首頁</a></li> 
			<li class="active">個人資料</li>
		</ol>
	</div>
	<div class="login-agileinfo">
	<form:form method="POST" modelAttribute="member" class="form">
        <form:hidden path="r_m_rights"/>
        <form:hidden path="r_m_no" />
		<h2>修改會員資料</h2>
		<fieldset disabled id="disabled">
		<span id="span"></span>
        <label for="id">帳號:</label><span style="color: red" id="span">${idFail}</span>
        <form:errors path="r_m_id" cssClass="error"/>
        <form:input path="r_m_id" name="id" id="id"/>
        <label for="name">名稱 :</label>
        <form:errors path="r_m_name" cssClass="error"/>
        <form:input path="r_m_name" type="text" name="name" id='name'></form:input>
        <label for="birthday">生日 :</label>
        <form:errors path="r_m_birthday" cssClass="error"/>
          <form:input path="r_m_birthday" type="date" name="birthday" 	id='birthday'></form:input>
        <label for="phone">手機 :</label>
         <form:input path="r_m_phone" type="text" name="phone" id='phone' size='24'></form:input>
        <form:errors path="r_m_phone" cssClass="error"/>
        <label for="password">密碼 : </label>
        <form:errors path="r_m_password" cssClass="error"/>
         <form:input path="r_m_password" type="password"  name="password" id='password' size='24'></form:input>
            <label>性別 :</label>
            <form:errors path="r_m_sex" cssClass="error"/>
            <form:radiobuttons path="r_m_sex" items="${r_sex}"/>
            <div>
            <input type="submit" id='updateData' value="修改送出" style="width:40%;float: left;margin-right:20%;" class="btn"/>
            <input type="button"  value="取消" class="btn"  style="width:40%;"  onclick="location.href='<c:url value='/r_afterLogin/'/>'"/>
            </div>
            </fieldset>
            <input type="button"  value="修改" class="btn" id="openbtn"/>
	</form:form>
	
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
	<script>
	window.onload = function(){
	var rights = '${member_rights}';
	var showLogin = document.getElementById("showLogin");
	var showName = document.getElementById("showName");
	var adminLi = document.getElementById("adminLi");
	if('${error}'!=''){
		document.getElementById("disabled").disabled=false
		}
	if('${success}'!=''){
		swal("",'${success}',"success");
		}
		if(rights!=null&&rights!=''){
			showName.style.display = 'block'
			if(rights==4){
				adminLi.style.display = 'block'
			}else if(rights==1){
				adminLi.style.display = 'none'
			}
		}else{
		showLogin.style.display = 'block';
		showName.style.display = 'none'
		}
		if('${loginSuccess}'!=''){
			swal("",'${loginSuccess}',"success");
		}
	}
	document.getElementById("openbtn").onclick = function(){
		document.getElementById("disabled").disabled=false
	}
	
	
	
	
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value='/front/js/bootstrap.js'/>"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>