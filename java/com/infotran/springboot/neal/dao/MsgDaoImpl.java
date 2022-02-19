package com.infotran.springboot.neal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotran.springboot.neal.model.Message;

@Repository
public class MsgDaoImpl {
	
	@Autowired
	EntityManager em;
	
	public MsgDaoImpl() {
		System.out.println("---MsgDaoImpl---------------------------------");
	}
	
	public void save(Message message) {
		em.persist(message);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> findAll() {
		Map<String, Object> map = new HashMap<>();
		
		String hql="FROM Message ORDER BY creatdate DESC ";
		List<Message> list= em.createQuery(hql).getResultList(); 
		System.out.println("Neal:"+list);
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	public Message findById(Long id) {		
		return em.find(Message.class, id);
	}
	
	public void update(Message message) {
		em.merge(message);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> findByshopId(String shop_id) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM Message m WHERE m.shop_id = :shopId ";
		List<Message> list = em.createQuery(hql)
				                            .setParameter("shopId", shop_id)
				                            .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}

	public Map<String, Object> queryByTitle(String title) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM Message m WHERE m.msg_title like :title ORDER BY creatdate DESC";
		List<Message> list = em.createQuery(hql, Message.class)
				                            .setParameter("title", "%" + title + "%")
				                            .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> findPsnAll(long member) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM Message m WHERE m.member_id = :member ORDER BY creatdate DESC";
		List<Message> list = em.createQuery(hql)
				                            .setParameter("member", member)
				                            .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	
	
}
