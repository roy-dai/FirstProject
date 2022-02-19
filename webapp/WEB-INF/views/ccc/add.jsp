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
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link rel='stylesheet' href="<c:url value='/css/ccc/newstyles.css'  />" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<style>

 body{
		background: url("images/food02.jpg") no-repeat center center/cover;
        display: flex;
        justify-content: center;
        align-items: center;
        }
        
  .login1 {
            width: 100%;
            height: 100%;
        }

        .login {
            width: 900px;
            height: 600px;
            background-color: rgba(0, 0, 0, .5);
            border-radius: 10px;
            border: 10px solid #fff;
            box-shadow: 0 0 60px #000;
            backdrop-filter: blur(3px);
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .form {
            width: 400px;
            color: #fff;
        }

        .form h2 {
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #fff;
        }

        .form .group {
            margin-bottom: 20px;
        }

        .form label {
            line-height: 2;
        }

        .form input {
            width: 100%;
            line-height: 3;
            border-radius: 5px;
        }

        .user_name,
        .user_pwd,
        .user_comment,
        .container3 {
            border: 1px solid #aaa;
        }

        .form .btn-group {
            font-size: 0;
        }

        .form .btn {
            font-size: 20px;
            border-radius: 5px;
            border: none;
            background-color: #6ab4fe;
            width: 190px;
            padding: 10px 0;
        }

        .form .btn+.btn {
            margin-left: 20px;
        }

        .container3 {
            position: relative;
            width: 400 px;
            height: 38px;
            background-color: #f0f0f0;
            border: 1px solid #ececec;
            border-radius: 5px;

        }

        .beauty-select {
            background-color: #fff;
            height: 38px;
            width: 400px;
            padding: 0 10px;
            line-height: 28px;
            border: 1px solid #ececec;
            background: url(w.png) no-repeat;
            background-position: 95% 50%;
            border-radius: 5px;



            -webkit-appearance: none;
            /*去掉样式 for chrome*/
            appearance: none;
            /*去掉样式*/
            -moz-appearance: none;
            /*去掉样式*/
        }

        .radio-beauty {
            width: 16px;
            height: 16px;
            box-sizing: border-box;
            display: inline-block;
            border: 1px solid #e6e6e6;
            margin: 2px 5px;
            border-radius: 50%;
            transition: 0.2s;

        }

        input[type="radio"]:checked+.radio-beauty {
            border: solid 1px green;
            padding: 3px;
            background-color: green;
            background-clip: content-box;
            box-shadow: inset 0 0 1px rgba(0, 128, 0, 0.2), 0 0 3px green;
        }
    /*---------------------------------------------------------------*/
        label {
            padding: 0;
            margin-right: 12px;
            cursor: pointer;
        }

        input[type=checkbox] {
            display: none;
        }

        input[type=checkbox]+span {
            display: inline-block;
            padding-left: 26px;
            line-height: 20px;
            background: url(cbx-off.svg) no-repeat;
            user-select: none;
        }

        input[type=checkbox]:checked+span {
            background: url(cbx-on.svg) no-repeat;
        }

        label {
            padding: 0;
            margin-right: 3px;
            cursor: pointer;
        }

        input[type=checkbox] {
            display: none;
        }

        input[type=checkbox]+span {
            display: inline-block;
            background-color: #fff;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid gray;
            color: #000;
            user-select: none;
            /* 防止文字被滑鼠選取反白 */
        }

        input[type=checkbox]:checked+span {
            color: #fff;
            background-color: green;
        }
</style>


<title>夜總匯</title>

</head>

<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="/nightMarket3/BackStage">YA!夜總匯管理頁面</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="搜尋功能..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i>${member_name}</a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="<c:url value='/'/>">回首頁</a></li>
					<li>
						<hr class="dropdown-divider" />
					</li>
					<li><a class="dropdown-item" href="/nightMarket3/Logout">登出</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">

					<div class="sb-sidenav-menu-heading">商品管理</div>
						<a class="nav-link" href="<c:url value='/CCC_add'/>">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 商品新增
						</a> 
						<a class="nav-link" href="/nightMarket3/CCC_MANAGEMENT">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 商品內容管理
						</a>
					<div class="sb-sidenav-menu-heading">訂單管理</div>
						<a class="nav-link" href="/nightMarket3/VendorOrder">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 廠商訂單
						</a> 
						<a class="nav-link" href="#">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 爭議帳款
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">切記:</div>
					離開頁面時請登出帳號 以免資料外洩即遭受任意修改
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>

				<div class="login1">
					<div class="login">
						<form class="form" action="CCC_AC" method="POST" enctype="multipart/form-data">
							<h2>新增商品</h2>
							<div class="group">
								<label for="user_name">商品名稱</label> <input type="text"
									name="account" id="user_name" class="user_name"
									style="font-size: 16px">
							</div>
							<div class="group">
								<label for="user_pwd">價格</label> 
								<input type="text" name="pwd" id="user_pwd" class="user_pwd" style="font-size: 16px">
							</div>
							<div class="group">
								<label for="user_comment">商品訂製</label>
								<%@ page import="java.util.*"%>
								<%
								int names1 = (int) request.getAttribute("A1");
								ArrayList names2 = new ArrayList((ArrayList) request.getAttribute("A2"));/*編號*/
								%>
								<div>
									<%
									for (int v = 0; v < names1; v++) {
									%>
									<label> <input type="checkbox" name="hobby"
										value="<%=names2.get(v)%>" /> <span><%=names2.get(v)%></span></label>
									<%
									}
									%>
									
								</div>
								<div class="group">
									<label for="user_pictureFile">商品照片上傳</label> <input type="file"
										name="pictureFile" id="user_pictureFile"
										accept="image/gif, image/jpeg, image/png">
									
								</div>
								<div class="btn-group">
									<input type="submit" class="btn" name="processAdd" value="送出">
									<input type="button" value="一鍵輸入" onclick='quickInput()' class="btn">
								</div>

						</form>
						<script>
							function quickInput(){
								document.getElementById("user_name").value="芋香奶茶";
								document.getElementById("user_pwd").value="45";
													}
                        </script>
					</div>
				</div>


			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/css/ccc/assets/demo/chart-bar-demo.js'/>"></script>
	<script src="<c:url value='/css/ccc/assets/demo/chart-pie-demo.js'/>"></script>
	<script src="<c:url value='/css/ccc/assets/demo/chart-area-demo.js'/>"></script>
	<script src="<c:url value='/css/ccc/js/scripts.js'/>"></script>

</body>
</html>