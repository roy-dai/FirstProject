<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>YA!夜總匯</title>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="mikeweb/car.css">
<link rel="stylesheet" href="mikeweb/fontawesome/css/all.min.css">
<script src="mikeweb/jquery-2.2.3.min.js"></script>
<script src="mikeweb/car.js"></script>
</head>
<body>
<!-- 管理頁面連結 -->
<a href="<c:url value='/CCC' />"><button class="btn-area" id='confirm' >繼續逛街</button></a>
<a href="<c:url value='/orderManagement' />"><button class="btn-area" id='confirm' >管理頁面</button></a>
<!-- 測試區 -->
<div class="w">
    <div class="cart-warp">
      <!-- 頭部全選模塊 -->
      <div class="cart-thead">
        <div class="t-checkbox">
          <input type="checkbox" name="" id="" class="checkall"> 全選
        </div>
        <div class="t-goods">商品</div>
        <div class="t-price">單價</div>
        <div class="t-num">數量</div>
        <div class="t-sum">小計</div>
        <div class="t-action">操作</div><i class="fas fa-trash-alt"></i>
      </div>
<form class="form"  action="/nightMarket3/MIKE_B" method="POST" enctype="multipart/form-data" >
<div  id='dataArea'>

</div>
	<div class="cart-item-list">
	</div>
     
  	<div class="cart-floatbar">
        <div class="select-all">
          <input type="checkbox" name="" id="" class="checkall">全選
        </div>
        <div class="operation">
          <a href="javascript:;" class="remove-batch"> 移除選取的商品</a>
          <a href="javascript:;" class="clear-all">清空購物車</a>
        </div>
        <div class="toolbar-right">
          <div class="amount-sum">已經選<em>1</em>件商品</div>
          <div class="price-sum">總價： <em>$12.60</em></div>
          <input type="submit" class="btn-area"  value="去結帳" >
 </form>         
        </div>
      </div> <!-- cart-floatbar end -->
    </div> <!-- cart-warp end -->
  </div> <!-- w end -->
<!-- 測試區 -->  

</body>

<script>
//let dataArea = null; //若null會發生Cannot set property 'innerHTML' of null at XMLHttpRequest.xhr.onreadystatechange

$(function(){

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
		segment += '<input type="checkbox" name="box" id="' + obj_cartId_i[j] + '"  value="' + i + '" class="j-checkbox">' //這樣設計是為了可以讓後端讀取多個以勾選資料(先轉換成另外一個形式的id)
		segment += '<input type="hidden" name="boxx" value="' + obj_cartId_i[j] + '">'//使用input做hidden型態 , 裡面埋購物車id , name="boxx"讓我取value 
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
		segment += '<input id="' + 'qtyOfOrder'+ obj_cartId_i[j] + '"  name="qty" type="text" class="itxt" value="' + obj_qty_i[j]  +'">'
		segment += '<a href="javascript:;" class="increment">+</a>'
		segment += '</div>'
		segment += '</div>'
		segment += '<div class="p-sum">$' + obj[c_price_i] + '</div>'
		segment += '<i class="fas fa-trash-alt"></i>'
		segment += '<div class="p-action"><a href="<c:url value="/mike_remove/'+ obj_cartId_i[j] +'"/>">移除</a></div>'
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
	
})

</script>

<script>
//      var x = 0;

//      document.getElementById('output-area').value = x;

//      function plus() {
//          document.getElementById('output-area').value = ++x;
//      }

//      function minus() {

//              if(x>0){
//              document.getElementById('output-area').value = --x;
//              }else{
//                  document.getElementById('output-area').value =0;
//            }
         
//      }
 </script>
 
 
 


</html>