<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
<style type="text/css">
   span.error {
	color: red;
	display: inline-block;
	font-size: 5pt;
}
</style>
<meta charset="UTF-8">
<link rel='stylesheet' href="<c:url value='/css/style.css' />" type="text/css" />

<%--文字編輯器  https://cdn.ckeditor.com/  --%>
<script src="https://cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>

</head>
<body>  
<div align="center">
<fieldset style="width:1200px;">
	<legend >發表我的美食文章</legend> 
	<form:form method="POST" modelAttribute="storeJudge" enctype='multipart/form-data'>
	<table >
 	<c:choose>
		<c:when test='${storeJudge.storeJudgeId == null}'>
		    <tr>
		    	<td>&nbsp;</td>
		    	<td>
	   	  		   &nbsp;
	   	  		</td>
		    </tr>
        </c:when>	   
    	<c:otherwise>
	 	 <tr>
	       <td>系統編號：<br>&nbsp;</td>
	   	   <td><form:hidden path='storeJudgeId'/>
	   	    	${storeJudge.storeJudgeId}<br>&nbsp;
	   	   </td>
	    </tr>
       </c:otherwise>   
    </c:choose>        
	   <tr>
	      <td>會員編號：<br>&nbsp;</td>
		  <td  width='360'>
		      <a class="nav-link" id="showId">${member_no}</a><br>&nbsp;	
		  </td>
	      <td>類型：<br>&nbsp;</td>
	        <td  width='360'>
	      	   <form:select  path="type.typeId" >
	      	      <form:option label="請挑選" value="-1" />
	      	     
	      	      <form:options items="${typeList}"
	      	   	   itemLabel="typeName"  itemValue="typeId"   />
	      	   	</form:select>   
	      	   	   <br>&nbsp;	 
		       <form:errors path='type.typeId' cssClass="error"/>
		  </td>
	   </tr>
	   <tr>
	      <td>商家編號：<br>&nbsp;</td>
	   	  <!-- <td>
	   	  	 <form:input path="storeId"/><br>&nbsp;
	   	  	 <form:errors path="storeId"  cssClass="error" />
	   	  </td> -->
			 <td  width='360'>
				<a class="nav-link" id="storeId">${storeId}</a><br>&nbsp;
				<form:hidden path="storeId" Value='${storeId}'/>
			</td>
	   	  <td>照片：<br>&nbsp;</td>
	   	  <td>
	   	  	 <form:input path="placeImage" type='file'/><br>&nbsp;
	   	  	 <form:errors path="placeImage"  cssClass="error" />
	   	  </td>
	   </tr>
	   <tr>
	      <td>標題：<br>&nbsp;</td>
	      <td  width='360'>
	      	<form:input path="title"/><br>&nbsp;	
		      <form:errors path='title' cssClass="error"/>
		  </td>
	   </tr>	   
	   <tr>
		   <td>內容：<br>&nbsp;</td>
	   </tr>	    
	   <tr>
		   <td><br>&nbsp;</td>
	   	   <td colspan='4' align='center'>
                <textarea name="titleText"></textarea>
                <script>
                        CKEDITOR.replace( 'titleText' );
                </script>
		  </td>
	   </tr>	 
	   <tr>
	    <td colspan='4' align='center'><br>&nbsp;
	      <input type='submit'>
        </td>
	   </tr>
	</Table>
		 
	</form:form>
	
</fieldset>
<br>
<a href="<c:url value='queryStoreJudge'/> " >回前頁</a>
</div>
</body>
</html>