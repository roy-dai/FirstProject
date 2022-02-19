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
        <link href="<c:url value='.\roy\css\styles.css'/>" rel="stylesheet" />
<script>
	let datatablesSimple = null;
</script>



<style>


</style>


<title>YA!夜總匯</title>

</head>

 <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">表演活動安排</h3></div>
                                    <div class="card-body">
                                    <!-- ============================================================================================== -->
                                        <form class="form" action="WANG_ADDIMPL" method="POST" enctype="multipart/form-data">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputFirstName" type="text"  name="a1"/>
                                                        <label for="inputFirstName">表演者編號</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="inputLastName" type="text"  name="a2"/>
                                                        <label for="inputLastName">表演者暱稱</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" name="a3"/>
                                                <label for="inputEmail">表演內容</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" type="date" name="a4" />
                                                        <label for="inputPassword">使用日期</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" type="select" name="a5"/>  
                                                        <label for="inputPasswordConfirm">使用時段</label>
                                                    </div>
                                                </div>
                                                <div>&emsp;</div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" name="a6"/>
                                                <label for="inputEmail">YT影片</label>
                                            </div>
                                            
                                                <div>&emsp;</div>
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
                                            </div>
                                        </form>
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