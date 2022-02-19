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
						<a class="nav-link" href="./CCC_add">
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
			
<!-- 從這裡開始你可以自己設定你要的 文字 / 表格內容呈現   從這裡開始你可以自己設定你要的 文字 / 表格內容呈現  從這裡開始你可以自己設定你要的 文字 / 表格內容呈現  從這裡開始你可以自己設定你要的 文字 / 表格內容呈現 -->			
				<div class="container-fluid px-4">
					<h1 class="mt-4">訂單管理</h1>
					<!--123123123123123231231231231231231232-->
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html">帳務管理</a></li>
						<li class="breadcrumb-item active">訂單管理</li>
					</ol>
					<!--13123123123123123123123123123123123123-->
					<div class="card mb-4"></div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 訂單管理
						</div>
						<div class="card-body">
							<table id="datatablesSimple">
								<thead>
									<tr>
										<th>編號</th>
										<th>訂單代碼</th>
										<th>下單日期</th>
										<th>會員編號</th>
										<th>商品名稱</th>
										<th>購買數量</th>
										<th>訂單金額</th>
										<th>訂單狀態</th>
										<th>調整</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>編號</th>
										<th>訂單代碼</th>
										<th>下單日期</th>
										<th>會員編號</th>
										<th>商品名稱</th>
										<th>購買數量</th>
										<th>訂單金額</th>
										<th>訂單狀態</th>
										<th>調整</th>
									</tr>
								</tfoot>
								<tbody>
<!-- 從這裡開始你可以自己設定你要的 文字 / 表格內容呈現   從這裡開始你可以自己設定你要的 文字 / 表格內容呈現  從這裡開始你可以自己設定你要的 文字 / 表格內容呈現  從這裡開始你可以自己設定你要的 文字 / 表格內容呈現 -->								
								
								
<!--======EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼   EL區用來呈現資料跟埋碼   EL區用來呈現資料跟埋碼  EL區用來呈現資料跟埋碼   EL區用來呈現資料跟埋碼   EL區用來呈現資料跟埋碼   EL區用來呈現資料跟埋碼       EL區    EL區    EL區    EL區   EL區    EL區    EL區   EL區   EL區  ===========================-->
										<form class="form" action="#" method="POST">
										
										
										<%@ page import="java.util.*"%>
										<%
										
                                        int size = (int) request.getAttribute("order_Size");
										
										ArrayList order_Id = new ArrayList((ArrayList) request.getAttribute("order_Id"));/*編號*/
										ArrayList order_No = new ArrayList((ArrayList) request.getAttribute("order_No"));/*編號*/
										ArrayList order_Date = new ArrayList((ArrayList) request.getAttribute("order_Date"));/*編號*/
										ArrayList buyer = new ArrayList((ArrayList) request.getAttribute("buyer"));/*編號*/
										ArrayList qty = new ArrayList((ArrayList) request.getAttribute("qty"));/*編號*/
										ArrayList total_Price = new ArrayList((ArrayList) request.getAttribute("total_Price"));/*編號*/
										ArrayList order_State = new ArrayList((ArrayList) request.getAttribute("order_State"));/*編號*/
										ArrayList v_id = new ArrayList((ArrayList) request.getAttribute("v_id"));/*編號*/
										ArrayList c_name = new ArrayList((ArrayList) request.getAttribute("c_name"));/*編號*/
                                       
										%>
										<%for (int counter = 0;  counter < size; counter++) {%>
										<tr>
											<td><input type="checkbox" name="hobby" value="<%=order_Id.get(counter) %>" />No.<%=counter+1 %>
												<span></span></td>
											<td><%= order_No.get(counter) %></td>
											<td><%= order_Date.get(counter) %></td>
											<td><%= buyer.get(counter) %></td>
											<td><%= c_name.get(counter) %></td>
											<td><input id="number" type="number" value="<%= qty.get(counter) %>"></td>
											<td><%= total_Price.get(counter) %></td>
											<td><%= order_State.get(counter) %></td>
									
											<td>
												<div class="cre">
													<a href='#' class='btna'>通知付款</a>
													<div>&emsp;</div>
													<a href="<c:url value='<%="MIKE_UPDATE/" + order_Id.get(counter) %>'/>" class='btna'>儲存變更</a>
													<div>&emsp;</div>
													<a href="<c:url value='<%="MIKE_DELETE/" + order_Id.get(counter) %>'/>" class='btna'>刪除訂單</a>
												</div>
											</td>
										</tr>
										<%
									}
									%>
										
										
										
										</form>
<!--======EL區 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 EL區用來呈現資料跟埋碼 ㄒ   EL區    EL區    EL區    EL區   EL區    EL區    EL區   EL區   EL區  ===========-->
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
						<div class="text-muted">Copyright &copy; YA!NightMarketCollection夜總匯 2021</div>
						<div>
							<a href="#">隱私政策</a> &middot; <a href="#">服務約定
								&amp; 條款</a>
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