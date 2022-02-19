<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel='stylesheet' href="<c:url value='/css/ccc/add.css'  />" />
<style>
@import	url("https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css");
        body{
            background: url("../../images/food02.jpg")no-repeat center center / cover;
        }
</style>

<title>YA!夜總匯</title>
<script >
	let dataArea = null;
	let restname = null;
	let query = null;
	window.addEventListener('load', function() {
		//變數區========================================================
		//獲得ID是誇號裡面字串的物件
		restname = document.getElementById("restname");
		query = document.getElementById("query");
		dataArea = document.getElementById("dataArea");

		//========================================================
		let xhr = new XMLHttpRequest();
		xhr.open('GET', "<c:url value='/CCC_AD' />", true);
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				console.log(xhr.responseText);
				dataArea.innerHTML = showData(xhr.responseText);
			}
		};
		//送出========================================================
		xhr.send();

		//如果這個按鈕被按了========================================================
		
	})
	function showData(textObj) {
		let obj = JSON.parse(textObj);
		let a = obj.list;//次數
		let b = obj.name;//商品名
		let c = obj.type;//類別
		 
		let segment ="<h2>商品訂製區</h2>";
		segment +="<div class='group'>";
		segment +="<label for='user_name'>"+b+"</label>";
		segment +="</div>";
		if (a == 0) {
			segment += "";
		} else {
			for (m = 0;m < a; m++){
				let db = "z"+m;
				let xb = "x"+m;
				let d = obj[db];//類別細項
				let x = obj[xb];//類別細項				
				segment +=" <div class='group' >";
				segment +=" <label for='user_pictureFile'>"+c[m]+"</label>";
				segment +="<div>";
				for (n = 0; n < d.length; n++) {
					segment +=" <input type='radio' name='test"+m+"' id='"+m+n+"' value='"+x[n]+"' hidden />";
					segment +="<label for='"+m+n+"'class='radio-beauty'></label>"
					segment +="<span>"+d[n]+"</span>";
				}
			}	
		}
		segment +="</div>";
//----------------------------------------------------------------------------------------------------------------------------------------------
		segment +="<div class='group'>";
		segment +="<label for='user_pwd'>數量</label> <input type='text' name='t1' 	id='user_pwd' class='user_pwd' style='font-size: 16px'>";
		segment +="</div>";
//----------------------------------------------------------------------------------------------------------------------------------------------

		return segment;
	}
</script>
</head>

<body>
<header class="main-header">
		<div class="container1">
			<div class="main-n">
				<a class="na" href="http://localhost:8080/nightMarket3">Yeah!夜市夜總匯</a>
			</div>
			<nav class="main-nav">
				<a href="<c:url value='/r_afterLogin/'/>">個人專區</a>
				 <a href="<c:url value='/CCC'/>">逛夜市</a>
				  <a href="<c:url value='/MIKE'/>">購物車</a> 
				  <a href="<c:url value='/PETER'/>">競標</a>
				  <a href="<c:url value='/WANG'/>">活動</a>
				  <a href="<c:url value='/NEAL'/>">討論區</a>
			</nav>
		</div>
	</header>
    <input type="checkbox" name="" id="side-menu-switch">
    <div class="side">
        <div class="side-menu">
            <form>
                <input type="search">
                <button>搜索</button>
            </form>
            <ul class="nav">
				<li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>賣家專區</a>
					<ul>
						<li><a href="<c:url value='/CCC_add'/>">商品新增</a></li>
						<li><a href="<c:url value='/CCC_management'/>">上架商品管理</a></li>
						<li><a href="#">商品訂製</a></li>
						<li><a href="#">預留欄位</a>
							<ul>
								<li><a href="#">測試1-4-1</a></li>
								<li><a href="#">測試1-4-2</a></li>
								<li><a href="#">測試1-4-3</a></li>
								<li><a href="#">測試1-4-4</a></li>
							</ul></li>
					</ul></li>
                <li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>測試2</a></li>
                <li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>測試3</a></li>
                <li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>測試4</a></li>
                <li><a href="#"><i class="fa fa-users" aria-hidden="true"></i>測試5</a></li>

            </ul>
            <label for="side-menu-switch">
                <i class="fa fa-angle-right"></i>
            </label>

        </div>
   
        <div class="login1">
            <div class="login">
                <form class="form"  action="../../MIKE_A" method="POST" enctype="multipart/form-data" >    
                    <div id='dataArea'>
                    </div>  
                    <div class="btn-group">
                        <input type="submit" class ="btn" name = "processAdd" value="送出">
						<input type="reset" class ="btn" value="取消">                    
					</div>
                </form>
            </div>
        </div>
    </div>
    </div>
</body>
