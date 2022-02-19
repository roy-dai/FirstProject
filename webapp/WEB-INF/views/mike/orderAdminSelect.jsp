<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel='stylesheet' href="${pageContext.request.contextPath}/assets/css/main.css">
<title> YA!夜總匯</title>

<script>

	if("${success}"=="管理員登入成功"){alert('${"管理員登入成功!"}')}
	
	var adminId = "${adminId}";
	// 踢除非管理員
	if(!adminId){
		alert('您不具有管理者權限，請登入後再試。');
		top.location = "<c:url value='/gotoAdminIndex.controller' />";
	}
	
	window.onload = function(){
	// console.log(adminId);
		
		//如果有登入，隱藏登入標籤
		var loginHref = document.getElementById('loginHref');
		var logoutHref = document.getElementById('logoutHref');
		var userId = document.getElementById('userId');
		var userPic = document.getElementById('userPic');
		if(adminId){
			loginHref.hidden = true;
			logoutHref.style.visibility = "visible";	//有登入才會show登出標籤(預設為hidden)
		}
		
	}
</script>

</head>

<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner mini-posts">


							<!-- Header -->
							<!-- 這邊把header include進來 -->
								<%@include file="../universal/adminHeader.jsp" %>
								
								<h1>訂單管理</h1>
								<!-- <ul class="actions special"> -->
								<ul class="actions fit">
									<li style="width: 70%;" id="searchBarHanger1"><input type="search" id="searchBar" placeholder='搜尋'></li>
									<li style="width: 35%;" id="searchBarHanger2" hidden><input class="" type='search' id='searchBar' placeholder='搜尋'></li>
									<li style="width: 20%;">
										<select class="fit" id='searchBy'>
											<option value='u_id'selected disabled hidden>選擇查詢參數...</option>
											<option value='u_id'>會員帳號</option>
											<option value='o_id'>訂單編號</option>
											<option value='p_id'>課程代號</option>
											<option value='p_name'>課程名稱</option>
											<option value='u_lastname'>會員姓氏</option>
											<option value='u_firstname'>會員名字</option>
											<option value='o_status'>訂單狀態</option>
											<option value='o_amt'>訂單小計</option>
											<option value='o_date'>訂單日期</option>
										</select>
									</li>
									<li style="width: 10%;" class=""><button type="submit" class="" id="searchBtn" disabled>查詢</button></li>
								</ul>
								<h1 id='topLogo'></h1>
								<hr id="pageHref" class="">
								<form>
									<!-- 秀出所有Order_Info (希望之後能每20項分一頁) -->
									<table class="alt" style="border: 2px " >
										<thead id="theadArea"></thead>
										<tbody id="tbodyArea"></tbody>
									</table>
									<h1 id='logo' style="background-color: red"></h1>
									<hr>
									
								</form>
								<button name="todo" id="insert" value="insertAdmin" 
								onclick="location.href='http:\/\/localhost:8080/studiehub/order.controller/adminInsert'">新增</button>
								<button name="todo" id="delete" value="deleteAdmin">刪除勾選資料</button>
								<button id='toAdminIndexBtn'>回管理者首頁</button>
								<button id='toClientIndexBtn'>回使用者首頁</button>
								

								

						</div>
					</div>

				<!-- Sidebar -->
				<!-- 這邊把side bar include進來 -->
				<%@include file="../universal/adminSidebar.jsp" %>  

			</div>

		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/custom/TaJenUtils.js"></script>

		<!--********************************** M      Y      S      C      R      I      P      T ******************************************-->
			<script>
				// 不用等DOM就可以先宣告的變數們
				let segments = [];
				let counter = 0;
				let pageNum = 0;
				let rowNum = 0;
				let rowPerPage = 10;
				let maxPageNum = 10;

				// 【自訂函數 1】掛頁籤函數
				let appendPegination = function(){
					pageNum = Math.ceil((segments.length)/rowPerPage);
					let temp0 = "";
					let tempPageNum = (pageNum > maxPageNum)? maxPageNum : pageNum;
					for(let i = 0; i < tempPageNum; i++){
						temp0 += "<button class='pageBtn' data-index='" + i + "' type='button' id='btnPage" + i + "'>" + (i + 1) + "</button>&nbsp;&nbsp;&nbsp;";
					}
					$(pageHref).html(temp0);
					for(let i = 0; i < tempPageNum; i++){
						$('#btnPage' + i).on('click', function(){
							$('.pageBtn').removeClass('primary');
							$('#btnPage' + i).addClass('primary');
						})
					}
					$('#btnPage0').addClass('primary');
					
					$('.pageBtn').on('click', function(){
						let pageIndex = $(this).attr('data-index');
						switchPage(pageIndex);
					})
				}

				// 【自訂函數 2】分頁掛資料

				function switchPage(pageIndex){
					let htmlStuff = "";
					counter = pageIndex * rowPerPage;
					let tempCounter0 = (counter + rowPerPage > segments.length)? segments.length : counter + rowPerPage;
					for(let i = counter; i < tempCounter0; i++){
						htmlStuff += segments[i];
					}
					$('#tbodyArea').html(htmlStuff);
				}

				// DOM載入完成後
				$(function(){
					let topLogo = $('#topLogo');
					let logo = $('#logo');
					let tbodyArea = $('#tbodyArea');
					let theadArea = $('#theadArea');
					let pageHref = $('#pageHref');
					let searchBarHanger1 = $('#searchBarHanger1');
					let searchBarHanger2 = $('#searchBarHanger2');
					let searchBy = $('#searchBy');
					let searchBar = $('#searchBar');
					/*********************************************************************************************************/
					// 【自訂函數 3】searchBar樣式隨使用者的選擇變化
					$(searchBy).on('change', function(){
						$('#searchBtn').attr('disabled', false);
						if(this.value == 'o_date'){
							searchBarHanger1.css('width', '35%');
							searchBarHanger2.attr('hidden', false);
							$(searchBarHanger1).html("<input type='datetime-local' step='1' id='searchDateStart'>起始時間");
							$(searchBarHanger2).html("<input type='datetime-local' step='1' id='searchDateEnd'>結束時間");
							$('input[type="datetime-local"]').setNow();
						} else if(this.value == 'u_id' || this.value == 'u_firstname' || this.value == 'u_lastname' || this.value == 'p_name'){
							searchBarHanger1.css('width', '70%');
							searchBarHanger2.attr('hidden', true);
							$(searchBarHanger1).html("<input type='search' id='searchBar' placeholder='搜尋'>");
						} else if(this.value == 'o_amt' || this.value == 'o_id' || this.value == 'p_id'){
							searchBarHanger1.css('width', '35%');
							searchBarHanger2.attr('hidden', false);
							$(searchBarHanger1).html("<input type='search' id='searchMin' placeholder='最小值'>");
							$(searchBarHanger2).html("<input type='search' id='searchMax' placeholder='最大值'>");
						} else if(this.value == 'o_status'){
							searchBarHanger1.css('width', '70%');
							searchBarHanger2.attr('hidden', true);
							$(searchBarHanger1).html(
								"<select id='searchBar'>" +
								"<option value='完成' selected>完成</option>" +
								"<option value='處理中'>處理中</option>" +
								"<option value='失效'>失效</option>" +
								"</select>"
							);
						}
					})
					// 【自訂函數 4】重新導向頁面
					$('#toAdminIndexBtn').on('click', function(){
						top.location = "<c:url value='/gotoAdminIndex.controller' />";
					})
					$('#toClientIndexBtn').on('click', function(){
						top.location = "<c:url value='/' />";
					})

					// 【自訂函數 5】go to UPDATE page
					function toUpdatePage(oid){
						// let url = "<c:url value='/cart.controller/cartAdminUpdate/' />" + oid; // ❓
						let url = "http://localhost:8080/studiehub/order.controller/adminUpdate/" + oid;
						console.log(url);
						top.location = url;
					}
					// 【自訂函數 6】查詢功能
					$('#searchBtn').on('click', function(){
						let xhr = new XMLHttpRequest();
						let queryString = "";

						let forDate = (searchBy.val() == 'o_date');
						let forSingle = (searchBy.val() == 'u_id' || searchBy.val() == 'u_firstname' || searchBy.val() == 'u_lastname' ||
												searchBy.val() == 'p_name' || searchBy.val() == 'o_status');
						let forRange = (searchBy.val() == 'o_amt' || searchBy.val() == 'o_id' || searchBy.val() == 'p_id');

						if(forDate) {// 日期範圍查詢
							queryString = 'searchBy=' + searchBy.val() + '&searchBar=' + ($('#searchDateStart').val() + ',' + $('#searchDateEnd').val());
						} else if(forSingle) {// 單值查詢
							queryString = 'searchBy=' + searchBy.val() + '&searchBar=' + $('#searchBar').val();
						} else if(forRange) {// 數值範圍查詢
							queryString = 'searchBy=' + searchBy.val() + '&searchBar=' + ($('#searchMin').val() + ',' + $('#searchMax').val());
						}
						console.log(queryString);
						xhr.open('POST', "<c:url value='/order.controller/adminSearchBar' />", true);
						xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); // ❓
						xhr.send(queryString);
						xhr.onreadystatechange = function() {
							if (xhr.readyState == 4 && xhr.status == 200) {
								tbodyArea.html("");
								pageHref.html("");
								// 解析&暫存回傳資料
								parseSelectedRows(xhr.responseText);
								// 掛topLogo
								topLogo.text("以下是資料庫最新" + segments.length + "筆訂單");
								// 掛資料(index = 0 即第 1 頁)
								switchPage(0);
								// 掛頁籤
								appendPegination();
							}

						}
					})
						
					// 【自訂函數 7】顯示資料庫最新100筆訂單 (SELECT TOP(100)) + 掛資料
					function showTop100() {
						let xhr = new XMLHttpRequest();
						let url = "<c:url value='/order.controller/adminSelectTop100' />";
						xhr.open("GET", url, true);
						xhr.send();
						xhr.onreadystatechange = function() {
							if (xhr.readyState == 4 && xhr.status == 200) {
								parseSelectedRows(xhr.responseText);
								switchPage(0);
							}
						}
					} 

					// 【自訂函數 8】解析回傳資料 & 暫存進segments陣列 & 更新全域變數值
					function parseSelectedRows(map) {
						parsedMap = JSON.parse(map);
						let orders = parsedMap.list;
							let totalPrice = 0;
							rowNum = (orders)? orders.length : 0;
							segments = [];
							for (let i = 0; i < orders.length; i++) {
								totalPrice += orders[i].p_price;
								let temp0 =	 "<tr>" + 
													"<td><input name='ckbox' class='ckbox" + i + "' id='ckbox" + i + "' type='checkbox' value=' + " + i + "'><label for='ckbox" + i + "'></label></td>" +
													"<td><label data-val='" + orders[i].o_id + "' class='old" + i + "0' >" + orders[i].o_id + "</label></td>" +
													"<td><label data-val='" + orders[i].p_id + "' class='old" + i + "1' >" + orders[i].p_id + "</label></td>" +
													"<td><label data-val='" + orders[i].u_id + "' class='old" + i + "2' >" + orders[i].u_id + "</label></td>" +
													"<td><label data-val='" + orders[i].o_status + "' class='old" + i + "3' >" + orders[i].o_status + "</label></td>" +
													"<td><label data-val='" + orders[i].o_date + "' class='old" + i + "4' >" + orders[i].o_date + "</label></td>" +
													"<td><label data-val='" + orders[i].o_amt + "' class='old" + i + "5' id='num' >" + orders[i].o_amt + "</label></td>" +
													"<td><a class='button' href='http://localhost:8080/studiehub/order.controller/adminUpdate/" + orders[i].o_id + "'>修改</a></td>" +
													"</tr>";
								segments.push(temp0);
							}
					};

					// 【自訂函數 9】DELETE
					$('#delete').on('click', function(){
						let tempCounter1 = 0;
						let result = null;
						alert('yo!');
						for(let i = 0; i < rowNum; i++) {
							let ckboxIsChecked = $('#ckbox' + i).is(':checked');
							tempCounter1 ++;
							
							if(ckboxIsChecked) { 
								let ckboxValue = $('.ckbox' + i).val();
								let o_id = $('.old' + i + '0').attr('data-val');
								
								let xhr = new XMLHttpRequest();
								xhr.open("POST", "<c:url value='/order.controller/deleteAdmin' />", true);
								xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); // ❓
								xhr.send('o_id=' + o_id);
								xhr.onreadystatechange = function() {
									if (xhr.readyState == 4 && xhr.status == 200) {
										result = JSON.parse(xhr.responseText);
										console.log(result.state);
										// showTop100();
										if(tempCounter1 == rowNum){ // ❗
											pageHref.html("");
											tbodyArea.html("");
											mainFunc();
											
											// if(result.status == "true"){
											// 	logo.text('已刪除勾選之項目！'); // ❗
											// } else {
											// 	logo.text('刪除未成功！');
											// }
										}
									}
								}
							}
						}
					})

					//【自訂函數 10】主程式函數
					function mainFunc(){
						// console.log('Start of mainFunc()');
						theadArea.html(
								"<th>DELETE BUTTON</th>"
								+ "<th>訂單代號(o_id)<br>(READ-ONLY)</th>"
								+ "<th>課程代號<br>(p_id)</th>"
								+ "<th>用戶帳號<br>(u_id)</th>"
								+ "<th>訂單狀態<br>(o_status)</th>"
								+ "<th>訂單時間<br>(o_date)</th>"
								+ "<th>訂單總額<br>(o_amt)</th>"
								+ "<th>操作</th>"
						);

						let xhr0 = new XMLHttpRequest();
						let url = "<c:url value='/order.controller/adminSelectTop100' />";
						xhr0.open("GET", url, true);
						xhr0.send();
						xhr0.onreadystatechange = function() {
							if (xhr0.readyState == 4 && xhr0.status == 200) {
								// 解析&暫存回傳資料
								parseSelectedRows(xhr0.responseText);
								// 掛topLogo
								topLogo.text("以下是資料庫最新" + segments.length + "筆訂單");
								// 掛資料(index = 0 即第 1 頁)
								switchPage(0);
								// 掛頁籤
								appendPegination();
							}
						}
					}
					
				/*********************************************************************************************************/
					// 主程式
					mainFunc();
					

				})
				</script>		
		
		</body>
</html>