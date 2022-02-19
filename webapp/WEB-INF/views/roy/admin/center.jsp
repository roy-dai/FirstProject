<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>YA!夜總匯</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="<c:url value='..\roy\css\styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
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
						
						<div class="sb-sidenav-menu-heading">功能列表</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 功能表單
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="/nightMarket3/admin/center">會員管理</a>
								
								
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError">廠商管理
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="<c:url value='/backstage'/>">攤商管理</a> 
										<a class="nav-link" href="<c:url value='/CCC_BD'/>">廣告牆管理</a> 
							
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseOrder" aria-expanded="false"
									aria-controls="pagesCollapseOrder"> 訂單管理
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseOrder"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="/nightMarket3/orderManagement">會員訂單</a> 
										<a class="nav-link" href="500.html">爭議帳款</a>
									</nav>
								</div>
								
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAct" aria-expanded="false"
									aria-controls="pagesCollapseAct"> 表演管理
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAct"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="<c:url value='/WANG_ADD'/>"">新增表演</a> 
										<a class="nav-link" href="<c:url value='/Backstage'/>"">表演時段管理</a> 
									</nav>
								</div>
								
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseComment" aria-expanded="false"
									aria-controls="pagesCollapseComment"> 評論管理
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseComment"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="#">討論區管理</a> 
										<a class="nav-link" href="#">訂單評價管理</a> 
										<a class="nav-link" href="#">檢舉回報</a>
									</nav>
								</div>
								
			<!-- ---------------------------------------------------------- -->				
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">附加元件</div>
						<a class="nav-link" href="#">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 圖表
						</a> <a class="nav-link" href="#">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 表格
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
                        <h1 class="mt-4">管理員中心</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                會員資料
                            </div>
                            <div class="card-body" id="somedivS">
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
	<script>
		let updatemessage = '${updatemessage}';
		window.onload = function all() {
			if(updatemessage!=null && updatemessage!=""){
				alert("修改成功")	
				window.location.reload();				
			}
			var divs = document.getElementById("somedivS");
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "<c:url value='/r_showAll'/>", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					divs.innerHTML =  showData(xhr.responseText);
					 const datatablesSimple = document.getElementById('datatablesSimple');
					    if (datatablesSimple) {
					        new simpleDatatables.DataTable(datatablesSimple);
					    }
				}
				}
			}
		function showData(textObj){
			let obj = JSON.parse(textObj);
			let size = obj.size;
			let member = obj.list;
			let content = "<table id='datatablesSimple'>";
		    content += "<thead><tr><th>修改</th><th>會員編號</th><th>帳號</th><th>名稱</th><th>手機</th><th>性別</th><th>生日</th><th>權限</th><th>創建日期</th></tr></thead><tbody>";
			for (var i = 0; i < member.length; i++) {
					let members = member[i];
					var rights = '';
					if(members.r_m_rights =='1'){
						rights="一般會員"
					}else if(members.r_m_rights =='4'){
						rights="管理員"
					}else if(members.r_m_rights == '2'){
						rights="停用"
					}else if(members.r_m_rights == '3'){
						rights="攤販"
					}
				tmp = "<c:url value='/r_edit/' />";
				content += "<tr><td><a href='" + tmp + members.r_m_no + "'>編輯</a>"
						+ "<td>"+ members.r_m_no+ "</td>"
						+ "<td>"+ members.r_m_id+ "</td>"
						+ "<td>"+ members.r_m_name+ "</td>"
						+ "<td>"+ members.r_m_phone+ "</td>" 
						+ "<td>"+ members.r_m_sex+ "</td>"
						+ "<td>"+ members.r_m_birthday+"</td>"
						+ "<td>"+ rights+ "</td>"
						+ "<td>"+ members.r_m_createdate + "</td></tr>";
				}
			content += "</tbody></table>";
			console.log("先執行")
			return content;
		}
	</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<c:url value='../roy/js/scripts.js'/>"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<%--         <script src="<c:url value='../roy/demo/chart-area-demo.js'/>"></script> --%>
<%--         <script src="<c:url value='../roy/demo/chart-bar-demo.js'/>"></script> --%>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<%--         <script src="<c:url value='../roy/js/datatables-simple-demo.js'/>"></script> --%>
    </body>
</html>
