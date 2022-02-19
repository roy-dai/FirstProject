<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="favicon.ico">
    <link href="carousel.css" rel="stylesheet">
    
    <title> YA!夜總匯</title>

<style>
    body{
        padding-top: 60px;
    }
    nav{
        background-color: #000;
        text-align: center;
        position: fixed;
        top:0;
        left: 0;
        width: 100%;
        z-index:10;
    }
    nav a{
        color: #fff;
        text-decoration: none;
        display: inline-block;
        padding: 10px 20px;
    }
   .wrap{
            width: 960px;
            margin: auto;
            display: flex;
        }
        .item{        
            width: 190px;
            margin: 10px;
            border: 1px solid #fff;
            padding: 10px;
            position: relative;      

        }
        .item img{
            width: 100%;
        }

        .item .tab{
            background-color: crimson;
            color: #fff;
            padding: 6px 10px;
            position: absolute;
            top: 0;
            left: 0;            
        }
       .a{
         margin: auto;
       }
</style>
    </head>    

<body>

<!-------------------------------------------------------------->  
    <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="http://localhost:8080/nightMarket3">Yeah!夜市夜總匯</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="http://localhost:8080/nightMarket3">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<c:url value='/ROY'/>">個人專區</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/CCC'/>">逛夜市</a>
          </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/MIKE'/>">購物車</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<c:url value='/PETER'/>">競標</a>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="<c:url value='/WANG'/>">活動</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value='/queryStoreJudge' />">討論區</a>
            </li>

          </ul>
        </div>
      </nav>
    </header>
    <h2>個人討論區</h2>
    <hr>
    <div align="center">
    	<h2>
    	    <a href="<c:url value='/queryMsg' />">查詢訂單評價</a><br> 
    	    <hr>
    		<a href="<c:url value='/queryPsnMsg' />">查詢個人訂單評價</a><br> 
    		 <hr>
    		<a href="<c:url value='/insertMessage' />">新增訂餐評價</a><br> 
    		 <hr>
    		 <hr>
    		<a href="<c:url value='/queryStoreJudge' />">美食精華討論版</a><br> 
    		 <hr>
    		<a href="<c:url value='/queryPsnStoreJudge' />">我的美食</a><br> 
    		 <hr>
    		<a href="<c:url value='/insertStoreJudge' />">發表我的美食</a><br> 
    		 <hr>
    		<a href="<c:url value='/insertStoreJudgeType' />">新增討論類型</a><br> 
    		 <hr>
    		<a href="<c:url value='/queryType' />">查詢討論類型</a><br> 
    		 <hr>
    	</h2>
    </div>

    
<!-------------------------------------------------------------->

    
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="assets/js/vendor/holder.min.js"></script>

  

</body>
</html>