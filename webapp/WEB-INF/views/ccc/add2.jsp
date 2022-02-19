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
@import
	url("https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css");
	
	
body {
	background: url("images/food02.jpg") no-repeat center center/cover;
}


</style>


<title>YA!夜總匯</title>

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
			<label for="side-menu-switch"> <i class="fa fa-angle-right"></i>
			</label>
		</div>
		<div class="login1">
			<div class="login">
				<form class="form" action="CCC_AC" method="POST"
					enctype="multipart/form-data">
					<h2>新增商品</h2>
					<div class="group">
						<label for="user_name">商品名稱</label> <input type="text"
							name="account" id="user_name" class="user_name"
							style="font-size: 16px">
					</div>
					<div class="group">
						<label for="user_pwd">價格</label> <input type="text" name="pwd"
							id="user_pwd" class="user_pwd" style="font-size: 16px">
					</div>
					<div class="group">
						<label for="user_comment">商品訂製</label>
						<%@ page import="java.util.*" %>
						<%
						int 	  names1 = (int) request.getAttribute("A1");
						ArrayList names2 = new ArrayList((ArrayList) request.getAttribute("A2"));/*編號*/
						%>
						<div>
						<%for (int v=0;v<names1;v++){ %>
							<label> <input type="checkbox" name="hobby" value="<%=names2.get(v) %>" /> <span><%=names2.get(v) %></span></label>
							<%}%>
						</div>
						<div class="group">
							<label for="user_pictureFile">商品照片上傳</label> <input type="file"
								name="pictureFile" id="user_pictureFile"
								accept="image/gif, image/jpeg, image/png">
						</div>
						<div class="btn-group">
							<input type="submit" class="btn" name="processAdd" value="送出">
							<input type="reset" class="btn" value="清除">

						</div>
				</form>
			</div>
		</div>
	</div>
	</div>



</body>
</html>