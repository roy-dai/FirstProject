<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href="<c:url value='/css/tableDesign.css' />" type="text/css" />
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<style type="text/css">
#BB {
	background-image: url(./images/peter/bg23.jpg);
	background-size: 1400px;
}
.directTag0 {
	border-bottom-left-radius: 20px;
	height: 100px;
	width: 35px;
	background-color: blueviolet;
	border-radius: 5px, 5px, 5px, 20px;
	/*             border: 2px solid blue; */
	right: 0px;
	top: 80px;
	position: fixed;
	text-align: center;
	color: #FFFF77;
	font-weight: 900;
	font-size: larger;
}

.directTag1 {
	border-bottom-left-radius: 20px;
	height: 100px;
	width: 35px;
	background-color: #0000FF;
	border-radius: 5px, 5px, 5px, 20px;
	/*             border: 2px solid blue; */
	right: 0px;
	top: 180px;
	position: fixed;
	text-align: center;
	color: #FFFF77;
	font-weight: 900;
	font-size: larger;
}
#Header2 {
	height: 80px;
	margin: auto;
	text-align: center;
	line-height: 10px;
	font-size: 19px;
	color: black;
	background-color: #FFFF37;
	border: 1px solid black;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="<c:url value='/jQuery/jquery-3.6.0.min.js' />"
	type="text/javascript"></script>
<script src="<c:url value='/jQuery/toggle.js' />" type="text/javascript"></script>
<script>
$(document).ready(function(){
	$(document.body).on('click','[data-parent]', function () {
 		var child = $(this).attr("data-parent"); 
// 		jQuery("[data-child]").slideUp();
        $('[data-child="'+ child + '"]').slideToggle("slow"); 
        });    
	jQuery("body").click(function(e){
		e = e || window.event;
		var obj =e.target || e.srcElement;
		if($(obj).closest("[data-parent]").length <=0){
			//點選的區域如果沒有id為explain的標籤，就將explain收起隱藏
			jQuery("[data-child]").slideUp();
			}
		});
	 $('.img').on('click', function () {
		    
		    
         var src = $(this).attr('src');
         $('.imgPreview img').attr('src', src);
         $('.imgPreview').show()
     });
     $('.imgPreview').on('click', function () {


         $('.imgPreview').hide()
     });
})

let dataArea = null;
let venName = null;
let query = null;
document.addEventListener("DOMContentLoaded", function() {
		venName = document.getElementById("venName");
		dataArea = document.getElementById("dataArea");
		query = document.getElementById("query");
		let xhr = new XMLHttpRequest();
		xhr.open('GET', "<c:url value='/findAll' />", true);
		xhr.send();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				dataArea.innerHTML = showData(xhr.responseText);
			}
		};
						
		query.addEventListener('click', function(){
			let vname = venName.value;
			if(!vname){
				alert('請輸入攤商名稱(包含部分名稱)');
				return;
			}
			let xhr2 = new XMLHttpRequest();
			xhr2.open('GET', "<c:url value='/queryByName' />?vname=" + vname);
			xhr2.send();
			xhr2.onreadystatechange = function(){
				if ( xhr2.readyState ==4 && xhr2.status ==200 ){
					dataArea.innerHTML = showData(xhr2.responseText);
				}
			}
		});				
	})
        
	function showData(textobj){
		let obj = JSON.parse(textobj);
		let size = obj.size;
		let vendors = obj.list;
		let segment = "<table>"
		if ( size==0 ){
			segment += "<tr><th colspan='8' >查無相關資料</th></tr>"
		}else{
			segment += "<tr><th colspan='8' style='background-color:#7744FF;'>目 前 有 " + size + " 家 廠 商 進 駐 唷 ^ _ ^</th></tr>";
			segment += "<tr><th>攤商編號</th><th>照片</th><th>攤販名稱</th><th>種類</th><th>位置</th><th>介紹</th></tr>";
			for ( n=0; n<vendors.length; n++ ){
				 let vendor = vendors[n];
				 let tmp0 = "<c:url value = '/modifyVendor/' />" + vendor.venID;
				 let tmp1 = "<a href='" + tmp0 + "' >" + vendor.venName + "</a>";
				 segment += "<tr>";
				 segment += "<td >"+ vendor.venID +"</td>";
				 segment += "<td><img width='100' height='60' src='" + vendor.pictureString+ " '>'</td>";
				 segment += "<td data-parent='"+n+"'>"+ tmp1 + "<br>看商品<i class='far fa-caret-square-down'></i></td>";
//				 segment += "<td class='fadeIn'>"+ tmp1 +"</td>";
				 segment += "<td >"+ vendor.venType +"</td>";
				 segment += "<td>"+ vendor.venPosition +"</td>";
				 segment += "<td>"+ vendor.venIntro +"</td>";
				 segment += "</tr>";
				 segment += "<tr>";
				 segment += "<td rowspan='1' colspan='8' data-child='"+n+"'>商品</td>";
				 segment += "</tr>";
			}
		}
		segment += "</table>";
		return segment;		
	}
	
		
</script>
<meta charset="UTF-8">
<title> YA!夜總匯</title>
</head>
<body id="BB">
	<div id=mainbody style="margin: 0 auto">
		<div id="Header2">
			<h2 id="#">Yeah!夜市夜總匯</h2>
			<h3>作伙逛夜市</h3>
		</div>
		<hr>
			<h3 style="color:blue; font-weight:700;">${successMessage}&nbsp;</h3> 
		<div style="background-color:#FFE153;width:400px;margin-left:350px">
			搜尋攤商(名稱) <input id="venName" type="text" />
			<i class="fad fa-search"></i>
			<button id='query'>查詢</button>
		</div>
			<div id="dataArea" style="margin-top: 20px">
			<img  style="width:200px;" src="<c:url value='/images/peter/loading.gif' />">
		</div>
<!-- 		<div class="icon"  style= "width:100px;margin-left:150px;"> -->
<!-- 			<i class="far fa-hand-point-up"">點擊看商品</i> -->
<!-- 		</div> -->
	</div>
	<div>
		<div class="directTag0" onclick="location.href='#'">回上層</div>
		<div class="directTag1" onclick="location.href='./PETER'">回前頁</div>
	</div>
</body>
</html>