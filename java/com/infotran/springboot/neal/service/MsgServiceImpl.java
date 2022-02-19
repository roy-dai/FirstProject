package com.infotran.springboot.neal.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotran.springboot.neal.dao.MsgDaoImpl;
import com.infotran.springboot.neal.model.Message;

@Service
@Transactional
public class MsgServiceImpl {

	public MsgServiceImpl() {
		System.out.println("---MsgServiceImpl---");
	}
	
	@Autowired
	MsgDaoImpl msgDao;
	
	public void save(Message message) {
		msgDao.save(message);
	}
	
	public Map<String, Object> findAll() {
		return	msgDao.findAll();
	}
	
	public Message findById(Long id) {		
		return msgDao.findById(id);
	}
	
	public Map<String, Object> findByshopId(String shop_id) {		
		return msgDao.findByshopId(shop_id);
	}
	
	public void update(Message message) {
		msgDao.update(message);
	}

	public Map<String, Object> queryByTitle(String title) {
		return msgDao.queryByTitle(title);
	}

	public Map<String, Object> findPsnAll(long member) {
		return msgDao.findPsnAll(member);
	}	
}
