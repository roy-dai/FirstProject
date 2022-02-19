package com.infotran.springboot.neal.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.infotran.springboot.neal.dao.TypeDaoImpl;
import com.infotran.springboot.neal.model.RestaurantType;



@Service
@Transactional
public class TypeServiceImpl {

	@Autowired
	TypeDaoImpl typeDao;

//	@Autowired
//	CustomerDaoImpl customerDao;

	public List<RestaurantType> findRestaurantTypes() {
		return typeDao.findRestaurantTypes();
	}
	
	public Map<String, Object> findAll() {
		System.out.println("In to findAll");
		return typeDao.findAll();
	}
	

	public void update(RestaurantType type) {
		// TODO Auto-generated method stub
		
	}

	public RestaurantType findById(Integer typeId) {
		// TODO Auto-generated method stub
		return null;
	}

	public void save(RestaurantType type) {
		typeDao.save(type);
		
	}

}
