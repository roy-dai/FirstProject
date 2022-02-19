package com.infotran.springboot.neal.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotran.springboot.neal.dao.MsgDaoImpl;
import com.infotran.springboot.neal.dao.StoreJudgeDaoImpl;
import com.infotran.springboot.neal.dao.TypeDaoImpl;
import com.infotran.springboot.neal.model.Message;
import com.infotran.springboot.neal.model.RestaurantType;
import com.infotran.springboot.neal.model.StoreJudge;

@Service
@Transactional
public class StoreJudgeServiceImpl {

	public StoreJudgeServiceImpl() {
		System.out.println("---StoreJudgeServiceImpl---");
	}
	
	@Autowired
	TypeDaoImpl typeDao;
	
	@Autowired
	StoreJudgeDaoImpl storeJudgeDao;
	
	public void save(StoreJudge storeJudge) {
		RestaurantType type = typeDao.findById(storeJudge.getType().getTypeId());
		storeJudge.setType(type);
		storeJudgeDao.save(storeJudge);
	}
	
	public Map<String, Object> findAll() {
		return	storeJudgeDao.findAll();
	}
	
	public StoreJudge findById(Long id) {		
		return storeJudgeDao.findById(id);
	}
	
	public List<StoreJudge> findByType(Integer typeId) {		
		return storeJudgeDao.findByType(typeId);
	}
	
	public Map<String, Object> findBystoreId(Integer storeId) {		
		return storeJudgeDao.findBystoreId(storeId);
	}
	
	public void update(StoreJudge storeJudge) {
		RestaurantType type = typeDao.findById(storeJudge.getType().getTypeId());
		storeJudge.setType(type);
		storeJudgeDao.update(storeJudge);
	}

	public Map<String, Object> queryByTitle(String title) {
		return storeJudgeDao.queryByTitle(title);
	}

	public Map<String, Object> findPsnAll(long member) {
		return storeJudgeDao.findPsnAll(member);
	}	
}
