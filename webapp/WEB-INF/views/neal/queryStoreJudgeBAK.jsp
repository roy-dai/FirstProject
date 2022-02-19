<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    min-height: 10em;
    display: table-cell;
    vertical-align: middle }
</style>
<script >
let dataArea=null;
window.addEventListener('load', function(){
	dataArea=document.getElementById("dataArea");
	let xhr = new XMLHttpRequest();
	xhr.open('GET',"<c:url value='/findStoreJudgeAll' />",true);
	xhr.onreadystatechange = function(){
		if (xhr.readyState == 4 && xhr.status == 200 ){
			console.log(xhr.responseText);
			dataArea.innerHTML = showData(xhr.responseText);
		}
	};
	xhr.send();
})
function showData(textobj){
	let obj = JSON.parse(textobj);
	let size = obj.size;
	let storeJudges = obj.list;
	let segment = "<table border='1' style='width:960px'>";
	if(size == 0){
		segment +=	"<tr><th colspan='9'>查無訂單資料</th></tr>";
	}else{	
		segment +=	"<tr><th colspan='9'>共計"+ size +"筆資料</th></tr>";
		segment += "<tr><th>系統編號</th><th>類型</th><th>照片</th><th>商家編號</th><th>標題/內容</th><th>互動 / 人氣</th><th>會員編號</th><th>創建日期</th></tr>";
		for(n=0;n<storeJudges.length;n++){
 			let sJ = storeJudges[n];
			segment += "<tr>";
			segment += "<td >"+ sJ.storeJudgeId+"</td>";
			segment += "<td >"+ sJ.type.typeName+"</td>";
    		segment += "<td ><img width='100' height='60' src='"+ sJ.pictureString +"'></td>"; 
			segment += "<td >"+ sJ.storeId+"</td>";
			segment += "<td ><div><div><p>"+ sJ.title+"</p></div><p>"+ sJ.titleText+"</p></div></td>";
			segment += "<td >"+ sJ.popularity+"</td>";
			segment += "<td >"+ sJ.member_id+"</td>";
			segment += "<td >"+ sJ.creatdate+"</td>";
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
<body>
<div align='center'>
<h2>所有討論留言資訊</h2>
<hr>
<div id='dataArea'>

</div>
</div>
</body>
</html>