<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>YA!夜總匯</title>
        <link href="<c:url value='/roy/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">修改會員資料</h3></div>
                                    <div class="card-body">
                                        <form:form method="POST" modelAttribute="adminViewMember">
                                        <form:hidden path="r_m_phone" />
                                        <form:hidden path="r_m_password"  />
                                        <form:hidden path="r_m_no"  />
                                        <form:hidden path="r_m_id"  />
                                        <form:hidden path="r_m_birthday"  />
                                        <form:hidden path="r_m_name"  />
                                        <form:hidden path="r_m_sex"  />
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <fieldset disabled="disabled">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <form:input class="form-control" id="inputFirstName" path="r_m_no" placeholder="Enter your first name" />
                                                        <label for="inputFirstName">會員編號</label>
                                                    </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-6">
                                                 <fieldset disabled="disabled">
                                                    <div class="form-floating">
                                                        <form:input class="form-control" id="inputLastName" path="r_m_name" placeholder="Enter your last name" />
                                                        <label for="inputLastName">會員名稱</label>
                                                    </div>
                                                </fieldset>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
												 <fieldset disabled="disabled">                                                
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <form:input class="form-control" id="inputPassword" path="r_m_birthday" placeholder="Create a password" />
                                                        <label for="inputPassword">會員密碼</label>
                                                    </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-6">
                                                 <fieldset disabled="disabled">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <form:input class="form-control" id="inputPasswordConfirm" path="r_m_id" placeholder="Confirm password" />
                                                        <label for="inputPasswordConfirm">會員帳號</label>
                                                    </div>
                                                    </fieldset>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                 <fieldset disabled="disabled">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <form:input class="form-control" id="inputPassword" path="r_m_sex" placeholder="Create a password" />
                                                        <label for="inputPassword">會員性別</label>
                                                    </div>
                                                    </fieldset>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                    <form:select path="r_m_rights" class="form-control" id="inputPasswordConfirm"  placeholder="Confirm password">
                                                    <form:option label="請挑選" value='-1'></form:option>
                                                    <form:options items="${r_rights }"></form:options>
                                                    </form:select>
<%--                                                         <form:input class="form-control" id="inputPasswordConfirm" path="r_m_id" placeholder="Confirm password" /> --%>
                                                        <label for="inputPasswordConfirm">會員權限</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0" align="center">
				                             <input type="submit" class="btn btn-primary btn-block" id='updateData' value="更新"/>
												<input type="button" class="btn btn-primary btn-block" id='deleteData' value="刪除"/>
												<input type="button" class="btn btn-primary btn-block" onclick="window.location.href='<c:url value='/admin/center'/>'" value="返回"/>
                                            </div>
                                        </form:form>
                                    </div>
                                    <!-- <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.html">Have an account? Go to login</a></div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
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
	  var pk = ${adminViewMember.r_m_no};
	  var id = '${adminViewMember.r_m_id}';
	  var deleteData = document.getElementById("deleteData");

   deleteData.addEventListener('click',function() {
	   var result = confirm("確定刪除此筆記錄(帳號:" + id + ")?");
	   if (result) {
		    var xhr2 = new XMLHttpRequest();
	   		xhr2.open("DELETE", "<c:url value='/r_members/' />" + pk, true);
	   		xhr2.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	   		xhr2.send();
	   		xhr2.onreadystatechange = function() {
						// 伺服器請求完成
	   		if (xhr2.readyState == 4 && (xhr2.status == 200 || xhr2.status == 204) ) {
	      		result = JSON.parse(xhr2.responseText);
	      		if (result.fail) {
			 		divResult.innerHTML = "<font color='red' >"
						+ result.fail + "</font>";
		  		} else if (result.success) {
		  			swal("成功",result.success,"success");
		  			window.location.href = "<c:url value='/admin/center'/>";
	      		}                                                             
			} 
		      
		  }
	   } 
   });
   </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<c:url value='/roy/js/scripts.js'/>"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>        
    </body>
</html>