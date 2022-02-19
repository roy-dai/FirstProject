<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> YA!夜總匯</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="<c:url value='/sb/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
			System.out.println(basePath);
		%>
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
            span.error {
                color: red;
                display: inline-block;
                font-size: 5pt;
            }
        </style>
        <%--文字編輯器  https://cdn.ckeditor.com/  --%>
        <script src="https://cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="<c:url value='/'/> " > 回首頁</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">綜合專區</div>
                            <a class="nav-link" href="<c:url value='/queryMsg' />">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                查詢所有訂單評價
                            </a>
                            <a class="nav-link" href="<c:url value='/queryStoreJudge' />">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                美食精華討論版
                            </a>
                            <div class="sb-sidenav-menu-heading">個人專區</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                個人訂單評價管理
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
<%--                                     <a class="nav-link" href="<c:url value='/insertMessage' />">新增個人訂單評價</a> --%>
                                    <a class="nav-link" href="<c:url value='/queryPsnMsg' />">個人訂單評價紀錄</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                個人美食文章
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        文章
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
		                                    <a class="nav-link" href="<c:url value='/queryPsnStoreJudge' />">我的美食文章</a>
		                                    <!-- <a class="nav-link" href="<c:url value='/insertStoreJudge' />">發表我的美食文章</a> -->
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        文章類型
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
		                                    <a class="nav-link" href="<c:url value='/insertStoreJudgeType' />">新增討論類型</a>
		                                    <a class="nav-link" href="<c:url value='/queryType' />">查詢討論類型</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">維護我的美食文章</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                會員 ${member_no} 您好 ：
                            </div>
                            <body>  
                                <div align="center">
                                <fieldset style="width:1200px;"><br>
                                    <legend >Hi ${member_no} 調整您的美食文章，好的文章能讓更多人認識店家唷！</legend> 
                                    <form:form method="POST" modelAttribute="storeJudge" enctype='multipart/form-data'>
                                    <table >  
                                        <tr>
                                            <td>商家編號：<br>&nbsp;</td>
                                               <td>
                                                    <!-- <form:input path="storeId"/><br>&nbsp;
                                                    <form:errors path="storeId"  cssClass="error" /> -->
                                                    <!-- <a class="nav-link" id="storeId">${storeId}</a> -->
                                                    <form:hidden path="storeId" Value='${storeJudge.storeId}'/>
                                                    ${storeJudge.storeId}<br>&nbsp;
                                               </td>
                                         </tr>
                                          <tr>
                                             <td>類型：<br>&nbsp;</td>
                                               <td  width='360'>
                                                  <form:select path="type.typeId" >
                                                      <form:option label="美食類型" value="-1" />
                                                      <form:options  items="${typeList}"
                                                           itemLabel='typeName' itemValue='typeId' />
                                                  </form:select><br>&nbsp;
                                                  <form:errors path="type.typeId"  cssClass="error"/>
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
                                            <td>照片：<br>&nbsp;</td>
                                               <td>
                                                    <form:input path="placeImage" type='file'/><br>&nbsp;
                                                    <form:errors path="placeImage"  cssClass="error" />
                                               </td>
                                         </tr>
                                          <tr>
                                              <td>內容：<br>&nbsp;</td>
                                          </tr>	    
                                          <tr>
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
                                </div>
                            </body>
                    </div>
                </main>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<%=basePath%>/sb/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <!-- <script src="<%=basePath%>/sb/assets/demo/chart-area-demo.js"></script> -->
        <script src="<%=basePath%>/sb/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <!-- <script src="<%=basePath%>/sb/js/datatables-simple-demo.js"></script> -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    </body>
</html>
