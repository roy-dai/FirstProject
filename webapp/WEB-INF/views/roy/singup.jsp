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
							<li class="head-dpdn">
								<a href="<c:url value='/member/login'/>"><i class="fa fa-sign-in" aria-hidden="true"></i> 登入</a>
							</li> 
<!-- 							<li class="head-dpdn"> -->
<!-- 								<a href="signup.html"><i class="fa fa-user-plus" aria-hidden="true"></i> 註冊</a> -->
<!-- 							</li>  -->
							<li class="head-dpdn">
								<a href="offers.html"><i class="fa fa-gift" aria-hidden="true"></i> 開發中</a>
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
			<li><a href="#"><i class="fa fa-home"></i> 首頁</a></li> 
			<li class="active">註冊</li>
		</ol>
	</div>
	<div class="login-agileinfo">
	<div   class="form">
		<h2>註冊夜總匯會員</h2>
		<div id='resultMsg' style="height: 18px; font-weight: bold;"></div>
        <label for="id">Email(帳號)(必填) :</label><span id='errorId' style="height: 10px;"></span>
        <input type="email" name="id" id='id'  placeholder="請填寫Email">
        <label for="name">名稱(必填) :</label><span id='errorName' style="height: 10px;"></span>
        <input type="text" name="name" id='name'  placeholder="請填寫名稱">
        <label for="birthday">生日(必填) :</label><span id='errorBirthday' style="height: 10px;"></span>
        <input type="date" name="birthday" id='birthday' size='24'>
        <label for="phone">手機 :</label><span id='errorPhone' style="height: 10px;"></span>
        <input type="text" name="phone" id='phone'  placeholder="請填寫手機號碼">
        <label for="password">密碼(必填) : </label><span id='errorPwd' style="height: 10px;"></span>
        <input type="password" name="password" id='password'  placeholder="請填寫密碼">
        <label for="password2">請再輸入一次密碼 </label><span id='errorPwd' style="height: 10px;"></span>
        <input type="password" name="password2" id='password2'  placeholder="請再次填寫密碼">
         <label>性別(必填) :</label>
         <input type="radio" name="sex" id='boy' size='24' checked="checked" value="男">
		 <label for="boy">男</label>
		 <input type="radio" name="sex" id='girl' size='24' value="女">
		 <label for="girl">女</label>
         <div>
         <input type="button" id='sendData' value="註冊" style="width:40%;float: left;margin-right:20%;" class="btn"/>
         <input type="button"  value="取消" class="btn"  style="width:40%;"  onclick="location.href='<c:url value='/'/>'"/>
         <input type="button"  value="一鍵輸入" class="btn"  style="width:40%;"  onclick="AutoSignUp()" id="btnn"/>
         </div>
	</div>
	<script>
	function AutoSignUp(){
		document.getElementById("id").value="roy2747321@gmail.com";
		document.getElementById("name").value="帝遛祖";
		document.getElementById("birthday").value="1995-07-23";
		document.getElementById("phone").value="0919790730";
		document.getElementById("password").value="royroyroy";
		document.getElementById("password2").value="royroyroy"
	}
	
	
	</script>
	<script>
var hasError = false;
window.onload = function() {
	var id = document.getElementById("id");
	var errorId = document.getElementById('errorId');
	id.onblur = function() {
	  var idValue = document.getElementById("id").value;
	  if (!idValue) {
		  errorId.innerHTML = "<font color='blue' size='-1'>請輸入帳號...</font>";
		return;
	  }
	  if(!isEmail(idValue)){
		  setErrorFor(errorId, "帳號格式錯誤");
		  return;
	  }
	  var xhr = new XMLHttpRequest();
	  xhr.open("POST", "<c:url value='/r_checkId' />", true);
	  xhr.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
	  xhr.send("r_m_id=" + idValue);
	  var message = "";
	  xhr.onreadystatechange = function() {
	    // 伺服器請求完成
	    if (xhr.readyState == 4 && xhr.status == 200) {
		   var result = JSON.parse(xhr.responseText);
		   if (result.id.length == 0) {
			  message = "<font color='green' size='1em'>帳號可用</font>";
		   } else if (	result.id.startsWith("Error") ) {
			  message = "<font color='red' size='1em'>發生錯誤: 代號" + result.id + "</font>";
		   } else {
			  message = "<font color='red' size='1em'>帳號重複，請重新輸入帳號</font>"; 
		   }
		   errorId.innerHTML = message;
	    }
     }
   }
   var sendData = document.getElementById("sendData");
   var sexValue = null;
   var sex = document.getElementsByName("sex");
   sendData.onclick = function() {
	   for(var i in sex){
		   if(sex[i].checked){
			   sexValue=sex[i].value;
		   }
	   }
		hasError = false;
   		// 讀取欄位資料	  
		var idValue = document.getElementById("id").value;
		var nameValue = document.getElementById("name").value;
		var passwordValue = document.getElementById("password").value;
		var password2 = document.getElementById("password2").value;
		var birthdayValue = document.getElementById("birthday").value;
		var phoneValue = document.getElementById("phone").value;
		var errorId = document.getElementById('errorId');
		var errorPwd = document.getElementById('errorPwd');
		var errorName = document.getElementById('errorName');
		var errorBirthday = document.getElementById('errorBirthday');
		var errorPhone = document.getElementById('errorPhone');
		var divResult = document.getElementById('resultMsg');
		if (!idValue){
			setErrorFor(errorId, "請輸入帳號");
   		}else if(!isEmail(idValue)){
   			setErrorFor(errorId, "帳號格式錯誤");  
   		}else {
   			errorId.innerHTML = "";
   		}
		if (!nameValue){
			setErrorFor(errorName, "請輸入名稱");
		} else {
           		errorName.innerHTML = "";
		}
   		if (!passwordValue){
			setErrorFor(errorPwd, "請輸入密碼");
		}  else if(passwordValue!=password2){ 
			setErrorFor(errorPwd, "輸入密碼不一致");
		}  else { 
			errorPwd.innerHTML = "";
       		}
   		if (!birthdayValue){
			setErrorFor(errorBirthday, "請輸入生日");  
   		} else {
   			errorBirthday.innerHTML = "";
   		}
   		if(phoneValue!=""){
   			if(!isPhone(phoneValue)){
   	   			setErrorFor(errorPhone,"手機格式錯誤")
   	   		}else{
   	   			errorPhone.innerHTML = "";
   	   		}
   		}
   		else{
	   			errorPhone.innerHTML = "";
	   		}
   		
   		if (hasError){
       		return false;
   		}
   		var xhr1 = new XMLHttpRequest();
   		xhr1.open("POST", "<c:url value='/r_insert'/>", true);
		var jsonMember = {
			"r_m_id": idValue, 	
			"r_m_name": nameValue,
			"r_m_password": passwordValue,
			"r_m_birthday": birthdayValue,
			"r_m_sex": sexValue,
			"r_m_phone": phoneValue
			
   		}
  		xhr1.setRequestHeader("Content-Type", "application/json");
  		xhr1.send(JSON.stringify(jsonMember));
//      以下敘述錯誤  		
// 		xhr1.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//    		xhr1.send("id=" + idValue + "&name=" + nameValue + "&password=" 
//    				+ passwordValue + "&birthday=" + birthdayValue );
   
   		xhr1.onreadystatechange = function() {
				// 伺服器請求完成
   		if (xhr1.readyState == 4 && (xhr1.status == 200 || xhr1.status == 201) ) {
      		result = JSON.parse(xhr1.responseText);
      		if (result.fail) {
		 		divResult.innerHTML = "<font color='red' >"
					+ result.fail + "</font>";
	  		} else if (result.success) {
	  			swal("","註冊成功，歡迎登入使用本平台","success");
				divResult.innerHTML = "<font color='GREEN'>"
					+ result.success + "</font>";
				errorId.innerHTML = "";	
				errorPwd.innerHTML = "";
				errorName.innerHTML = "";
				errorBirthday.innerHTML = "";
				errorPhone.innerHTML = "";
				setTimeout(function(){
				window.location.href="<c:url value='/'/>";}
				,1500);
	 		} else {
				if (result.idError) {
					errorId.innerHTML = "<font color='green' size='-2'>"
	     				+ result.idError + "</font>";
				} else {
					errorId.innerHTML = "";
				}
				if (result.nameError) {
	      			errorName.innerHTML = "<font color='green' size='-2'>"
						+ result.nameError + "</font>";
				} else {
					errorName.innerHTML = "";
	   			}
				if (result.passwordError) {
          			errorPwd.innerHTML = "<font color='green' size='-2'>"
						+ result.passwordError + "</font>";
				} else {
          			errorPwd.innerHTML = "";
    			}
				if (result.birthdayError) {
	    			errorBirthday.innerHTML = "<font color='green' size='-2'>"
						+ result.birthdayError + "</font>";
				} else {
					errorBirthday.innerHTML = "";
				}
				if (result.phoneError) {
	    			errorPhone.innerHTML = "<font color='green' size='-2'>"
						+ result.phoneError + "</font>";
				} else {
          			errorPhone.innerHTML = "";
				}
      		}
		} 
  	    }
    }
		
}
function isPhone(phone) {
    return /^([0]{1}[9]{1}[0-9]{8})$/.test(phone);
}
function isEmail(email) {
    return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

function setErrorFor(input, message){
	input.innerHTML = "<font color='red' size='-2'>" + message + "</font>";
    hasError = true;
}


</script>
	
	
	
	
	
	
	
	
	
	
	
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
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>