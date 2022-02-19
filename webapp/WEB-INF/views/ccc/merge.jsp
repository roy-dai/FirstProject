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


</style>


<title> YA!夜總匯</title>

</head>

 <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">NO.${key} 廣告牆管理</h3></div>
                                    <div class="card-body">
                                    <!-- ============================================================================================== -->
                                        <form class="form" action="../CCC_BG" method="POST" enctype="multipart/form-data">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputFirstName" type="text"  name="a1" value= "${a1}" />
                                                        <label for="inputFirstName">攤販編號</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="inputLastName" type="text"  name="a2" value= "${a2}" />
                                                        <label for="inputLastName">攤販名稱</label>
                                                    </div>
                                                </div>
                                                    <input type="hidden" name="a4" value="${key}">
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" name="a3" value= "${a3}" />
                                                <label for="inputEmail">廣告詞</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">

                                                </div>
                 

                                            
                                                <div class="row mb-3">
                                                    <label for="inputEmail">照片上傳:</label>
                                                    <div>&emsp;</div>
                                                    <input type="file" name="pictureFile" id="user_pictureFile" accept="image/gif, image/jpeg, image/png">      
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                <input type="submit" class="btn btn-primary btn-block" name="processAdd" value="送出">
                                                </div>
                                         <div>	&nbsp;	</div>			
                                              
                                             <div class="d-grid">
                                                <input type="button" value="一鍵輸入" onclick='editAds()' class="btn btn-primary btn-block">
                                            </div>
                                                
                                            </div>
                                        </form>
                                        	<script>
												function editAds(){
													document.getElementById("inputFirstName").value="1280024";
													document.getElementById("inputLastName").value="古早味糖葫蘆";
													document.getElementById("inputEmail").value="糖衣依古法純糖熬煮製作，不添色素，裹上大湖草莓、番茄、綜合蜜餞等，甜甜脆脆的口感讓人吮指回味";
													}
                                        	</script>

                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div>&emsp;</div>
                                    </div>
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
                                <a href="#">隱私政策</a>
                                &middot;
                                <a href="#">條款 &amp; 條件</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>