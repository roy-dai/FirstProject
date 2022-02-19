package com.infotran.springboot.mike.service.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.ccc.dao.dao;
import com.infotran.springboot.mike.bean.orderBean;
import com.infotran.springboot.mike.bean.shoppingCartBean;
import com.infotran.springboot.mike.dao.cartDao;
import com.infotran.springboot.mike.service.cartService;

@Transactional
@Service
public class cartServiceImpl implements cartService{
	@Autowired
	cartDao cartDao;
	
	
	@Override
	public boolean insertCart(shoppingCartBean a ,HttpServletRequest request) {
		System.out.println("------------------呼叫service裡面的insertCart方法----------------------");
		return cartDao.insertCart(a,request);
	}


	@Override
	public Map<String, Object> findShoppingCart(int memberId) {
		// TODO Auto-generated method stub
		return cartDao.findShoppingCart(memberId);
	}


	@Override
	public void removeCartId(int cartId) {
		// TODO Auto-generated method stub
		 cartDao.removeCartId(cartId);
	}


	@Override
	public storebean findByCartId(int order_ready_to_delete) {
		// TODO Auto-generated method stub
		return cartDao.findByCartId(order_ready_to_delete);
	}


	@Override
	public void insertOrder(orderBean ob) {
		// TODO Auto-generated method stub
		 cartDao.insertOrder(ob);
	}


	@Override
	public List<orderBean> findAllOrders() {
		// TODO Auto-generated method stub
		return cartDao.findAllOrders();
	}


	@Override
	public String findNameById(int v_id) {
		// TODO Auto-generated method stub
		return cartDao.findNameById(v_id);
	}


	@Override
	public Map<String, Object> findOrderByMemberNo(int memberNo) {
		// TODO Auto-generated method stub
		return cartDao.findOrderByMemberNo(memberNo);
	}


	@Override
	public void deleteOrderByOrderId(int order_Id) {
		// TODO Auto-generated method stub
		cartDao.deleteOrderByOrderId(order_Id);
	}


	@Override
	public orderBean findOrderByOrderId(int order_Id) {
		// TODO Auto-generated method stub
		return cartDao.findOrderByOrderId(order_Id);
	}


	@Override
	public void updateOrder(orderBean ob) {
		// TODO Auto-generated method stub
		cartDao.updateOrder(ob);
	}


	@Override
	public List<orderBean> findOrdersByMemberNo(int member_no) {
		// TODO Auto-generated method stub
		return cartDao.findOrdersByMemberNo(member_no);
	}


	@Override
	public List<orderBean> findOrdersOfSellerIdByMemberNo(int member_no) {
		// TODO Auto-generated method stub
		return cartDao.findOrdersOfSellerIdByMemberNo(member_no);
	}

}
