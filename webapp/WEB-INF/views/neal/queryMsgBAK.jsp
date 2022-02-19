<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</html>
<script >
let dataArea=null;
let msg_title=null;
let queryByShop=null;

window.addEventListener('load', function(){
	
	msg_title=document.getElementById("msg_title");
	queryByShop=document.getElementById("queryByShop");
	dataArea=document.getElementById("dataArea");
	
	let xhr = new XMLHttpRequest();
	xhr.open('GET',"<c:url value='/findAll' />",true);
	xhr.onreadystatechange=function(){
		if (xhr.readyState == 4 && xhr.status == 200 ){
 			console.log(xhr.responseText);
			dataArea.innerHTML = showData(xhr.responseText);
		}
	};
	xhr.send();
	
	queryByShop.addEventListener('click', function(){
		let title=msg_title.value;
		if(!title){
			alert('請輸入標題，可輸入部分字串');
			return;
		}
		
		let xhr2 = new XMLHttpRequest();
		xhr2.open('GET',"<c:url value='/queryByShop' />?title="+title);
// 		xhr2.open('GET',"<c:url value='/queryByTitle' />?title="+title);
		xhr2.send();
		xhr2.onreadystatechange=function(){
			if(xhr2.readyState == 4 && xhr2.status == 200){
					dataArea.innerHTML = showData(xhr2.responseText);
			}
		}
	})
})
function showData(textobj){
	let obj = JSON.parse(textobj);
	let size = obj.size;
	let msgs = obj.list;1
	let segment = "<table border='1' style='width:1200px'>";
	
	if(size == 0){
		segment +=	"<tr><th colspan='9'>查無訂單資料</th></tr>";
	}else{	
		segment +=	"<tr><th colspan='9'>共計"+ size +"筆資料</th></tr>";
		segment += "<tr><th>系統編號</th><th>評價標題</th><th>內容</th><th>訂單編號</th><th>會員編號</th><th>店家編號</th><th>點讚</th><th>評價建立時間</th><th>照片</th></tr>";
		for(n=0;n<msgs.length;n++){
			let msg = msgs[n];
			let tmp1 = "<c:url value='/modifyMessage/' />"+msg.msg_id; 
			let tmp0 = "<a href='"+ tmp1 +"' >" + msg.msg_title +"</a>";
			segment += "<tr>";
			segment += "<td align='center'>"+ msg.msg_id+"</td>";
			segment += "<td>"+ tmp0 +"</td>";
			segment += "<td>"+ msg.msg_text+"</td>";
			segment += "<td>"+ msg.shop_id+"</td>";
			segment += "<td>"+ msg.member_id+"</td>";
			segment += "<td>"+ msg.store_id+"</td>";
			segment += "<td>"+ msg.msg_great_count+"</td>";
			segment += "<td>"+ msg.creatdate+"</td>";
    		segment += "<td align='center'><img width='200' height='120' src='"+ msg.pictureString +"'></td>"; 
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
<h2>所有訂單評價</h2>
<hr>
<font color='red' >${successMessage}</font>&nbsp;
<hr>

訂單編號:<input id="shop_id" type='text' >
<button id='queryByShop' >送出</button>
<!-- 標題:<input id="msg_title" type='text' > -->
<!-- <button id='queryByTitle' >送出</button> -->

<hr>
<div id='dataArea'>

</div>
<a href="<c:url value='/'/> " >回前頁</a>
</div>

</body>
</html>