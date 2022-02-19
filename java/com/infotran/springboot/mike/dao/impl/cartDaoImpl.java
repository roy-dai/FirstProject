package com.infotran.springboot.mike.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotran.springboot.ccc.bean.cokebean;
import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.mike.bean.custom_style;
import com.infotran.springboot.mike.bean.orderBean;
import com.infotran.springboot.mike.bean.shoppingCartBean;
import com.infotran.springboot.mike.dao.cartDao;
import com.infotran.springboot.ccc.bean.typebean;
@Repository
public class cartDaoImpl implements cartDao{
	public cartDaoImpl() {
		System.out.println("-----------------------進入daolmpl---------------------------------");
	}
	
	@Autowired
	EntityManager em;
	
	
	@Override
	public boolean insertCart(shoppingCartBean a,HttpServletRequest request) {
		
		System.out.println("---------------------進入carDaoImpl裡面的insrertCart-------------------------------");
		
		em.persist(a);	//用em新增一筆 shoppingCartBean物件	
		int v_id = a.getV_id();
		String hql = "FROM  typebean  where v_id like '"+v_id+"'";
		List<typebean> list = em.createQuery(hql).getResultList();
		
		int id = a.getId();//購物車ID
		if (list.size()!=0) {
			System.out.println("-----------------確認list的size大於0, 開始執行迴圈取值------------------");
			
			for (int c =0;c<list.size();c++) {
				if (request.getParameter("test"+c)!=null);
					custom_style d = new custom_style(); 
					d.setCart_id(id);
					d.setCustom_style(Integer.parseInt(request.getParameter("test"+c)));
					System.out.println("STEP1 >> 抓到id 為Cart_id , 值為: " + id);
					System.out.println("STEP2 >> 抓到request.getParameter(test + c )的 c 為: " + c);
					System.out.println("STEP3 >> 於是你拿了id(即代表購物車裡面第n筆購物選項的id) 跟 迴圈的一個多個c(即test0/1/2/3)寫入custom_style這張資料庫table內");
					em.persist(d);		
			}
		}
		
		return true;
	}


	@SuppressWarnings("unchecked")
	@Override
	//這裡如果只單純用查詢, 只會拿到一堆為了方便寫入資料庫時做的shoppingCartBean物件 >> 都是一堆數字
	//如果你要讓他能在前端呈現,必須要另創出個物件,或是想辦法讓map裡面有辦法拿到中文資料, 再丟去給前端
	public Map<String, Object> findShoppingCart(int memberId) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		//所有準備要傳去給後端的東西都找完後, 先存在這 , 然後再放進map
		ArrayList finalListOfName = new ArrayList();
		
		System.out.println("-----------------------準備進入HQL , 沒下文代表失敗-----------");
		String hql = "FROM shoppingCartBean where buyer =" + memberId ; //你他媽的where的"="後面沒有接冒號幹
		//List<storebean> list = em.createQuery(hql).getResultList();//????你用storebean居然也沒事????!!!!
		List<shoppingCartBean> shoppingCartBeanList = em.createQuery(hql).getResultList();//member_no 所選的購物車內容(可能佔全部100筆裡面的10筆)
		
		//拿了
		
		//想辦法讓map裡面有: list.size / 商品名稱 / 商品客製化內容 / 商品購物數量
		System.out.println("---------------功能測試先到這段落 , 確定HQL有作用");
		System.out.println("---------------並且有透過會員ID找到屬於會員的購物車內容共:" + shoppingCartBeanList.size() + "筆");
		
		//準備逐筆讀取我所要的資料
		for(int i =0 ;i<shoppingCartBeanList.size();i++ ) { // i = 0~9 (共10筆) >> 靠北喔你用<=會變11筆啦幹操你媽的	
			
			ArrayList listOfCartId = new ArrayList();
			ArrayList listOfc_name = new ArrayList();
			ArrayList listOfc_image = new ArrayList();
			ArrayList listOfCartQty = new ArrayList();
			ArrayList listOfc_price = new ArrayList();
			
			
			//STEP1 : 我要商品名稱
			int v_id = shoppingCartBeanList.get(i).getV_id();//這個是會員編號28 的 第1筆查詢結果 中, 他所選的商品id
			int id = shoppingCartBeanList.get(i).getId();//拿去給STEP2用的
			int qty = shoppingCartBeanList.get(i).getQty();//準備要購買放數量用的
			
//-----------------------------------------------------------------------------------------	
			listOfCartQty.add(qty);
			map.put("qty"+i , listOfCartQty);
//-----------------------------------------------------------------------------------------		
			
//-----------------------------------------------------------------------------------------			
			listOfCartId.add(id);
			
			map.put("cartId"+i , listOfCartId);
//-----------------------------------------------------------------------------------------			
			System.out.println("這個是會員編號"+memberId+" 的 第"+"["+ i +"]" + "筆查詢結果 中, 他所選的商品id :  " +v_id);
			// 拿著商品id 去轉換成商品名稱
			
//-----------------------------------------------------------------------------------------			
			String c_name = em.find(storebean.class, v_id).getC_name();
			listOfc_name.add(c_name);
			map.put("c_name"+i , listOfc_name);
//-----------------------------------------------------------------------------------------
			

//-----------------------------------------------------------------------------------------			
			int c_c_price = em.find(storebean.class, v_id).getC_c_price();
			listOfc_price.add(c_c_price);
			map.put("c_price"+i , listOfc_price);
//-------------------------------------------------------------------------------------------			
			
//-----------------------------------------------------------------------------------------		
			String c_image = em.find(storebean.class, v_id).getC_image();//準備要放照片用的
			listOfc_image.add(c_image);
			map.put("c_image"+i , listOfc_image);
			
//-----------------------------------------------------------------------------------------			
			System.out.println("我拿了id使用了em.find (v_id) , 找到了storebean裡面我所要的'商品名稱' :" + c_name);
			//map.put("name", c_name );//拿到值了就把資料丟進去map >> 你他媽直接丟進map難怪他媽被洗掉我襙
			finalListOfName.add(c_name);//拿到值了就把資料丟進去map >> 他媽的不是丟進map我肏
			
			//STEP2: 設計上,我等於要再利用上面一次 , 這次是換成取購物車內容編號(PK): id ,然後再拿著這id >> 進到custom_style裡面去查 客製化編碼 >> 然後再拿著客製化編碼 >> 去DB coke取值?
			//以汽水為例 , 變成查詢出來會應該有3個SQL結果(list物件) 讓電腦來判斷的話, 他應該會用一個List去接
			String hqlForFindCustomStyle = "FROM custom_style WHERE cart_id = " + id;
			System.out.println("------------------STEP2的檢查: 我是否有正確拿到購物車內容的ID?" + id);
			List<custom_style> resultListForFindCustomStyle = em.createQuery(hqlForFindCustomStyle).getResultList();//理當會是個list沒錯,因為他是表單結果,list的<>要用表單的bean的型態去接 >> custom_style這個javaBean
			ArrayList listForCustomStyle = new ArrayList();//為了去接複數以上的客製化內容(eg.去冰 半糖 加椰果)
			//因為有多筆, 使用for迴圈?>>應該會用進階for才對 但先試試看
			for(int j = 0 ; j<resultListForFindCustomStyle.size(); j++ ) {
				
				System.out.println("size=:"+resultListForFindCustomStyle.size() );
				System.out.println("------------------------我要的汽水客製化對照編號有:" + resultListForFindCustomStyle.get(j).getCustom_style());
				//所以這麼做後 , 我便拿到了身為DB裡面coke的PrimaryKey了 , 這樣我就可以去coke裡面取出我要的中文= =
				int custom_style = resultListForFindCustomStyle.get(j).getCustom_style();
				//這一步,我要拿著這個primaryKey 進去DB coke裡面查中文資料
				//使用em >> 找到DB裡面的Cookery(就是我要的中文啦= =)
				String cookery = em.find(cokebean.class, custom_style).getCookery();//應該就會是字串了吧?
				System.out.println("------------------------確定我拿到編號了 , 於是我拿著編號使用em.find去查我要的中文:" + cookery );
				System.out.println("------------------這是第JJ="+j+"次");
				listForCustomStyle.add(cookery);
				System.out.println("listForCustomStyle.add(cookery); 做了, listForCustomStyle現在裡面有: " + listForCustomStyle );
				
				System.out.println("這情況來說 第一次我出現只會有'去冰'>>第二次會有'去冰 , 無糖'>>第三次我會有'去冰,無糖,+珍珠' : " + listForCustomStyle.toString() );
				
				//成功 ! 開始放進map裡面 
				//map.put("custom_style",listForCustomStyle );
			}
			
			map.put("custom"+i , listForCustomStyle);
			
			
			
			//STEP2 : 我要客製化內容 >> 從custom_style這張表去找
			//我必須拿著custom_style裡面的custom_style的值,去DB coke裡面直接抓他的cookery的值
			
			
			
			//找錯了 行不通 真的只能用pk去拿
			//System.out.println("我要客製化內容 >> 一定是帶著商品ID去找 >> 拿著v_id去DB裡面的 type 去找 , 有可能會失敗 因為他不是primaryKey ,如果下面沒資料代表失敗");
			//String c_type = em.find(typebean.class, v_id ).getC_type();
			//System.out.println("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ"+ c_type);
			
			
			
			//String c_name = em.find(storebean.class, i).getC_name();
			//em.find
			
		}
		//所以照這邏輯 ... List<XXXXX>取什麼, 都不影響?????!!!!
		
		
		
		//System.out.println("-------------'map'長這樣:" + list);
		//System.out.println("-------------'第一筆資料的會員編號(list.get(0).getBuyer)'長這樣:" +list.get(0).getBuyer());
		//int i =33 ;
		//storebean find1 = em.find(storebean.class, i);
		//String c_name = find1.getC_name();
		//System.out.println("??????????????????????????"+c_name);
		//System.out.println("------------------storebean find1 = em.find(storebean.class, i); = "+find1);
		
		
		//map是你最後要丟出去的東西 , 存進去之前 , 先想辦法把數字轉成中文= =
		//map.put("size", list.size()); 
		//map.put("list", list);
		
		//map.put("name", finalListOfName);
		System.out.println("-------------'map'長這樣:" + map.toString());
		map.put("list", shoppingCartBeanList.size());
		return map;
	}



	@Override
	public void removeCartId(int cartId) {
		System.out.println("QQQQQQQQQQQQQQQQQQcartId="+ cartId);
		System.out.println("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ有進來daoImpl 的remove");
		//String hql = "FROM shoppingCartBean where id = " + cartId;
		shoppingCartBean SCB = em.find(shoppingCartBean.class , cartId);
		em.remove(SCB);
		System.out.println("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ執行HQL成功");
		
	}


	@Override   //拿cartId查voucher裡面的價格
	public storebean findByCartId(int order_ready_to_delete) {
		// TODO Auto-generated method stub
		int v_id = em.find(shoppingCartBean.class,order_ready_to_delete ).getV_id();
		 storebean OB = em.find(storebean.class, v_id);
		
		return OB;
	}


	@Override //把準備好要輸入資料庫的bean : orderBean寫進資料庫的ShoppingOrder table裡面
	public void insertOrder(orderBean ob) {
		// TODO Auto-generated method stub
		em.persist(ob);
		
	}


	@Override //列出所有資料庫table表明稱為ShoppingCart的訂單資料
	public List<orderBean> findAllOrders() {
		// TODO Auto-generated method stub
		String hql = "FROM orderBean";
		
		List<orderBean> orders = em.createQuery(hql).getResultList();
		
		return orders;
	}


	@Override
	public String findNameById(int v_id) {
		// TODO Auto-generated method stub
		System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		System.out.println("daoimpl >> findNameById >> 此時v_id=" + v_id);
		String c_name = em.find(storebean.class, v_id).getC_name();
		
		System.out.println("XXXXXXXXXXXXXXXXXX" + c_name);
		
		return c_name;
	}


	@Override
	public Map<String, Object> findOrderByMemberNo(int memberNo) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();//首先用map原因是因為會員可能會有多筆訂單生成
		String hql = "FROM orderBean where buyer =" + memberNo ; //查訂單bean
		List<orderBean> resultList = em.createQuery(hql).getResultList();//em拿member_id 的orderBean"物件"
		System.out.println("你透過MemberNo拿到的訂單資料為: =====" + resultList.toString());

		ArrayList order_Id = new ArrayList();
		ArrayList order_No = new ArrayList();
		ArrayList original_Cart_Id = new ArrayList();
		ArrayList buyer = new ArrayList();
		ArrayList total_Price = new ArrayList();
		ArrayList order_Date = new ArrayList();
		ArrayList order_State = new ArrayList();
		ArrayList v_id = new ArrayList();
		ArrayList qty = new ArrayList();
		
		ArrayList c_name = new ArrayList();
		ArrayList c_image = new ArrayList();
		
		
		
		
		
		for(orderBean ob : resultList ) {
			
			System.out.println("測試有沒有拿到v_id??"+ob.getV_id());
			String hql2 = "FROM storebean where c_v_uniformnumbers=" + ob.getV_id();
			List<storebean> resultList2 = em.createQuery(hql2).getResultList();
			System.out.println("測試有沒有透過v_id進去用hql查到storeBean物件?"+resultList2.toString());
			for(storebean sb : resultList2) {
				String c_name2 = sb.getC_name();
				String c_image2 = sb.getC_image();
				c_name.add(c_name2);
				c_image.add(c_image2);
			}
			
			order_Id.add(ob.getOrder_Id());
			order_No.add(ob.getOrder_No());
			original_Cart_Id.add(ob.getOriginal_Cart_Id());
			buyer.add(ob.getBuyer());
			total_Price.add(ob.getTotal_Price());
			order_Date.add(ob.getOrder_Date());
			order_State.add(ob.getOrder_State());
			v_id.add(ob.getV_id());
			qty.add(ob.getQty());
			
		}
		
		map.put("size", resultList.size());
		map.put("order_Id",order_Id);
		map.put("order_No",order_No);
		map.put("original_Cart_Id",original_Cart_Id);
		map.put("buyer",buyer);
		map.put("total_Price",total_Price);
		map.put("order_Date",order_Date);
		map.put("order_State",order_State);
		map.put("v_id",v_id);
		map.put("qty",qty);
		map.put("c_name",c_name);
		map.put("c_image",c_image);
		
		System.out.println("=====findOrderByMemberNo(int memberNo)得到的mp======"+ map);
		
		return map;
	}


	@Override
	public void deleteOrderByOrderId(int order_Id) {
		// TODO Auto-generated method stub
		System.out.println("deleteOrderByOrderIddeleteOrderByOrderIdcartId="+ order_Id);
		System.out.println("deleteOrderByOrderIddeleteOrderByOrderIddeleteOrderByOrderId有進來daoImpl 的remove");
		//String hql = "FROM shoppingCartBean where id = " + cartId;
		orderBean ob = em.find(orderBean.class , order_Id);
		em.remove(ob);
		System.out.println("deleteOrderByOrderIddeleteOrderByOrderIddeleteOrderByOrderId執行HQL成功");
	}


	@Override
	public orderBean findOrderByOrderId(int order_Id) {
		// TODO Auto-generated method stub
		orderBean orderBean = em.find(orderBean.class,order_Id);
		
		return orderBean;
	}


	@Override
	public void updateOrder(orderBean ob) {
		System.out.println("wwwwwwwwww綠界有進來最後的updateIMPLwwwwwwww");
		em.merge(ob);
		
	}


	@Override
	public List<orderBean> findOrdersByMemberNo(int member_no) {
		// TODO Auto-generated method stub
		String hql = "FROM orderBean WHERE buyer=" + member_no;
		List<orderBean> orders = em.createQuery(hql).getResultList();
		
		return orders;
	}


	@Override
	public List<orderBean> findOrdersOfSellerIdByMemberNo(int member_no) {
		// TODO Auto-generated method stub
		String hql = "FROM orderBean WHERE seller_id=" + member_no;
		System.out.println("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ應該要是廠商SELLER ID: " + member_no);
		List<orderBean> orders = em.createQuery(hql).getResultList();
		
		return orders;
	}
}
