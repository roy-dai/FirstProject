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
</head>
<body>  
<div align="center">
<fieldset style="width:1200px;">
	<legend >新增訂單評分</legend> 
<%-- 	    <form:form method="POST" modelAttribute="place" > --%>
	<form:form method="POST" modelAttribute="message" enctype='multipart/form-data'>
	<Table>
 	<c:choose>
		<c:when test='${message.msg_id == null}'>
		    <tr>
		    	<td>&nbsp;</td>
		    	<td>
	   	  		   &nbsp;
	   	  		</td>
		    </tr>
        </c:when>	   
    	<c:otherwise>
	 	 <tr>
	       <td>編號：<br>&nbsp;</td>
	   	   <td><form:hidden path='msg_id'/>
	   	    	${message.msg_id}<br>&nbsp;
	   	   </td>
	    </tr>
       </c:otherwise>   
    </c:choose>    
<%--	   <tr>  
	      <td><spring:message code='place.form.caption.typeid'  /><br>&nbsp;</td>
	        <td  width='360'>
	      	<form:input path="typeId"/><br>&nbsp;	   // property name 
		      <form:errors path='typeId' cssClass="error"/>
		  </td>
	      <td><spring:message code='place.form.caption.restaurant.name'  /><br>&nbsp;</td>
		  <td  width='360'><form:input path='name' /><br>&nbsp;	
		      <form:errors path='name' cssClass="error"/>
		  </td>
		  
	   </tr>--%>     
	   <tr>
	      <td>會員編號：<br>&nbsp;</td>
		  <td  width='360'>
		      <a class="nav-link" id="showId">${member_no}</a><br>&nbsp;	
		  </td>
	      <td>訂單編號：<br>&nbsp;</td>
	        <td  width='360'>
	      	<form:input path="shop_id"/><br>&nbsp;	
		      <form:errors path='shop_id' cssClass="error"/>
		  </td>
	   </tr>
	   <tr>
	      <td>店家編號：<br>&nbsp;</td>
	   	  <td>
	   	  	 <form:input path="store_id"/><br>&nbsp;
	   	  	 <form:errors path="store_id"  cssClass="error" />
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
	      	<form:input path="msg_title"/><br>&nbsp;	
		      <form:errors path='msg_title' cssClass="error"/>
		  </td>
	   </tr>	   
	   <tr>
		   <td>內容：<br>&nbsp;</td>
	   	  <td>
	      	<form:input path="msg_text"/><br>&nbsp;	
		      <form:errors path='msg_text' cssClass="error"/>
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
<a href="<c:url value='/'/> " >回前頁</a>
</div>
</body>
</html>