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
    
    <!-- 2021/06/28jsp加入這段(開頭)1/3 -->
    <link href="assets/scss/login.css" rel="stylesheet">
    <!-- 2021/06/28jsp加入這段(到這) -->
    <link href="favicon.ico" rel="icon">
    <link href="carousel.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    
    <title>YA!夜總匯</title>

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
<!--             待刪除 -->
<!--             <li class="nav-item" id="memberli" > -->
<%--                <a class="nav-link" href="<c:url value='/r_afterLogin/'/>">個人專區</a> --%>
<!--             </li> -->
            <li class="nav-item"  id="adminli">
               <a class="nav-link" href="<c:url value='/admin/center'/>">管理員專區</a>
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
                <a class="nav-link" id="showNo" style="display:none">${member_no}</a>
            </li>
                <li class="nav-item dropdown" id="logginName">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i>${member_name }</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="<c:url value='/member/index'/>">會員中心</a></li>
                        <li><a class="dropdown-item" href="#">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" id="logout" href="<c:url value='/Logout'/>">登出</a> </li></ul>
             </li>
          </ul>
        </div>
      </nav>
    </header>
<!-------------------------------------------------------------->
<main role="main">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="./images/food01.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>New ! 芋見九份 清源in夜總匯</h1>
                <p>你以為開在九份就真的很好吃嗎? 我覺得其實家裡路口的豆花店都比這家更好吃欸</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">前往訂購</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="./images/food02.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>焼き達人! 台中激旨串燒</h1>
                <p>在台中餓的時候可以考慮吃吃看路邊的慶記,蠻好吃的</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">瀏覽菜單</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="./images/food03.jpeg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>餓霸! 惡魔雞排 </h1>
                <p>派克都比這間便宜也比這間好吃 , 新莊也有間連鎖炸雞排叫做流氓雞排</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">用新台幣下架我啊</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
<!-- --------------------------------------------------------------------- -->
<div></div>
<!-- 2021/06/28jsp加入這段(開頭)3/3 -->
    <div class="login" id="div" style="display: none;">
        <form class="form">
            <h2>會員登入</h2>
		<div id="123">&nbsp;</div>
            <div class="group">
                <label for="user_id">帳號</label>
                <input type="text"  id = "user_id" placeholder="請輸入帳號">
                  <div id="iddiv" >&nbsp;</div>
            </div>
            <div class="group">
                <label for="user_pwd">密碼</label>
                <input type="password"  id = "user_pwd" placeholder="請輸入密碼">
                <div id="pwddiv">&nbsp;</div>
            </div>
            <div class="btn-group">
                <input type="button" class ="btn" id="send" value="登入"/>
                <input type="button" class ="btn" id="leave" value="取消"/>
            </div>
            <hr>
            <a href="<c:url value='/forgetPwd'/>">忘記密碼</a>&emsp;&emsp;
		<a href="<c:url value='/r_singup'/>">免費註冊</a>
        </form>
		<input type="button"  value="一般會員一鍵輸入" onclick="member()">
		<input type="button" value="管理員一鍵輸入" onclick="admin()">
    </div>
   <script>
  function member(){
	  document.getElementById("user_id").value = "dog"
	  document.getElementById("user_pwd").value = "dog";
  }
  function admin(){
	  document.getElementById("user_id").value = "roy";
	  document.getElementById("user_pwd").value = "roy";
  }
  let logginName = document.getElementById("logginName");
   let showLogin = document.getElementById("showLogin");
	let showNo = document.getElementById("showNo");
	let adminli = document.getElementById("adminli");
// 	let memberli = document.getElementById("memberli");
	window.onload=function(){
		 if('${remarks}'!=''){
			   alert('${remarks}')
			  document.getElementById('div').style.display="block"	
		   }
		console.log("有到這個windowload")
		load();
		
		if('${member_rights}'==4){
			adminli.style.display = "block";
// 			memberli.style.display = "none";
			console.log('${member_rights}')
		}else{
			adminli.style.display = "none";
// 			memberli.style.display = "block";
			console.log('${member_rights}')
		}
		
	}
	function load(){
		if( showNo.innerText!=""){
			console.log("有到這個登入完")
 	       	showLogin.style.display="none"
 	       	logginName.style.display="block";
		}else{
			console.log("有到這個訪客未登入")
	       showLogin.style.display="block"
 	       	logginName.style.display="none";
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
// 					 document.getElementById("showNo").innerHTML= result.success
// 					 document.getElementById("showNo").innerHTML= result.success_no
       			 alert("登入成功")
       			 document.getElementById("div").style.display = "none";
					 window.location.reload();
       		   }else if(result.admin){
						div.innerHTML=""
       			   alert("登入成功")
       			   window.location.reload();
//        			   window.location.href="<c:url value='/admin/index'/>"  
       		   }
       	    }
             }
           }
   function setErrorFor(input, message){
	input.innerHTML = "<font color='red' size='-2'>" + message + "</font>";
   hasError = true;
	}
   </script>
<!-- 2021/06/28jsp加入這段(到這) -->
      <!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->

      <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src="./images/topic01.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>本日人氣票選No.1</h2>
            <p>阿不就是臭豆腐,路邊的臭豆腐,為什麼鄉民們投給臭豆腐?你們有這麼喜歡吃臭豆腐?阿不就是臭豆腐,路邊的臭豆腐,為什麼鄉民們投給臭豆腐?你們有這麼喜歡吃臭豆腐?阿不就是臭豆腐,路邊的臭豆腐,為什麼鄉民們投給臭豆腐?你們有這麼喜歡吃臭豆腐?</p>
            <p><a class="btn btn-secondary" href="#" role="button">檢舉投票結果 &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="./images/topic02.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>New最新進駐</h2>
            <p>太陽從東邊出來囉! 太陽從西邊下去囉! 太陽從南邊出來囉 ! 太陽靠北邊走囉 ! 太陽從東邊出來囉! 太陽從西邊下去囉! 太陽從南邊出來囉 ! 太陽靠北邊走囉 ! 太陽從東邊出來囉!  太陽從東邊出來囉! 太陽從西邊下去囉! 太陽從南邊出來囉 ! 太陽靠北邊走囉 ! </p>
            <p><a class="btn btn-secondary" href="#" role="button">撤換廠商 &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="./images/topic03.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>魚憶童年時</h2>
            <p>余憶童稚時，能張目對日，明察秋毫，見藐小微物，必細察其紋理，故時有物外之趣。興正濃，忽有龐然大物，拔山倒樹而來，蓋一癩蝦蟆也。舌一吐而二蟲盡為所吞，余年幼，方出神，不覺呀然驚恐，神定，捉蝦蟆，鞭數十，驅之別院。.</p>
            <p><a class="btn btn-secondary" href="#" role="button">白話文翻譯 &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->


        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">韓國妹的台灣夜市初體驗！ <span class="text-muted">I'll blow your job.</span></h2>
            <p class="lead">😉我的IG 可以follow我唷⬇️🥰
              https://www.instagram.com/milei_foryou/​ 
              
              最近發現桃園的一個厲害的夜市
              不只有夜市美食
              另外一邊是專門遊戲區
              在韓國真的沒看過這麼多夜市遊戲
              這次來挑戰叫波爾球的遊戲
              看起來很容易但是沒想像中簡單....
              
              #韓國人在台灣​ #咪蕾​ #桃園八德興仁夜市​
              聯絡信箱：milei@capsuleinc.cc</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image" src="./images/social01.jpg">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">日本限定 !「2017台灣祭」  <span class="text-muted">讓你在東京鐵塔逛夜市</span></h2>
            <p class="lead">台灣人出國旅遊首選是日本，其實日本人也喜歡來台遊玩，去年日本觀光客訪台人數達190萬人次，東京鐵塔更將趁著今年3月18日至20日，日本三連休假期舉辦「2017台灣祭」活動，宣傳台灣美食、文化及音樂，把台灣著名的夜市原封不動搬到東京鐵塔；曾被傳為《神隱少女》取景地，吸引大批日本來台觀光的「九份」山城美景也將重現。.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image" src="./images/social02.jpg">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">夜市券加倍送，第二波！！<span class="text-muted">夜市券加倍送第二波來了～</span></h2>
            <p class="lead">第一波沒排到不用傷心
              第二波加碼要再發放4萬4千份 !
              
              這次網路登記免排隊
              快分享資訊給所有親朋好友
              準 備 一 起 來 抽 夜 市 券 啦
              
              
              ■如何取得桃園夜市券？
              
              #步驟一：登記
              8月08日(六) 00時00分 系統開放登記
              8月12日(三) 24時00分 系統關閉登記
              
              於【桃園夜市券】網站登記
              ◎活動網站預計於8/6上線
              ◎第一波已領取之民眾不可重複登記</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image" src="./images/socail03.jpg">
          </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->


      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
    </main>
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="assets/js/vendor/holder.min.js"></script>
	
  

</body>
</html>