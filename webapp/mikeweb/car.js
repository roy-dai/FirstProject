$(function () {
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