package com.infotran.springboot.mike;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import com.infotran.springboot.mike.service.cartService;

//import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutOneTime;

import com.infotran.springboot.ccc.commodity.storeService;
import com.infotran.springboot.mike.bean.orderBean;
import com.infotran.springboot.mike.bean.shoppingCartBean;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights","key"})

@Controller
public class mikeController {
	
	int cartIdReadyToDelete = 0;
	
	String ngrokHttpURL = "http://063f51c3436e.ngrok.io";
	

	@GetMapping("/MIKE")
	public String mike() {
		//return "mike/shoppingCart";
		return "mike/NewShoppingCart";
	}
	
	
	@Autowired
	cartService cartService;
	//------------?????--------------------------------------------------------------------------------	
		@PostMapping("/MIKE_A1")
		public String mike_a1(HttpServletRequest request,ModelMap m) throws IllegalStateException,  IOException {
			
			
			return "redirect:/";
		}
//--------------------------------------------------------------------------------------------	
	
	@Autowired
	storeService storeService;
	
	@PostMapping("/MIKE_A")
	public String mike_a(HttpServletRequest request,ModelMap m) throws IllegalStateException,  IOException {
		System.out.println("=================POST進來後端MIKE_A後,ModelMap m 裡面的資料有:" + m) ;
		shoppingCartBean a = new shoppingCartBean();
		a.setV_id((int)m.get("key"));//商品編號
		a.setBuyer((int)m.getAttribute("member_no"));//使用者
		a.setQty(Integer.parseInt(request.getParameter("t1")));
		boolean b = cartService.insertCart(a,request);
		
		storeService.streetVendor(m);
		return "redirect:/";
	}
//-------情況線現在是在購物車裡面!!!!: 按下"去結帳"後 >>>功能:讀取WEB端form表單過來的必要性資料 >> 然後準備生成訂單-----------------------------------------------------------------------------------------	
	@PostMapping("/MIKE_B")
	public String mike_b(HttpServletRequest request , ModelMap m) throws IOException{
		 String[] box = request.getParameterValues("box");//checkbox的name
		 System.out.println("String[] box = request.getParameterValues(\"box\"); === " + box );// name ="box" value="0" /name ="box" value="1" / name ="box" value="2" 
		 
		 String[] boxx = request.getParameterValues("boxx");// 隱藏標籤hidden >> checkbox埋的購物車內容id
		 System.out.println("String[] box = request.getParameterValues(\"boxx\"); === " + boxx );//name="boxx" value="14"(即你的cart_id) 
		 
		 String[] qty = request.getParameterValues("qty");//消費者最後調整的數量
		 System.out.println("String[] box = request.getParameterValues(\"qty\"); === " + qty );
		
		 //你要刪除的項目絕對不只一樣 , 所以必須再回圈裏面完成每一筆購物車id的寫入訂單 以及刪除 首先是先寫入訂單 再做刪除購物車內容id
		 for (String b : box) {
			 
			 int c = Integer.parseInt(b);
			 System.out.println("intC是======"+ c);
			 
			 int cart_ready_to_delete = Integer.parseInt(boxx[c]);//是你的購物車內容ID
			 cartIdReadyToDelete = cart_ready_to_delete;//本來流程有做變動,先結帳,確定結帳完後,再刪掉購物車
			 System.out.println("order_ready_to_delete = Integer.parseInt(boxx[c]);==是你的購物車內容ID====" + cart_ready_to_delete);
			 
		System.out.println(" -------------------取到WEB端 FORM表單 傳過來的checked boxx 資訊 >> card_id === "+ boxx[c]);
		System.out.println(" -------------------取到WEB端 FORM表單 傳過來的qty 資訊 >> obj_qty  === "+ qty[c]);
		 
//------------------從這裡開始是寫成訂單的部分----------------------------------------------------------------		 	
		//創立並呼叫orderBean物件來準備接收資料
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String orderDate = dateFormat.format(today);
		orderBean ob = new orderBean();
		//會員id
		ob.setBuyer((int)m.getAttribute("member_no"));
		//原始購物車id
		ob.setOriginal_Cart_Id(cart_ready_to_delete);//塞入購物車編號id
		//數量
		ob.setQty(Integer.parseInt(qty[c]));//最後訂購數量放進去訂單的qty
		//價格 = 商品數量* 單價 所以你要price >> 用cart_id找voucher裡面的price
		int price = cartService.findByCartId(cart_ready_to_delete).getC_c_price();
		int totalPrice = price*(Integer.parseInt(qty[c]));//總價格
		
		//商品id(v_id)
		int v_id = cartService.findByCartId(cart_ready_to_delete).getC_v_uniformnumbers();
		ob.setV_id(v_id);
		//賣家id
		int seller_id = cartService.findByCartId(cart_ready_to_delete).getC_sellerID();
		ob.setSeller_id(seller_id);
		
		
		
		ob.setTotal_Price(totalPrice);
		//日期
		ob.setOrder_Date(orderDate);
		//狀態
		ob.setOrder_State("尚未付款");
		
		//檢查:
		System.out.println("檢查ob:" + ob.toString()); 
		
//-------------基本上這邊會進入綠界API , 付款完成後 , 才會生成訂單編號(編碼(No.)非ID)------------		
		//綠界API方法使用區 + 付款成功後的判別式 (把"尚未付款" 更改成 "已付款")
		//模擬訂單生成:
		int r = 0;
		r = (int) (Math.random() * 1000) + 1;
		
		System.out.println("產生的隨機編號為:"+ r);
		
		
		String order_No =  m.getAttribute("member_no") + "OD" + r ;
		ob.setOrder_No(order_No);
//------------------------------------------------------------------------		 
		//確認無誤 把上面所需的資料寫進資料庫
		cartService.insertOrder(ob);
		
		//確認寫入後 , 就把購物車id給移除掉
//		cartService.removeCartId(order_ready_to_delete);

		 }
		 
		 
		
		return "mike/MemberOrder";//導入會員的個人訂單頁面
		
	}
		
		
		
//--------點下結帳後進來的"模擬會員購物訂單管理controller"----------------------------------------------------------------------------------------	
	
	@GetMapping(value = "/findMemberOrder" ,produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String,Object> findMemberOrder(ModelMap m) {
		System.out.println("-----進入會員本身的訂單管理後:-----測試: Model m 是否接的到會員No : >>" + m.get("member_no"));
		
		
		
		
		return cartService.findOrderByMemberNo((int)m.get("member_no"));
		//反正你這邊就是拿到一個map , 丟回去前端
	}
	
	
	
	
	
//---------購物車進來的controller---------------------------------------------------------------------------------------	
	
	@GetMapping(value = "/findshoppingcart" ,produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String,Object> findShoppingCart(ModelMap m) {
		System.out.println("----------測試: Model m 是否接的到會員No : >>" + m.get("member_no"));
		return cartService.findShoppingCart((int)m.get("member_no"));
	}
	
//---------刪除購物車id的controller >> 然後要重新導回頁面---------------------------------------------------------------	
	@GetMapping("/mike_remove/{cart_id}")
	public String removeCartId(@PathVariable Integer cart_id, Model m) {
		System.out.println("XXXXXXXXXXXXXXXXXXXXXXXXXXX確認我真的有拿到準備要刪除的購物車內容編號ID:" + cart_id);
			m.addAttribute("cart_id",cart_id);
		System.out.println("xxxxxxxxxxxxxxxxxxxxxxx Model m 裡面有:" + m);
		
		cartService.removeCartId((int)m.getAttribute("cart_id"));
			return "redirect:/MIKE";//redirect是呼叫同樣在這裡的另一個controller
	
	}
	
//-------------------Web端按下進入"訂單管理"時-----------------------------	
	@GetMapping("/orderManagement")
	public String orderManagement(ModelMap map) {
		
		List<orderBean> orders = cartService.findAllOrders();
		
		ArrayList order_Id = new ArrayList();
		ArrayList order_No = new ArrayList();
		ArrayList order_Date = new ArrayList();
		ArrayList buyer = new ArrayList();
		ArrayList qty = new ArrayList();
		ArrayList total_Price = new ArrayList();
		ArrayList order_State = new ArrayList();
		ArrayList v_id = new ArrayList();
		ArrayList c_name = new ArrayList();
		
		for(orderBean ob : orders) {
			order_Id.add(ob.getOrder_Id());
			order_No.add(ob.getOrder_No());
			order_Date.add(ob.getOrder_Date());
			buyer.add(ob.getBuyer());
			qty.add(ob.getQty());
			total_Price.add(ob.getTotal_Price());
			order_State.add(ob.getOrder_State());
			v_id.add(ob.getV_id());
		
			String name = cartService.findNameById(ob.getV_id());
			System.out.println("TTTTTTTTTTTTTTTTTTTTTTT:" + name );
			c_name.add(name);
		}
		
		System.out.println("========進階迴圈結果:"+orders.toString());
		
		map.addAttribute("order_Size",orders.size());
		map.addAttribute("order_Id",order_Id);
		map.addAttribute("order_No",order_No);
		map.addAttribute("order_Date",order_Date);
		map.addAttribute("buyer",buyer);
		map.addAttribute("qty",qty);
		map.addAttribute("total_Price",total_Price);
		map.addAttribute("order_State",order_State);
		map.addAttribute("v_id",v_id);
		map.addAttribute("c_name",c_name);
		System.out.println("-------------ModelMap map現在長這樣:" + map);
		
		return "mike/MikeOrderManagement";
		
	}
	
//-------------------後台>>>廠商按下>>>端按下進入"廠商訂單管理"時-----------------------------	
		@GetMapping("/VendorOrder")
		public String VendorOrder(ModelMap map  , Model m) {
			
			int member_no = Integer.parseInt(m.getAttribute("member_no").toString());
			System.out.println("RRRRRRRRRRRRRRRRRRRRRRRRR這是否是廠商的編號??? ==== "+ member_no); // >> 有了
			
			if(map.get("member_rights")==null) {
				return "redirect:/member/login";
			}if(!map.get("member_rights").equals("3")) {
				return "redirect:/";
			}
			List<orderBean> orders = cartService.findOrdersOfSellerIdByMemberNo(member_no);
			//List<orderBean> orders = cartService.findAllOrders();
			ArrayList order_Id = new ArrayList();
			ArrayList order_No = new ArrayList();
			ArrayList order_Date = new ArrayList();
			ArrayList buyer = new ArrayList();
			ArrayList qty = new ArrayList();
			ArrayList total_Price = new ArrayList();
			ArrayList order_State = new ArrayList();
			ArrayList v_id = new ArrayList();
			ArrayList c_name = new ArrayList();
			
			for(orderBean ob : orders) {
				order_Id.add(ob.getOrder_Id());
				order_No.add(ob.getOrder_No());
				order_Date.add(ob.getOrder_Date());
				buyer.add(ob.getBuyer());
				qty.add(ob.getQty());
				total_Price.add(ob.getTotal_Price());
				order_State.add(ob.getOrder_State());
				v_id.add(ob.getV_id());
			
				String name = cartService.findNameById(ob.getV_id());
				System.out.println("TTTTTTTTTTTTTTTTTTTTTTT:" + name );
				c_name.add(name);
			}
			
			System.out.println("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR========進階迴圈結果:"+orders.toString());
			
			map.addAttribute("order_Size",orders.size());
			map.addAttribute("order_Id",order_Id);
			map.addAttribute("order_No",order_No);
			map.addAttribute("order_Date",order_Date);
			map.addAttribute("buyer",buyer);
			map.addAttribute("qty",qty);
			map.addAttribute("total_Price",total_Price);
			map.addAttribute("order_State",order_State);
			map.addAttribute("v_id",v_id);
			map.addAttribute("c_name",c_name);
			System.out.println("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR-------------ModelMap map現在長這樣:" + map);
			
			return "mike/VendorOrder";
			
		}	
	
	
	
	
//------管理頁面刪除訂單資訊--------------------	
	@GetMapping("/MIKE_DELETE/{key}")
	public String deleteOrder(@PathVariable Integer key, Model m) {
			m.addAttribute("key",key);
			System.out.println("概念:在後台點下刪除訂單時,我把訂單編號asign成key帶入後台Model裡面的key ,我要確認此Model的key值是否為訂單id? =====" + m.getAttribute("key"));
			return "mike/DeleteManagement";					
	}
	//MIKE_ComfirmDelete
	@GetMapping("/MIKE_ComfirmDelete")
	public String ComfirmDelete(ModelMap m) {
		try {
		if (m.get("member_no").equals(null)) {
			return "index";			
		}
		else {
			cartService.deleteOrderByOrderId((int)m.get("key"));
			return "redirect:/orderManagement";				
		}
		}catch (Exception e) {
			return "index";				
		}
	}
	
//------管理頁面刪除訂單資訊--------------------	
		@GetMapping("/MIKE_MEMBER_DELETE/{key}")
		public String memberDeleteOrder(@PathVariable Integer key, Model m) {
				m.addAttribute("key",key);
				System.out.println("概念:在後台點下刪除訂單時,我把訂單編號asign成key帶入後台Model裡面的key ,我要確認此Model的key值是否為訂單id? =====" + m.getAttribute("key"));
				return "mike/MemberDeleteManagement";					
		}
		//MIKE_ComfirmDelete
		@GetMapping("/MIKE_ComfirmMemberDelete")
		public String ComfirmMemberDelete(ModelMap m) {
			try {
			if (m.get("member_no").equals(null)) {
				return "index";			
			}
			else {
				cartService.deleteOrderByOrderId((int)m.get("key"));
				return "redirect:/VendorOrder";				
			}
			}catch (Exception e) {
				return "index";				
			}
		}	
	
	
	
	
	
	
//------管理頁面>>廠商按下>>通知完成--------------------	
		@GetMapping("/MIKE_ANNOUNCE/{key}")
		public String ANNOUNCE(@PathVariable Integer key, Model m) {
				m.addAttribute("key",key);
				System.out.println("概念:廠商在後台點下通知訂單完成時,我把訂單編號asign成key帶入後台Model裡面的key ,我要確認此Model的key值是否為訂單id? =====" + m.getAttribute("key"));
				return "mike/Announcement";					
		}
		//MIKE_ComfirAuuounce
		@GetMapping("/MIKE_ConfirmAnnounce")
		public String ConfirmAnnounce(Model m) {
			try {
			if (m.getAttribute("member_no").equals(null)) {
				return "index";			
			}
			else {
				
				//我要叫出該筆訂單 , 改掉這筆訂單的狀態為: "可以取件"
				int order_id = Integer.parseInt(m.getAttribute("key").toString());
				orderBean thisOrder = cartService.findOrderByOrderId(order_id);
				thisOrder.setOrder_State("可以取件");
				cartService.updateOrder(thisOrder);
				
				
				//cartService.deleteOrderByOrderId((int)m.get("key"));
				return "redirect:/VendorOrder";	//這個是Controller喔 不是JSP			
			}
			}catch (Exception e) {
				return "index";				
			}
		}	
		
//------管理頁面>>廠商按下>>通知完成--------------------	
				@GetMapping("/MIKE_FINISH/{key}")
				public String FINISH(@PathVariable Integer key, Model m) {
						m.addAttribute("key",key);
						System.out.println("概念:廠商在後台點下通知訂單完成時,我把訂單編號asign成key帶入後台Model裡面的key ,我要確認此Model的key值是否為訂單id? =====" + m.getAttribute("key"));
						return "mike/Finishment";					
				}
				//MIKE_ComfirAuuounce
				@GetMapping("/MIKE_ConfirmFinishment")
				public String ConfirmFinishment(Model m) {
					try {
					if (m.getAttribute("member_no").equals(null)) {
						return "index";			
					}
					else {
						
						//我要叫出該筆訂單 , 改掉這筆訂單的狀態為: "可以取件"
						int order_id = Integer.parseInt(m.getAttribute("key").toString());
						orderBean thisOrder = cartService.findOrderByOrderId(order_id);
						thisOrder.setOrder_State("訂單完成");
						cartService.updateOrder(thisOrder);
						
						
						//cartService.deleteOrderByOrderId((int)m.get("key"));
						return "redirect:/MyOrder";	//這個是Controller喔 不是JSP			
					}
					}catch (Exception e) {
						return "index";				
					}
				}			
	
	
	
	
//------------綠界金流-----------------------------------------------
	@PostMapping("/checkOut")//找order , 抓order資料 , 處理綠界 , 所以你要把MIKE_B拿下來
	public @ResponseBody String checkOut(HttpServletRequest request , ModelMap m) throws IOException{
		//字串並不會送到模板 , 會直接送到前端 >> 所以要直接加上@ResponseBody
		
//=====================================================================================================		
		//先寫入訂單
		
		 String[] box = request.getParameterValues("box");//checkbox的name
		 System.out.println("String[] box = request.getParameterValues(\"box\"); === " + box );// name ="box" value="0" /name ="box" value="1" / name ="box" value="2" 
		 
		 String[] boxx = request.getParameterValues("boxx");// 隱藏標籤hidden >> checkbox埋的購物車內容id
		 System.out.println("String[] box = request.getParameterValues(\"boxx\"); === " + boxx );//name="boxx" value="14"(即你的cart_id) 
		 
		 String[] qty = request.getParameterValues("qty");//消費者最後調整的數量
		 System.out.println("String[] box = request.getParameterValues(\"qty\"); === " + qty );
		
		 //你要刪除的項目絕對不只一樣 , 所以必須再回圈裏面完成每一筆購物車id的寫入訂單 以及刪除 首先是先寫入訂單 再做刪除購物車內容id
		 for (String b : box) {
			 
			 int c = Integer.parseInt(b);
			 System.out.println("intC是======"+ c);
			 
			 int cart_ready_to_delete = Integer.parseInt(boxx[c]);//是你的購物車內容ID
			 cartIdReadyToDelete = cart_ready_to_delete;//本來流程有做變動,先結帳,確定結帳完後,再刪掉購物車
			 System.out.println("order_ready_to_delete = Integer.parseInt(boxx[c]);==是你的購物車內容ID====" + cart_ready_to_delete);
			 
		System.out.println(" -------------------取到WEB端 FORM表單 傳過來的checked boxx 資訊 >> card_id === "+ boxx[c]);
		System.out.println(" -------------------取到WEB端 FORM表單 傳過來的qty 資訊 >> obj_qty  === "+ qty[c]);
		 
//------------------從這裡開始是寫成訂單的部分----------------------------------------------------------------		 	
		//創立並呼叫orderBean物件來準備接收資料
		Date today = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String orderDate = dateFormat.format(today);
		orderBean ob = new orderBean();
		
		
		//暫時把即將刪除的
		ob.setOrder_Id(cart_ready_to_delete);
		//會員id
		ob.setBuyer((int)m.getAttribute("member_no"));
		//原始購物車id
		ob.setOriginal_Cart_Id(cart_ready_to_delete);//塞入購物車編號id
		//數量
		ob.setQty(Integer.parseInt(qty[c]));//最後訂購數量放進去訂單的qty
		//價格 = 商品數量* 單價 所以你要price >> 用cart_id找voucher裡面的price
		int price = cartService.findByCartId(cart_ready_to_delete).getC_c_price();
		int totalPrice = price*(Integer.parseInt(qty[c]));//總價格
		
		//商品id(v_id)
		int v_id = cartService.findByCartId(cart_ready_to_delete).getC_v_uniformnumbers();
		ob.setV_id(v_id);
		//賣家id
		int seller_id = cartService.findByCartId(cart_ready_to_delete).getC_sellerID();
		ob.setSeller_id(seller_id);
		
		
		
		ob.setTotal_Price(totalPrice);
		//日期
		ob.setOrder_Date(orderDate);
		//狀態
		ob.setOrder_State("尚未付款");
		
		//檢查:
		System.out.println("檢查ob:" + ob.toString()); 
		
//-------------基本上這邊會進入綠界API , 付款完成後 , 才會生成訂單編號(編碼(No.)非ID)------------		
		//綠界API方法使用區 + 付款成功後的判別式 (把"尚未付款" 更改成 "已付款")
		//模擬訂單生成:
		int r = 0;
		r = (int) (Math.random() * 1000) + 1;
		
		System.out.println("產生的隨機編號為:"+ r);
		
		
		String order_No =  m.getAttribute("member_no") + "OD" + r ;
		ob.setOrder_No(order_No);
//------------------------------------------------------------------------		 
		//確認無誤 把上面所需的資料寫進資料庫
		cartService.insertOrder(ob);
		
		 }
		
//======================================================================================================		
		//先寫入成訂單,再把訂單拿去做結帳 (等於同在這個controller裡面做)
		
		//For綠界
//		AllInOne all = new AllInOne("");
		
		//取得勾選準備要結帳的訂單編號
		//int order_Id = Integer.parseInt( request.getParameter("boxx"));//就是order_id
		int order_Id = cartIdReadyToDelete;//就是order_id
		
		System.out.println("!!!!!!!!!!!!!!!!!!!!!這裡有通過reuquest抓值產生的BUG問題 >>>>>>" + order_Id);
		
		//拿著 orderId , 使用em去資料庫找出order_id = xxx 的這筆資料的Bean
		orderBean orderBean = cartService.findOrderByOrderId(order_Id);
		
		System.out.println("!!!!!!!!!!!!!!!執行到這,代表 有進來checkOut並且所有資料基本上都有抓到 準備做寫入動作");
		
		AioCheckOutOneTime obj = new AioCheckOutOneTime();
		
//		String ngrokHttpURL = "http://bd54943d286b.ngrok.io";
		String ngrokHttpsURL = "https://b59860932fbf.ngrok.io";
//		String staticURL = "http://localhost:80/nightMarket3/paymentResult";
		
		obj.setMerchantTradeNo(orderBean.getOrder_No().toString());
		obj.setMerchantTradeDate(orderBean.getOrder_Date().toString());
		obj.setTotalAmount(String.valueOf(orderBean.getTotal_Price()));//你娘的哩幹
		obj.setReturnURL(ngrokHttpURL +"/nightMarket3/paymentResult");
//		obj.setReturnURL(staticURL);
		obj.setNeedExtraPaidInfo("N");
		obj.setRedeem("Y");
		obj.setTradeDesc("test Description");
		obj.setItemName("TS01");
		obj.setClientBackURL("http://localhost:80/nightMarket3");
		obj.setCustomField1(String.valueOf(orderBean.getOrder_Id()));
		
		System.out.println("!!!!!!!!!!!!!!!執行到這,代表所有資料基本上都有寫入");
		System.out.println("!!!!!!!!obj=:" +obj.toString());
//		String form = all.aioCheckOut(obj, null);
		
//		System.out.println("這是啥????"+form);
//		8/26加的======================
		return null; 
//		return form;
		
	}
	
	@PostMapping("/paymentResult")
	public String pamentResult(@RequestParam("RtnCode") String rtnCode,
			@RequestParam("CustomField1") String orderId ) {
		
		System.out.println("!!!!!!!!!!!!!!!執行到這,代表已經有收到帳單結果 但還沒確認是否真的有資料");
		
		int rc = Integer.parseInt(rtnCode);
		//int oid = Integer.parseInt(orderId);
		orderBean ob = cartService.findOrderByOrderId(Integer.parseInt(orderId));
//		System.out.println(ob);
		System.out.println("!!!!!!!!!!!!!!!執行到這,代表準備要進入修改訂單狀態");
		
		if(rc==1) {
			System.out.println("=========交易成功=========");
			ob.setOrder_State("付款完成");
		}else {
			System.out.println("=========交易失敗=========");
			ob.setOrder_State("付款失敗");
		}
		
		cartService.updateOrder(ob);
		
		//先更新完訂單 然後再刪掉購物車?
		cartService.removeCartId(cartIdReadyToDelete);

		return "redirect:/index";

	}
	
	
	
	//-------------------管理員登入後 , 從會員選單端按下進入"管理頁面"時-----------------------------	
		@GetMapping("/BackStage")
		public String backStage(ModelMap map,Model m) {
		
			if(m.getAttribute("member_rights")==null) {
				return "redirect:/member/login";
			}if(!m.getAttribute("member_rights").equals("4")) {
				return "redirect:/";
			}
			
			
//			List<orderBean> orders = cartService.findAllOrders();
//			
//			ArrayList order_Id = new ArrayList();
//			ArrayList order_No = new ArrayList();
//			ArrayList order_Date = new ArrayList();
//			ArrayList buyer = new ArrayList();
//			ArrayList qty = new ArrayList();
//			ArrayList total_Price = new ArrayList();
//			ArrayList order_State = new ArrayList();
//			ArrayList v_id = new ArrayList();
//			ArrayList c_name = new ArrayList();
//			
//			for(orderBean ob : orders) {
//				order_Id.add(ob.getOrder_Id());
//				order_No.add(ob.getOrder_No());
//				order_Date.add(ob.getOrder_Date());
//				buyer.add(ob.getBuyer());
//				qty.add(ob.getQty());
//				total_Price.add(ob.getTotal_Price());
//				order_State.add(ob.getOrder_State());
//				v_id.add(ob.getV_id());
//			
//				String name = cartService.findNameById(ob.getV_id());
//				System.out.println("TTTTTTTTTTTTTTTTTTTTTTT:" + name );
//				c_name.add(name);
//			}
//			
//			System.out.println("========進階迴圈結果:"+orders.toString());
//			
//			map.addAttribute("order_Size",orders.size());
//			map.addAttribute("order_Id",order_Id);
//			map.addAttribute("order_No",order_No);
//			map.addAttribute("order_Date",order_Date);
//			map.addAttribute("buyer",buyer);
//			map.addAttribute("qty",qty);
//			map.addAttribute("total_Price",total_Price);
//			map.addAttribute("order_State",order_State);
//			map.addAttribute("v_id",v_id);
//			map.addAttribute("c_name",c_name);
//			System.out.println("-------------ModelMap map現在長這樣:" + map);
			
//			return "mike/BackStageManagement";
			return "redirect:/admin/center";
			
		}
		
		
//-------------------"非"管理員登入後 !!!!!!!!  從"會員選單"端按下進入"我的訂單"時-----------------------------	
				@GetMapping("/MyOrder")
				public String MyOrder(ModelMap map , Model m) {
					
					//List<orderBean> orders = cartService.findAllOrders();
					
					int member_no = Integer.parseInt(m.getAttribute("member_no").toString());
					System.out.println("會員點下我的訂單時,是否我能用m.getAttribute來抓到我的會員member_no的值??? ==== "+ member_no); // >> 有了
					
					//dao必須寫一個方法讓抓出來的資料裡面只有該會員的資料
					List<orderBean> ordersOfMember_no =	cartService.findOrdersByMemberNo(member_no);
					
					ArrayList order_Id = new ArrayList();
					ArrayList order_No = new ArrayList();
					ArrayList order_Date = new ArrayList();
					ArrayList buyer = new ArrayList();
					ArrayList qty = new ArrayList();
					ArrayList total_Price = new ArrayList();
					ArrayList order_State = new ArrayList();
					ArrayList v_id = new ArrayList();
					ArrayList c_name = new ArrayList();
					
					for(orderBean ob : ordersOfMember_no) {
						order_Id.add(ob.getOrder_Id());
						order_No.add(ob.getOrder_No());
						order_Date.add(ob.getOrder_Date());
						buyer.add(ob.getBuyer());
						qty.add(ob.getQty());
						total_Price.add(ob.getTotal_Price());
						order_State.add(ob.getOrder_State());
						v_id.add(ob.getV_id());
					
						String name = cartService.findNameById(ob.getV_id());
						System.out.println("TTTTTTTTTTTTTTTTTTTTTTT:" + name );
						c_name.add(name);
					}
					
					System.out.println("========進階迴圈結果:"+ordersOfMember_no.toString());
					
					map.addAttribute("order_Size",ordersOfMember_no.size());
					map.addAttribute("order_Id",order_Id);
					map.addAttribute("order_No",order_No);
					map.addAttribute("order_Date",order_Date);
					map.addAttribute("buyer",buyer);
					map.addAttribute("qty",qty);
					map.addAttribute("total_Price",total_Price);
					map.addAttribute("order_State",order_State);
					map.addAttribute("v_id",v_id);
					map.addAttribute("c_name",c_name);
					System.out.println("-------------ModelMap map現在長這樣:" + map);
					
					return "mike/MyOrder";
					
				}
				
////-------------------廠商登入後 在後台選"廠商訂單"時 只能看到屬於廠商自己"編號"的訂單-----------------------------	
//				@GetMapping("/OrderForVendor")
//				public String OrderForVendor(ModelMap map , Model m) {
//					
//					//List<orderBean> orders = cartService.findAllOrders();
//					
//					int member_no = Integer.parseInt(m.getAttribute("member_no").toString());
//					System.out.println("會員點下我的訂單時,是否我能用m.getAttribute來抓到我的會員member_no的值??? ==== "+ member_no); // >> 有了
//					
//					//拿member_id去查 vendor_id資料(c_seller_id)
//					//dao必須寫一個方法讓抓出來的資料裡面只有屬於該"廠商編號"(sesser_id)的資料 >> 先透過member_id找出sellerId>>再由seller_id找出orders
//					cartService.findSellerIdByMemberNo(member_no);
//					
//					
//					
//					//dao必須寫一個方法讓抓出來的資料裡面只有該會員的資料
//					List<orderBean> ordersOfVendor_id =	cartService.findOrdersByMemberNo(member_no);
//					
//					ArrayList order_Id = new ArrayList();
//					ArrayList order_No = new ArrayList();
//					ArrayList order_Date = new ArrayList();
//					ArrayList buyer = new ArrayList();
//					ArrayList qty = new ArrayList();
//					ArrayList total_Price = new ArrayList();
//					ArrayList order_State = new ArrayList();
//					ArrayList v_id = new ArrayList();
//					ArrayList c_name = new ArrayList();
//					
//					for(orderBean ob : ordersOfVendor_id) {
//						order_Id.add(ob.getOrder_Id());
//						order_No.add(ob.getOrder_No());
//						order_Date.add(ob.getOrder_Date());
//						buyer.add(ob.getBuyer());
//						qty.add(ob.getQty());
//						total_Price.add(ob.getTotal_Price());
//						order_State.add(ob.getOrder_State());
//						v_id.add(ob.getV_id());
//					
//						String name = cartService.findNameById(ob.getV_id());
//						System.out.println("GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG:" + name );
//						c_name.add(name);
//					}
//					
//					System.out.println("========GGGGGGGGGGGGGGGGGGGGG進階迴圈結果:"+ordersOfVendor_id.toString());
//					
//					map.addAttribute("order_Size",ordersOfVendor_id.size());
//					map.addAttribute("order_Id",order_Id);
//					map.addAttribute("order_No",order_No);
//					map.addAttribute("order_Date",order_Date);
//					map.addAttribute("buyer",buyer);
//					map.addAttribute("qty",qty);
//					map.addAttribute("total_Price",total_Price);
//					map.addAttribute("order_State",order_State);
//					map.addAttribute("v_id",v_id);
//					map.addAttribute("c_name",c_name);
//					System.out.println("-------------ModelMap map現在長這樣:" + map);
//					
//					return "mike/MyOrder";
//					
//				}				
//				
//				
				
				
				
//-------------------"最高權限管理員"登入後 !!!!!!!!  從"會員選單"端按下進入"我的訂單"時-----------------------------	
				@GetMapping("/AllOrder")
				public String AllOrder(ModelMap map , Model m) {
					
					List<orderBean> orders = cartService.findAllOrders();
					
					//int member_no = Integer.parseInt(m.getAttribute("member_no").toString());
					//System.out.println("會員點下我的訂單時,是否我能用m.getAttribute來抓到我的會員member_no的值??? ==== "+ member_no); // >> 有了
					
					//dao必須寫一個方法讓抓出來的資料裡面只有該會員的資料
					//List<orderBean> ordersOfMember_no =	cartService.findOrdersByMemberNo(member_no);
					
					ArrayList order_Id = new ArrayList();
					ArrayList order_No = new ArrayList();
					ArrayList order_Date = new ArrayList();
					ArrayList buyer = new ArrayList();
					ArrayList qty = new ArrayList();
					ArrayList total_Price = new ArrayList();
					ArrayList order_State = new ArrayList();
					ArrayList v_id = new ArrayList();
					ArrayList c_name = new ArrayList();
					
					for(orderBean ob : orders) {
						order_Id.add(ob.getOrder_Id());
						order_No.add(ob.getOrder_No());
						order_Date.add(ob.getOrder_Date());
						buyer.add(ob.getBuyer());
						qty.add(ob.getQty());
						total_Price.add(ob.getTotal_Price());
						order_State.add(ob.getOrder_State());
						v_id.add(ob.getV_id());
					
						String name = cartService.findNameById(ob.getV_id());
						System.out.println("TTTTTTTTTTTTTTTTTTTTTTT:" + name );
						c_name.add(name);
					}
					
					System.out.println("========進階迴圈結果:"+orders.toString());
					
					map.addAttribute("order_Size",orders.size());
					map.addAttribute("order_Id",order_Id);
					map.addAttribute("order_No",order_No);
					map.addAttribute("order_Date",order_Date);
					map.addAttribute("buyer",buyer);
					map.addAttribute("qty",qty);
					map.addAttribute("total_Price",total_Price);
					map.addAttribute("order_State",order_State);
					map.addAttribute("v_id",v_id);
					map.addAttribute("c_name",c_name);
					System.out.println("-------------ModelMap map現在長這樣:" + map);
					
					return "mike/MyOrder";
					
				}				

				
				
				
				
//--------------------付款失敗後的重新下單動作----------------------------------------------------------------------------------				
				@GetMapping("/reCheck/{key}")
				public  String reCheck(@PathVariable Integer key, Model m) {
						m.addAttribute("key",key);
						System.out.println("概念:在後台點下刪除訂單時,我把訂單編號asign成key帶入後台Model裡面的key ,我要確認此Model的key值是否為訂單id? =====" + m.getAttribute("key"));
						return "mike/ReCheck";					
				}
				
				//MIKE_ComfirmRecheck
				@GetMapping("/MIKE_ComfirmReCheck")
				public @ResponseBody String ComfirmReCheck(ModelMap m) {
					try {
					if (m.get("member_no").equals(null)) {
						return "redirect:/";			
					}
					else {
						
						
						int order_id = Integer.parseInt (m.get("key").toString());
						System.out.println("有近來準備操作綠界的但還沒寫入程式碼的地方");
						System.out.println("Model Map裡面有:" + m);
						System.out.println("KEY是:"+ m.get("key"));
						
						
						//拿著 orderId , 使用em去資料庫找出order_id = xxx 的這筆資料的Bean
						orderBean orderBean = cartService.findOrderByOrderId(order_id);
						
						//操作元素們
//						AllInOne all = new AllInOne("");
						AioCheckOutOneTime obj = new AioCheckOutOneTime();
//						String ngrokHttpURL = "http://bd54943d286b.ngrok.io";
						
						//再填一次該筆訂單的資料
						obj.setMerchantTradeNo("RePay"+orderBean.getOrder_No().toString());
//						obj.setMerchantTradeNo("hahaha125");
						obj.setMerchantTradeDate(orderBean.getOrder_Date().toString());
						obj.setTotalAmount(String.valueOf(orderBean.getTotal_Price()));//你娘的哩幹
						obj.setReturnURL(ngrokHttpURL +"/nightMarket3/rePaymentResult");
//						obj.setReturnURL(staticURL);
						obj.setNeedExtraPaidInfo("N");
						obj.setRedeem("Y");
						obj.setTradeDesc("test Description");
						obj.setItemName("TS01");
						obj.setClientBackURL("http://localhost:80/nightMarket3");
						obj.setCustomField1(String.valueOf(orderBean.getOrder_Id()));
						
						System.out.println("!!!!!!!!!!!!!!!執行到這,代表所有資料基本上都有寫入");
						System.out.println("!!!!!!!!obj=:" +obj.toString());
//						String form = all.aioCheckOut(obj, null);
						
//						System.out.println("同一筆訂單的資料,如果付款失敗,又重新再付款一次的話,結果為????"+form);
						
//						return form;
//						8/26加的=================
						return null; 
						
					
						}
					
					}catch (Exception e) {
						return "redirect:/";				
					}
				}
				
				@PostMapping("/rePaymentResult")
				public String rePaymentResult(@RequestParam("RtnCode") String rtnCode,
						@RequestParam("CustomField1") String orderId ) {
					
					System.out.println("!!!!!!!!!!!!!!!執行到這,代表已經有收到帳單結果 但還沒確認是否真的有資料");
					
					int rc = Integer.parseInt(rtnCode);
					//int oid = Integer.parseInt(orderId);
					orderBean ob = cartService.findOrderByOrderId(Integer.parseInt(orderId));
//					System.out.println(ob);
					System.out.println("!!!!!!!!!!!!!!!執行到這,代表準備要進入修改訂單狀態");
					
					if(rc==1) {
						System.out.println("=========交易成功=========");
						ob.setOrder_State("重新付款完成");
					}else {
						System.out.println("=========交易失敗=========");
						ob.setOrder_State("付款依然失敗");
					}
					
					cartService.updateOrder(ob);
					
					//先更新完訂單 然後再刪掉購物車? >> 因為是重新付款 , 所以該購物車早已刪除
					//cartService.removeCartId(cartIdReadyToDelete);

					return "redirect:/index";

				}
				
				
				
}
