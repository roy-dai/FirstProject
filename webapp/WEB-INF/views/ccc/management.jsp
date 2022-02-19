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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<link rel='stylesheet' href="<c:url value='/css/ccc/newstyles.css'/>" />
<script>
	let datatablesSimple = null;
</script>



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


<title> YA!夜總匯</title>

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
				<div class="container-fluid px-4">
					<h1 class="mt-4">商品管理</h1>
					<!--餅乾渣-->
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html">個人專區</a></li>
						<li class="breadcrumb-item active">商品管理</li>
					</ol>
					<!--餅乾渣-->
					<a href="<c:url value='/CCC_add'/>" class='btna'>新增商品</a>
					<div>&emsp;</div>
					<div class="card mb-4"></div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 刊登商品
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>多選</th>
										<th>商品名稱</th>
										<th>可選客製化</th>
										<th>價格</th>
										<th>照片狀態</th>
										<th>剩餘庫存</th>
										<th>按鍵</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>多選</th>
										<th>商品名稱</th>
										<th>可選客製化</th>
										<th>價格</th>
										<th>照片狀態</th>
										<th>剩餘庫存</th>
										<th>按鍵</th>
									</tr>
								</tfoot>
								<tbody>

									<form class="form" action="CCC_AC" method="POST">

										<!--迴圈處裡==========================================================================================-->
										<!--  tr>
											<td><input type="checkbox" name="hobby" value="1" />No.1
												<span></span></td>
											<td>珍珠奶茶</td>
											<td>去冰，半糖，+珍珠</td>
											<td>35</td>
											<td>已上傳</td>
											<td><input id="number" type="number" value="1"></td>
											<td>
												<div class="cre">
													<a href='#' class='btna'>修改庫存</a>
													<div>&emsp;</div>
													<a href='#' class='btna'>修改商品</a>
													<div>&emsp;</div>
													<a href='#' class='btna'>刪除商品</a>
												</div>
											</td>
										</tr-->

										<%@ page import="java.util.*"%>
										<%
                                        int names1 = (int) request.getAttribute("list_size");
        								ArrayList c_v_uniformnumbers = new ArrayList((ArrayList) request.getAttribute("c_v_uniformnumbers"));/*編號*/
        								ArrayList c_name = new ArrayList((ArrayList) request.getAttribute("c_name"));/*編號*/
        								ArrayList c_c_price = new ArrayList((ArrayList) request.getAttribute("c_c_price"));/*編號*/
        								ArrayList c_sellerID = new ArrayList((ArrayList) request.getAttribute("c_sellerID"));/*編號*/
        								ArrayList c_image = new ArrayList((ArrayList) request.getAttribute("c_image"));/*編號*/
        								ArrayList type = new ArrayList((ArrayList) request.getAttribute("type"));/*編號*/
                                        %>
										<%for (int v = 0; v < names1; v++) {%>
										<tr>
											<td><span>No.<%=v+1 %></span></td>
											<td><%=c_name.get(v) %></td>
											<td><%=type.get(v) %></td>
											<td><%=c_c_price.get(v) %> 元</td>
											<td><%=c_image.get(v) %></td>
											<td><input id="number" type="number" value="1"></td>
											<td>
												<div class="cre">
													<a href='#' class='btna'>修改庫存</a>
													<div>&emsp;</div>
													<a href="<c:url value='<%="CCC_UPDATE/"+c_v_uniformnumbers.get(v) %>'/>" class='btna'>修改商品</a>
													<div>&emsp;</div>
													<a href="<c:url value='<%="CCC_DELETE/"+c_v_uniformnumbers.get(v) %>'/>" class='btna'>刪除商品</a>
												</div>
											</td>
										</tr>
										<%
									}
									%>

									</form>
									<!--==========================================================================================-->
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2021</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/css/ccc/js/scripts.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/css/ccc/js/datatables-simple-demo.js'/>"></script>





</body>
</html>