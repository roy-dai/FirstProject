<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
     <link href="assets/scss/login.css" rel="stylesheet">
    <link rel="icon" href="favicon.ico">
    <link href="carousel.css" rel="stylesheet">
    
    <title> YA!夜總匯</title>

<style>
    body{
        padding-top: 60px;
    }
    nav{
        background-color: #000;
        text-align: center;
        position: fixed;
        top:0;
        left: 0;
        width: 100%;
        z-index:10;
    }
    nav a{
        color: #fff;
        text-decoration: none;
        display: inline-block;
        padding: 10px 20px;
    }
   .wrap{
            width: 960px;
            margin: auto;
            display: flex;
        }
        .item{        
            width: 190px;
            margin: 10px;
            border: 1px solid #fff;
            padding: 10px;
            position: relative;      

        }
        .item img{
            width: 100%;
        }

        .item .tab{
            background-color: crimson;
            color: #fff;
            padding: 6px 10px;
            position: absolute;
            top: 0;
            left: 0;            
        }
       .a{
         margin: auto;
       }
</style>
    </head>    

<body>

<!-------------------------------------------------------------->  
     <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="http://localhost:8080/nightMarket3">Yeah!夜市夜總匯</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="http://localhost:8080/nightMarket3">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
<%--                <a class="nav-link" href="<c:url value='/ROY'/>">個人專區</a> --%>
               <a class="nav-link" href="<c:url value='/r_afterLogin/'/>">個人專區</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/CCC'/>">逛夜市</a>
          </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/MIKE'/>">購物車</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<c:url value='/PETER'/>">競標</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<c:url value='/WANG'/>">活動</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/queryStoreJudge' />">討論區</a>
            </li>
            <!-- 2021/06/28jsp加入這段(開頭)2/3 -->
            <li class="nav-item">
                <a class="nav-link" id="showLogin" href="#">登入</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="logout" href="<c:url value='/Logout'/>">登出</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="showId">${member_name}</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="showNo" style="display:none">${member_no}</a>
            </li>
            <!-- 2021/06/28jsp加入這段(到這) -->
            

          </ul>
        </div>
      </nav>
    </header>
   <div></div>
<!-- 2021/06/28jsp加入這段(開頭)3/3 -->
    <div class="login" id="div" style="display: none;">
        <form class="form">
            <h2>會員登入</h2>
		<div id="123"></div>
            <div class="group">
                <label for="user_id">帳號</label>
                <input type="text" name = "" id = "user_id" placeholder="請輸入帳號">
                  <div id="iddiv" ></div>
            </div>
            <div class="group">
                <label for="user_pwd">密碼</label>
                <input type="password" name = "" id = "user_pwd" placeholder="請輸入密碼">
                <div id="pwddiv"></div>
            </div>
            <div class="btn-group">
                <input type="button" class ="btn" id="send" value="登入"/>
                <input type="button" class ="btn" id="leave" value="取消"/>
            </div>
            <a href="#">忘記密碼</a>
		<a href="<c:url value='/r_singup'/>">沒帳號嗎?註冊一個吧</a>
        </form>
    </div>
   <script>
   let showLogin = document.getElementById("showLogin");
	let logout = document.getElementById("logout");
	let showId = document.getElementById("showId");
	window.onload=function(){
		console.log("有到這個windowload")
		load();
	}
	function load(){
		if( showId.innerText!=""){
			console.log("有到這個訪客未登入")
			logout.style.display="block"
 	       	showLogin.style.display="none"
		}else{
			console.log("有到這個登入完")
	       logout.style.display="none"
	       showLogin.style.display="block"
    }
   }   
	
	
	
  let leave = document.getElementById("leave");
  
  
  showLogin.onclick = function(){
      document.getElementById("div").style.display = "block";
  }
  leave.onclick = function(){
      document.getElementById("div").style.display = "none";
  }
  
  
  
   	var div = document.getElementById("123");
   	var message = "";
       var hasError = false;
       var sendData = document.getElementById("send");
       sendData.onclick = function(){
           var idValue = document.getElementById("user_id").value;
           var pwdValue = document.getElementById("user_pwd").value;
           var iddiv = document.getElementById("iddiv")
           var pwddiv = document.getElementById("pwddiv")
           if(!idValue){
               setErrorFor(iddiv,"請輸入帳號");
           }else{
               iddiv.innerHTML = ""
           }if(!pwdValue){
               setErrorFor(pwddiv,"請輸入密碼")
               
           }else{
               pwddiv.innerHTML = ""
           }
          var xhr1 = new XMLHttpRequest();
          xhr1.open("POST","<c:url value='/R_login'/>",true);
          var jsonMember = {
       		   "r_m_id": idValue,
       		   "r_m_password": pwdValue
          }
          xhr1.setRequestHeader("Content-Type", "application/json");
          xhr1.send(JSON.stringify(jsonMember));        
          xhr1.onreadystatechange = function(){
       	   if(xhr1.readyState == 4 && xhr1.status == 200){
       		   var result = JSON.parse(xhr1.responseText);
       		   if(result.fail){
       			  div.innerHTML="<font color = 'red' size='-2'>"
       			  + result.fail + "</font>";
       		   }else if(result.success){
						div.innerHTML="";
// 					 document.getElementById("showId").innerHTML= result.success
// 					 document.getElementById("showNo").innerHTML= result.success_no
       			 alert("登入成功")
       			 document.getElementById("div").style.display = "none";
					 window.location.reload();
       		   }else if(result.admin){
						div.innerHTML=""
       			   alert("登入成功")
       			   window.location.href="<c:url value='/admin/member'/>"  
       		   }
       	    }
             }
           }
   function setErrorFor(input, message){
	input.innerHTML = "<font color='red' size='-2'>" + message + "</font>";
   hasError = true;
	}
   </script>
<!-------------------------------------------------------------->

    
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="assets/js/vendor/holder.min.js"></script>

  

</body>
</html>