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
<script>
   window.addEventListener('load',function() {
    var result = confirm("您確定要重新下單嗎?");
    if (result) {
    	
    	window.location.href = "<c:url value='/MIKE_ComfirmReCheck'/>";
      } 
    else {
    	window.location.href = "<c:url value='/MyOrder'/>";
         }                                                             
   });
 
   </script>


<body class="sb-nav-fixed">
	



</body>
</html>