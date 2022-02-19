<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <link href="<c:url value='/sb/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
			System.out.println(basePath);
		%>
<style type="text/css">
input{
	border-radius:5px;
	width:50px;
	hegiht:10px;
}
button{
	border-radius:5px;
	font-family:微軟雅黑;
}
</style>
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
										<a class="nav-link" href="./backstage">攤商管理</a> 
										<a class="nav-link" href="./CCC_BD">廣告牆管理</a> 
							
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseFood" aria-expanded="false"
									aria-controls="pagesCollapseFood"> 商品管理
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseFood"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="./CCC_add">商品新增</a> 
										<a class="nav-link" href="/nightMarket3/CCC_MANAGEMENT">商品內容管理</a> 
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
										<a class="nav-link" href="/nightMarket3/VendorOrder">廠商訂單</a> 
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
										<a class="nav-link" href="./WANG_ADD">新增表演</a> 
										<a class="nav-link" href="./Backstage">表演時段管理</a> 
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
                        <h1 class="mt-4" style="font-family:微軟雅黑;font-weight:bold">攤商管理系統</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"  style="font-family:微軟雅黑;">歡迎回來~感謝大家共同維護</li>
                        </ol>
                       	<div id="bidding"  style="font-family:微軟雅黑;margin-bottom:20px;">
                       		<span id="total">本月登記廠商總數</span>
                       		<span id="NoA" style="color:#0000CC">A區：</span>&nbsp;&nbsp;
                       		<span id="NoB">B區：</span>&nbsp;&nbsp;
                       		<span id="NoC" style="color:#0000CC">C區：</span>&nbsp;&nbsp;
                       		<span id="NoD">D區：</span>&nbsp;&nbsp;
                       		<span id="NoE" style="color:#0000CC">E區：</span>&nbsp;&nbsp;
                       		<hr>
                       		<h5  style="font-family:微軟雅黑;">請輸入欲招攬攤商數</h5>
                       		<label>A</label>
                       		<input type="text" id="neededA">
                       		<label>B</label>
                       		<input type="text" id="neededB">
                       		<label>C</label>
                       		<input type="text" id="neededC">
                       		<label>D</label>
                       		<input type="text" id="neededD">
                       		<label>E</label>
                       		<input type="text" id="neededE">
                       		<button id="close">結標</button>
                       		<button id="reset" onclick="self.location.href='reset'">清空</button>
                       	</div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                攤商資料總覽
                            </div>
                            <div class="card-body">
                            	<table id='datatablesSimple' >
                            		<thead>
                            			<tr>
                            				<th>編輯</th >
                            				<th>刪除</th>
                            				<th>攤商編號</th >
                            				<th>攤販名稱</th>
                            				<th>種類</th>
                            				<th>負責人</th>
                            				<th>位置</th>
                            				<th>招標金額</th>
                            				<th style="text-align:center;">介紹</th>
                            				<th>得標</th>
                            			</tr>
                            		</thead>
                            		<tfoot>
                            			<tr>
                            				<th>編輯</th >
                            				<th>刪除</th>
                            				<th>攤商編號</th>
                            				<th>攤販名稱</th>
                            				<th>種類</th>
                            				<th>負責人</th>
                            				<th>位置</th>
                            				<th>招標金額</th>
                            				<th>介紹</th>
                            				<th>得標</th>
                            			</tr>
                            		</tfoot>
                            		<tbody id="dataArea">
                            		</tbody>
                            	</table>                             
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
    	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>

	    window.addEventListener('load',function(){
	    	let A = document.getElementById('NoA');
	    	let B = document.getElementById('NoB');
	    	let C = document.getElementById('NoC');
	    	let D = document.getElementById('NoD');
	    	let E = document.getElementById('NoE');
	    	let xhr = new XMLHttpRequest();
			xhr.open('GET', "<c:url value='/getCount' />", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
//					console.log(xhr.responseText);
					var str  = (xhr.responseText).replace("[","");
					var str2 = str.replace("]","");
					var arr = str2.split(',');
//					console.log(arr);
					A.insertAdjacentHTML('beforeend',arr[0]);
					B.insertAdjacentHTML('beforeend',arr[1]);
					C.insertAdjacentHTML('beforeend',arr[2]);
					D.insertAdjacentHTML('beforeend',arr[3]);
					E.insertAdjacentHTML('beforeend',arr[4]);
				}
			};		
	    })
			let dataArea = null;
			document.addEventListener('DOMContentLoaded',function() {
			dataArea = document.getElementById("dataArea");
				  
			let xhr = new XMLHttpRequest();
			xhr.open('GET', "<c:url value='/findAllVen' />", true);
			xhr.send();
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
//					console.log(xhr.responseText);
					dataArea.innerHTML = showData(xhr.responseText);	
					
					const datatablesSimple = document.getElementById('datatablesSimple');
				    if (datatablesSimple) {
				        new simpleDatatables.DataTable(datatablesSimple);
				    }
				}else{
// 					console.log("執行中...");
// 					console.log(xhr.readyState);
// 					console.log(xhr.status);
					};
			};				
		})
		
			function showData(textobj){
				let obj = JSON.parse(textobj);
				let size = obj.size;
				let vendors = obj.list;
				let	segment = "";
					for ( n=0; n<vendors.length; n++ ){
						 let vendor = vendors[n];
						 tmp = "<c:url value='/modifyVendor/"+ vendor.venID +"' />";
						 segment += "<tr>";
						 segment += "<td> <a href='"+tmp+"'><i class='far fa-edit'></i></td>";
						 segment += "<td class='del'><i class='fas fa-trash-alt'></i></td>";
						 segment += "<td >"+ vendor.venID +"</td>";
						 segment += "<td >"+ vendor.venName +"</td>";
						 segment += "<td >"+ vendor.venType +"</td>";
						 segment += "<td >"+ vendor.venRes +"</td>";
						 segment += "<td >"+ vendor.venPosition +"</td>";
						 segment += "<td >"+ vendor.venValue +"</td>";
						 segment += "<td style='width:250px'>"+ vendor.venIntro +"</td>";
						 segment += "<td >"+ vendor.venStatus +"</td>";
						 segment += "</tr>";
					}
				return segment;
			}
			$(document).ready(function(){
				$(document.body).on('click','.del', function () {
					  console.log('123');
					  var r=confirm("確定要刪除此筆資料?");
					  if (r==true)
					    {
						  let xhr1 = new XMLHttpRequest();
						  var a = Number($(this).next().text());
						  xhr1.open('GET', "<c:url value='/delete/"+a+"' />", true);
							xhr1.send();
							xhr1.onreadystatechange = function() {
								if (xhr1.readyState == 4 && xhr1.status == 200) {
									  window.alert("刪除成功");
									let xhr2 = new XMLHttpRequest();
									xhr2.open('GET', "<c:url value='/queryByMember' />", true);
									xhr2.send();
									xhr2.onreadystatechange = function() {
										if (xhr2.readyState == 4 && xhr2.status == 200) {
											dataArea.innerHTML = showData(xhr2.responseText);
										}
									};
								}else{
									  window.alert("刪除失敗");
								}
							};
					    }
					  else
					    {
						  window.alert("取消刪除");
					    }
				  })
				  $('#close').on('click',function(){
					  neededA =  document.getElementById('neededA').value;
					  neededB =  document.getElementById('neededB').value;
					  neededC =  document.getElementById('neededC').value;
					  neededD =  document.getElementById('neededD').value;
					  neededE =  document.getElementById('neededE').value;
//					  console.log(neededA);
					  let xhr1 = new XMLHttpRequest();
					  var strings = [neededA,neededB,neededC,neededD,neededE]
					  console.log(strings);
					  xhr1.open('GET', "<c:url value='/close1/"+strings+"' />", true);
						xhr1.send();
						xhr1.onreadystatechange = function() {
							if (xhr1.readyState == 4 && xhr1.status == 200) {
								  window.alert("結標完成");
							}
								  window.location.reload();
				 	 }
				  })
			})
	</script>
		<script  src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script  src="<%=basePath%>/sb/js/scripts.js"></script>
        <script  src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script  src="<%=basePath%>/sb/assets/demo/chart-area-demo.js"></script>
        <script  src="<%=basePath%>/sb/assets/demo/chart-bar-demo.js"></script>
        <script  src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    </body>
</html>
