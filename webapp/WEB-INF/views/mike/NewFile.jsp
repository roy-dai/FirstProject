<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> YA!夜總匯</title>


  <link rel="stylesheet" href="miketest/css/bootstrap.min.css">
  <style>
  .badge-notify{
    background:red;
    position:relative;
    top: -20px;
    right: 10px;
  }
  .my-cart-icon-affix {
    position: fixed;
    z-index: 999;
  }
  </style>
</head>
<body class="container">

  <div class="page-header">
    <h1>Products
      <div style="float: right; cursor: pointer;">
        <span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span>
      </div>
    </h1>
  </div>
  
  <div id="dataArea"></div>

<script src="miketest/js/jquery-2.2.3.min.js"></script>
  <script type='text/javascript' src="miketest/js/bootstrap.min.js"></script>
  <script type='text/javascript' src="miketest/js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {
//=====================================================================
	  
	    window.addEventListener('load', function() {
	dataArea = document.getElementById("dataArea");
});

let xhr = new XMLHttpRequest();
xhr.open('GET', "<c:url value='/findshoppingcart' />", true);
xhr.send();
xhr.onreadystatechange = function() {
	if (xhr.readyState == 4 && xhr.status == 200) {
		console.log(xhr.responseText);
		dataArea.innerHTML = showData(xhr.responseText);
	}
};

function showData(textObj) {
	
	//全域變數區
	let obj = JSON.parse(textObj);//拿到map
	//console.log("JSON.parseObj得到map")
	//console.log(obj)
	
	let size = obj.size;
	//console.log("size = obj.size >> 看map的size >> undefined ???")
	//console.log(size)
	
	let shoppingCartSize = obj.list;
	//console.log("shoppingCartSize = obj.list; >> 這啥?2嗎?")
	//console.log(shoppingCartSize)


//-----------------HTML初始碼埋碼區----------------------------------	
	let segment = "";
	//let segment = '<div class="cart-warp">'
		//segment += '<!-- 頭部全選模塊 -->'
		//segment += '<div class="cart-thead">'
		//segment += '<div class="t-checkbox">'
		//segment += '<input type="checkbox" name="" id="" class="checkall"> 全選'
		//segment += '</div>'
		//segment += '<div class="t-goods">商品</div>'
		//segment += '<div class="t-price">單價</div>'
		//segment += '<div class="t-num">數量</div>'
		//segment += '<div class="t-sum">小計</div>'
		//segment += '<div class="t-action">操作</div><i class="fas fa-trash-alt"></i>'
		//segment += '</div>'
		//segment += '<!-- 商品詳細模塊 -->'
		//segment += '<div class="cart-item-list">'
//-----------------HTML初始碼埋碼區----------------------------------	
	
			
	//迴圈&區域變數
	for(i=0 ; i< shoppingCartSize ; i++){
		
		let cartId_i = "cartId" + i ;//但這邊必須依附著i >> cartId0 ,cartId1
		let custom_i = "custom" + i ;
		let c_name_i = "c_name" + i ;
		let qty_i = "qty" + i ; 
		let c_image_i = "c_image" + i ;
		let c_price_i = "c_price" + i ;
		
		
		let obj_cartId_i = obj[cartId_i];  //map[cartId0]
		let obj_custom_i = obj[custom_i]; 
		let obj_c_name_i = obj[c_name_i];
		let obj_qty_i = obj[qty_i];
		let obj_c_image_i = obj[c_image_i];
		let obj_c_price_i = obj[c_price_i];
		
		
//------ 因為客製化內容出現順序問題,需要先拉出來處理 , 然後再用tmp來當佔存-------------------------		
 		let tmp = ""
 		//console.log("88787878787878877")
 		//console.log(tmp)
	
	for(k=0 ; k < obj_custom_i.length ; k++ ){
			
			let l = k+1
			
			console.log(obj_custom_i[k]);//去冰 無糖 +珍珠
			//segment += "<h4>商品客製化內容" + l +":" + obj_custom_i[k] + "<h4>"
			
			tmp += obj_custom_i[k]
		}
//---------------------------------------------------------------------------------

 		
//  		for(b=0 ; b<obj_custom_i.length ; b++){
// 			//let tmp = ""
// 			console.log("8787878787887")
// 				console.log(b)
// 				console.log(tmp)
// 		}
		
		
		let j =0;
		// 我這邊進來後需要從0重新來過
		// 不能跟著i變成1 ,不然0就會吃不到(第一筆)
			console.log(obj_cartId_i[j]); //map[cartId0][0] >> 1
			console.log(obj_c_name_i[j]);// map[c_name0][0] >> 藍柑檸檬汽水
			console.log(obj_qty_i[j]);//map[qty0][0] >> 99 
			console.log(obj_c_image_i[j]);//map[c_image][0] >> 8c8f12d3-d57a-4deb-abc5-ecb2eb2a4930.jpg
			
			
//--------------迴圈埋碼區---------------------------------------------------------

		segment += '<div class="cart-item check-cart-item">'
		segment += '<div class="p-checkbox">'
		segment += '<input type="checkbox" name="" id=""  class="j-checkbox">'
		segment += '</div>'
		segment += '<div class="p-goods">'
		segment += '<div class="p-img">'
		segment += '<img src="images/ccc/'+ obj_c_image_i[j] + '" alt="" width="90px" height="90px">'
		segment += '</div>'
		segment += '<div class="p-msg">' + obj_c_name_i[j] + '</div>'
		segment += '<div class="p-msg">' + tmp + '</div>'
		segment += '</div>'
		segment += '<div class="p-price">$' + obj[c_price_i] + '</div>'
		segment += '<div class="p-num">'
		segment += '<div class="quantity-form">'
		segment += '<a href="javascript:;" class="decrement">-</a>'
		segment += '<input type="text" class="itxt" value="1">'
		segment += '<a href="javascript:;" class="increment">+</a>'
		segment += '</div>'
		segment += '</div>'
		segment += '<div class="p-sum">$' + obj[c_price_i] + '</div>'
		segment += '<i class="fas fa-trash-alt"></i>'
		segment += '<div class="p-action"><a href="<c:url value="/mike_remove"/>">移除</a></div>'
		segment += '</div>' 

//--------------迴圈埋碼區結束---------------------------------------------------------			

//--------------對照組資料---------------------------------------------------------			
		//segment += '<!-- 對照組 -->'
		//segment += "<h2>對照組:模擬購物車內容清單no." + i + "<h2>"//不是j 是i (j是歸零)	
		//segment += "<h4>隱藏的購物車內容代號:" + obj_cartId_i[j] + "<h4>"
		//segment += "<h4>商品名稱:" + obj_c_name_i[j] + "<h4>"
		//segment += "<h4>購買數量:" + obj_qty_i[j] + "<h4>"
		//segment += "<h4>購買價格:" + obj[c_price_i] + "<h4>"
		//segment += "<h4>商品圖片:" + obj_c_image_i[j] + "<h4>"
//--------------對照組資料---------------------------------------------------------			
		
		j++;
		
		}

//------------補上HEML套版結尾-------------------------------------------------------
		//segment += '</div>'
		//segment += '<!-- 結算模塊 -->'
		//segment += '<div class="cart-floatbar">'
		//segment += '<div class="select-all">'
		//segment += '<input type="checkbox" name="" id="" class="checkall">全選'
		//segment += '</div>'
		//segment += '<div class="operation">'
		//segment += '<a href="javascript:;" class="remove-batch"> 洗掉選中的商品</a>'
		//segment += '<a href="javascript:;" class="clear-all">清理購物車</a>'
		//segment += '</div>'
		//segment += '<div class="toolbar-right">'
		//segment += '<div class="amount-sum">已經選<em>1</em>件商品</div>'
		//segment += '<div class="price-sum">總價： <em>$12.60</em></div>'
		//segment += '<div class="btn-area">去結算</div>'
		//segment += '</div>'
		//segment += '</div> <!-- cart-floatbar end -->'
		//segment += '</div> <!-- cart-warp end -->'
		//segment += '</div> <!-- w end -->'
//------------補上HEML套版結尾-------------------------------------------------------
		
		
	return segment;
	
	}
	  
//==========================================================================================----------------------------------------------------------------
   
var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      currencySymbol: '$',
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      classProductQuantity: 'my-product-quantity',
      classProductRemove: 'my-product-remove',
      classCheckoutCart: 'my-cart-checkout',
      affixCartIcon: true,
      showCheckoutModal: true,
      numberOfDecimals: 2,
      cartItems: [
        {id: 1, name: 'product 1', summary: 'summary 1', price: 10, quantity: 1, image: 'images/img_1.png'},
        {id: 2, name: 'product 2', summary: 'summary 2', price: 20, quantity: 2, image: 'images/img_2.png'},
        {id: 3, name: 'product 3', summary: 'summary 3', price: 30, quantity: 1, image: 'images/img_3.png'}
      ],
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      afterAddOnCart: function(products, totalPrice, totalQuantity) {
        console.log("afterAddOnCart", products, totalPrice, totalQuantity);
      },
      clickOnCartIcon: function($cartIcon, products, totalPrice, totalQuantity) {
        console.log("cart icon clicked", $cartIcon, products, totalPrice, totalQuantity);
      },
      checkoutCart: function(products, totalPrice, totalQuantity) {
        var checkoutString = "Total Price: " + totalPrice + "\nTotal Quantity: " + totalQuantity;
        checkoutString += "\n\n id \t name \t summary \t price \t quantity \t image path";
        $.each(products, function(){
          checkoutString += ("\n " + this.id + " \t " + this.name + " \t " + this.summary + " \t " + this.price + " \t " + this.quantity + " \t " + this.image);
        });
        alert(checkoutString)
        console.log("checking out", products, totalPrice, totalQuantity);
      },
      getDiscountPrice: function(products, totalPrice, totalQuantity) {
        console.log("calculating discount", products, totalPrice, totalQuantity);
        return totalPrice * 0.5;
      }
    });

    $("#addNewProduct").click(function(event) {
      var currentElementNo = $(".row").children().length + 1;
      $(".row").append('<div class="col-md-3 text-center"><img src="images/img_empty.png" width="150px" height="150px"><br>product ' + currentElementNo + ' - <strong>$' + currentElementNo + '</strong><br><button class="btn btn-danger my-cart-btn" data-id="' + currentElementNo + '" data-name="product ' + currentElementNo + '" data-summary="summary ' + currentElementNo + '" data-price="' + currentElementNo + '" data-quantity="1" data-image="images/img_empty.png">Add to Cart</button><a href="#" class="btn btn-info">Details</a></div>')
    });
  });
  </script>
  
  
  

</body>

</html>