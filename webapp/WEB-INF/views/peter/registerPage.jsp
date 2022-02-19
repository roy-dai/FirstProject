<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
 	select{vertical-align:middle;}
	input {vertical-align:middle;}
	textarea {resize: none;}
#BB {
	background-image: url(./images/peter/food5.jpg);
	background-size: 100%;
	font-weight:bold;
	color:black;
}
td, select, input {
	font-family: verdana;
	font-size: 13pt;
}

legend {
	font-weight: bold;
	color: black;
	background-color: white;
	border: 1px solid #cccccc;
	padding: 4px 2px;
}
fieldset legend {
	background: #369;
	color: #FFF;
	font-weight: 700;
	text-align: left;
	white-space: nowrap;
	font-size: 14pt;
}
fieldset{
	border: 3px solid #F0BBFF;
}
fieldset,div{
	border-radius: 10px;
}
.d1{
	background-color:#AAAAAA80;
	margin:20px;
}
tr{
	height:50px;
}
input{
    outline-style: none ;
    border: 1px solid #ccc; 
    border-radius: 3px;
}
select{  
    background:#fafdfe;  
    height:28px;  
    width:180px;  
    line-height:28px;  
    border:1px solid #9bc0dd; 
    margin-top:-20px; 
    border-radius:4px;  
}
span{
	color:blue;
	font-weight:700;
	background-color:#FFFF77;
}
</style>
<title>YA!夜總匯</title>
</head>
<body id="BB">
	<div align="center">
		<fieldset style="width: 1000px;">
			<legend>註冊攤商資料</legend>
			<form:form method="POST" commandName="vendorform"
				modelAttribute="vendor" enctype="multipart/form-data">
				<div class="d1">
				<table>
					<c:choose>
						<c:when test="${vendor.venID == null}">
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td>會員編號:<br>&nbsp;
								</td>
								<td><form:hidden path="member_no" /> ${vendor.member_no}<br>&nbsp;</td>
								<td>攤商編號:<br>&nbsp;
								</td>
								<td><form:hidden path="venID" /> ${vendor.venID}<br>&nbsp;</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<tr>
						<td>攤販名稱：<br>&nbsp;
						</td>
						<td width="360"><form:input path="venName" id="Name"/><br>&nbsp;
							<form:errors path="venName" cssClass="error" /></td>
						<td><form:label path="">攤販種類：</form:label><br>&nbsp;
						</td>
						<td width="360"><form:select path="venType" id="Type"><br>&nbsp;
							<form:option value="食物"/>
							<form:option value="飲料"/>
							<form:option value="服飾"/>
							<form:option value="鞋子"/>
							<form:option value="飾品"/>
							<form:option value="3C"/>
							<form:option value="娛樂"/>
							</form:select>
							<br>
							<span id="selectType"></span>
							<form:errors path="venType" cssClass="error" /></td>
					</tr>
					<tr>
						<td>負責人：<br>&nbsp;
						</td>
						<td width="360"><form:input path="venRes" id="Res"/><br>&nbsp; <form:errors
								path="venRes" cssClass="error" /></td>
						<td><form:label path="">所在區域：</form:label><br>&nbsp;
						</td>
						<td width="360"><form:select path="venPosition" id="pos"><br>&nbsp;
							<form:option value="A"/>
							<form:option value="B"/>
							<form:option value="C"/>
							<form:option value="D"/>
							<form:option value="E"/>
							</form:select>
							<br>
							<span id="selectPosition"></span>
							<form:errors path="venPosition" cssClass="error" /></td>
					</tr>
					<tr>
						<td>招標金額：<br>&nbsp;
						</td>
						<td width="360"><form:input path="venValue" id="Value" /><br>
						<span id="value"></span>
							<form:errors path="venValue" cssClass="error" /></td>
						<td>照片：<br>&nbsp;
						</td>
						<td>
						<form:input path="vendorImage" type='file' /><br>&nbsp;
							<form:errors path="vendorImage" cssClass="error" />
						</td>
					</tr>
					<tr>
						<td>攤販介紹：<br>&nbsp;
						</td>
						<td width="360" height="200"><form:textarea cols="40" rows="5" path="venIntro" placeholder="向大家介紹你們的特色!" resize="none" id="Intro"/><br>&nbsp;
							<form:errors path="venIntro" cssClass="error" /></td>
						<td><br>&nbsp;
						</td>
						<td><img src="./images/peter/happy1.png" style="height:200px;margin-left:150px"></td>
					</tr>
					<tr>
						<td colspan='4' align='center'><br><input
							type='submit'></td>
					</tr>
				</table>
				</div>
			</form:form>
				<button id="oneClick" style="border-radius:5px;font-size:large;background-color:#CCCCFF">一鍵輸入</button>
		</fieldset>
		<br> <a href="<c:url value='/PETER'/> " style="background-color:#77FFEEE5;font-size:17px">回前頁</a>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		window.addEventListener('load',function(){
			let value = document.getElementById('value');
			var b = $('#pos').val();
			let xhr = new XMLHttpRequest();
			xhr.open('GET', "<c:url value='/MinAndMax/"+b+"'/>", true);
			xhr.send();
			xhr.onreadystatechange = function(){
				if( xhr.readyState == 4 && xhr.status == 200 )
					console.log(xhr.responseText);
					var str  = (xhr.responseText).replace("[","");
					var str2 = str.replace("]","");
					var arr = str2.split(',');
					value.innerHTML = "<span>"+b+"區目前最高金額為"+arr[0]+"<br>最小金額為"+arr[1]+"。</span>"
			}
		})
		$(function(){
			$('#Type').on('change',function(){
				var a = $('#Type').val();
				var a1 = $('#Type').text();
				var b = $('#pos').val();
				if ( a===('食物') || a===('飲料')){
					$("#pos").attr('disabled', false)
					let selectType = document.getElementById("selectType");
					selectType.innerHTML="<span>選擇種類為"+a+"</span>";
				}else if (a==='娛樂'){
					$("#pos")[0].selectedIndex = 3;
					$("#pos").attr('disabled', true);
					let selectType = document.getElementById("selectType");
					selectType.innerHTML="<span>選擇種類為"+a+"，目前只提供D區擺攤</span>";
					let value = document.getElementById('value');
					var b = $('#pos').val();
					let xhr = new XMLHttpRequest();
					xhr.open('GET', "<c:url value='/MinAndMax/"+b+"'/>", true);
					xhr.send();
					xhr.onreadystatechange = function(){
						if( xhr.readyState == 4 && xhr.status == 200 )
							console.log(xhr.responseText);
							var str  = (xhr.responseText).replace("[","");
							var str2 = str.replace("]","");
							var arr = str2.split(',');
							value.innerHTML = "<span>"+b+"區目前最高金額為"+arr[0]+"<br>最小金額為"+arr[1]+"。</span>"
					}
				}else {
					$("#pos")[0].selectedIndex = 2;
					$("#pos").attr('disabled', true);
					let selectType = document.getElementById("selectType");
					selectType.innerHTML="<span>選擇種類為"+a+"，目前只提供C區擺攤</span>";
					let value = document.getElementById('value');
					var b = $('#pos').val();
					let xhr = new XMLHttpRequest();
					xhr.open('GET', "<c:url value='/MinAndMax/"+b+"'/>", true);
					xhr.send();
					xhr.onreadystatechange = function(){
						if( xhr.readyState == 4 && xhr.status == 200 )
							console.log(xhr.responseText);
							var str  = (xhr.responseText).replace("[","");
							var str2 = str.replace("]","");
							var arr = str2.split(',');
							value.innerHTML = "<span>"+b+"區目前最高金額為"+arr[0]+"<br>最小金額為"+arr[1]+"。</span>"
					}
				}
			})
			$('#pos').on('change',function(){
				let value = document.getElementById('value');
				var b = $('#pos').val();
				let xhr = new XMLHttpRequest();
				xhr.open('GET', "<c:url value='/MinAndMax/"+b+"'/>", true);
				xhr.send();
				xhr.onreadystatechange = function(){
					if( xhr.readyState == 4 && xhr.status == 200 )
						console.log(xhr.responseText);
						var str  = (xhr.responseText).replace("[","");
						var str2 = str.replace("]","");
						var arr = str2.split(',');
						value.innerHTML = "<span>"+b+"區目前最高金額為"+arr[0]+"<br>最小金額為"+arr[1]+"。</span>"
				}
			})
			
			$('#oneClick').on('click',function(){
				$('#Name').attr('value','銘心關東煮');
				$("select option[value='娛樂']").attr("selected","selected");
				$('#Res').attr('value','關冬築');
				$("select option[value='B']").attr("selected","selected");
				$('#Value').attr('value','20000');
				$('#Intro').val('蘿蔔與柴魚熬煮鮮甜高湯，招牌高麗菜捲，與各式手工丸子，品項眾多任君挑選!');
				let value = document.getElementById('value');
				var b = $('#pos').val();
				let xhr = new XMLHttpRequest();
				xhr.open('GET', "<c:url value='/MinAndMax/"+b+"'/>", true);
				xhr.send();
				xhr.onreadystatechange = function(){
					if( xhr.readyState == 4 && xhr.status == 200 )
						console.log(xhr.responseText);
						var str  = (xhr.responseText).replace("[","");
						var str2 = str.replace("]","");
						var arr = str2.split(',');
						value.innerHTML = "<span>"+b+"區目前最高金額為"+arr[0]+"<br>最小金額為"+arr[1]+"。</span>"
				}
			})
		})
	</script>
</body>
</html>