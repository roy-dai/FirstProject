package com.infotran.springboot.mike.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.mike.bean.orderBean;
import com.infotran.springboot.mike.bean.shoppingCartBean;

@Service
public interface cartService {
	
	boolean insertCart(shoppingCartBean a ,HttpServletRequest request);

	Map<String, Object> findShoppingCart(int memberId);

	void removeCartId(int cartId);

	storebean findByCartId(int order_ready_to_delete);

	void insertOrder(orderBean ob);

	List<orderBean> findAllOrders();

	String findNameById(int v_id);

	Map<String, Object> findOrderByMemberNo(int memberNo);

	void deleteOrderByOrderId(int order_Id);

	orderBean findOrderByOrderId(int order_Id);

	void updateOrder(orderBean ob);

	List<orderBean> findOrdersByMemberNo(int member_no);

	List<orderBean> findOrdersOfSellerIdByMemberNo(int member_no);
}
