<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="mikeweb/car.css">
<link rel="stylesheet" href="mikeweb/fontawesome/css/all.min.css">
<script src="mikeweb/jquery-2.2.3.min.js"></script>
<!-- <script src="mikeweb/car.js"></script> -->
<title> YA!夜總匯</title>
</head>
<body>
 <div class="w">
    <div class="cart-warp">
      <!-- 頭部全選模塊 -->
      <div class="cart-thead">
        <div class="t-checkbox">
          <input type="checkbox" name="" id="AAA" class="checkall"> 全選
        </div>
        <div class="t-goods">商品</div>
        <div class="t-price">單價</div>
        <div class="t-num">數量</div>
        <div class="t-sum">小計</div>
        <div class="t-action">操作</div><i class="fas fa-trash-alt"></i>
      </div>
      <!-- 商品詳細模塊 -->
      <div class="cart-item-list" id="dataArea">
      </div>
      
      <!-- 結算模塊 -->
      <div class="cart-floatbar">
        <div class="select-all">
          <input type="checkbox" name="" id="" class="checkall">全選
        </div>
        <div class="operation">
          <a href="javascript:;" class="remove-batch"> 洗掉選中的商品</a>
          <a href="javascript:;" class="clear-all">清理購物車</a>
        </div>
        <div class="toolbar-right">
          <div class="amount-sum">已經選<em></em>件商品</div>
          <div class="price-sum">總價： <em>$</em></div>
          <div class="btn-area">去結算</div>
        </div>
      </div> <!-- cart-floatbar end -->
    </div> <!-- cart-warp end -->
  </div> <!-- w end -->
  
<script>
   
   
   
$(function () {
	dataArea.addEventListener('click', function() {
	  $(".checkall").change(function () {
	    // 當全選按鈕改變時，讓小復選框按鈕和全選按鈕保持一致（隱式迭代，不需要回圈遍歷）
	    $(".j-checkbox, .checkall").prop("checked", $(this).prop("checked"));
	    getSum();   // 計算總額函式
	    // 添加背景
	    // 判斷是否是選中狀態，是的話添加check-cart-item類，沒有就移除
	    if ($(this).prop("checked")) {
	      $(".cart-item").addClass("check-cart-item");
	    } else {
	      $(".cart-item").removeClass("check-cart-item");
	    }
	  })
	  $(".j-checkbox").change(function () {
	    if ($(".j-checkbox:checked").length === $(".j-checkbox").length) {
	      $(".checkall").prop("checked", true);
	    } else {
	      $(".checkall").prop("checked", false);
	    }
	    getSum();
	    // 當小復選框為選中狀態時，改變背景顏色（添加check-cart-item類）
	    if ($(this).prop("checked")) {
	      $(this).parents(".cart-item").addClass("check-cart-item");
	    } else {
	      $(this).parents(".cart-item").removeClass("check-cart-item");
	    }
	  })

	  // 點擊+按鈕，文本框數字加一
	  $(".increment").click(function () {
	    var n = $(this).siblings(".itxt").val();
	    n++;
	    $(this).siblings(".itxt").val(n);
	    // 小計模塊
	    // num為獲取過來的單價，用substr()截取字串把前邊的$去掉
	    var num = $(this).parents(".p-num").siblings(".p-price").html().substr(1);
	    // toFixed(2)保留兩位小數
	    var price = (num * n).toFixed(2);
	    $(this).parents(".p-num").siblings(".p-sum").html("$" + price);
	    getSum();
	  })
	  // 點擊-按鈕，文本框數字減一
	  $(".decrement").click(function () {
	    var n = $(this).siblings(".itxt").val();
	    n <= 1 ? n : n--;
	    $(this).siblings(".itxt").val(n);
	    // 小計模塊
	    var num = $(this).parents(".p-num").siblings(".p-price").html().substr(1);
	    // toFixed(2)保留兩位小數
	    var price = (num * n).toFixed(2);
	    $(this).parents(".p-num").siblings(".p-sum").html("$" + price);
	    getSum();
	  })
	  // 當用戶直接修改文本框時
	  $(".itxt").change(function () {
	    var n = $(this).val();
	    var num = $(this).parents(".p-num").siblings(".p-price").html().substr(1);
	    // toFixed(2)保留兩位小數
	    var price = (num * n).toFixed(2);
	    $(this).parents(".p-num").siblings(".p-sum").html("$" + price);
	    getSum();
	  })

	  // 計算總額函式
	  getSum();
	  function getSum() {
	    var count = 0;
	    var money = 0;
	    // 只遍歷選中的商品   each遍歷，i為索引，ele為物件
	    $(".j-checkbox:checked").parents(".cart-item").find(".itxt").each(function (i, ele) {
	      count += parseInt($(ele).val());   // 會有小誤差，要取整一下
	    })
	    $(".amount-sum em").text(count);
	    $(".j-checkbox:checked").parents(".cart-item").find(".p-sum").each(function (i, ele) {
	      money += parseFloat($(ele).text().substr(1));
	    })
	    $(".price-sum em").text("$" + money.toFixed(2));
	  }

	  // 洗掉商品模塊
	  // 洗掉單個商品
	  $(".p-action a").click(function () {
	    $(this).parents(".cart-item").remove();
	    getSum();
	  })
	  // 洗掉選中商品
	  $(".remove-batch").click(function () {
	    $(".j-checkbox:checked").parents(".cart-item").remove();
	    getSum();
	  })
	  // 清理購物車
	  $(".clear-all").click(function () {
	    $(".cart-item").remove();
	    getSum();
	  })
	})

   })

</script>
  
  
  
</body>

<script>

window.addEventListener('load', function() {
	dataArea = document.getElementById("dataArea");
	dataArea.innerHTML = test();
		function test(){
			let segment="";
				for (i=0 ; i<4 ; i++){
	 	segment += "<div class='cart-item'>"
		segment += "<div class='p-checkbox'>"
		segment += "<input type='checkbox' name='' id='' class='j-checkbox'>"
		segment += "</div>"
		segment += "<div class='p-goods'>"
		segment += "<div class='p-img'>"
		segment += "<img src='img/p2.jpg' alt=''>"
		segment += "</div>"
		segment += "<div class='p-msg'>【2000張貼紙】貼紙書 3-6歲 貼畫兒童 貼畫書全套12冊 貼畫 貼紙兒童 汽</div>"
		segment += "</div>"
		segment += "<div class='p-price'>$24.80</div>"
		segment += "<div class='p-num'>"
		segment += "<div class='quantity-form'>"
		segment += "<a href='javascript:;' class='decrement' >-</a>"
		segment += "<input type='text' class='itxt' value='1'>"
		segment += "<a href='javascript:;' class='increment' >+</a>"
		segment += "</div>"
		segment += "</div>"
		segment += "<div class='p-sum'>$24.80</div>"
		segment += "<div class='p-action'><a href='javascript:;'>洗掉</a></div>"
		segment += "</div>"
		
//=========================================================================================		
	
	
//=========================================================================================
				}
			return segment;	
		}
	});
</script>


 
 


</html>