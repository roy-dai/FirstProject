package com.infotran.springboot.peter.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotran.springboot.peter.dao.CountDaoImp;
import com.infotran.springboot.peter.model.Vendor;

@Service
@Transactional
public class CountServiceImpl {
	
	@Autowired
	CountDaoImp countDao;
	
	public Integer getCount(String venPosition) {
		return countDao.getCount(venPosition);
	}
	
	public Integer getMaxbyPos(String venPosition) {
		return countDao.maxbyPos(venPosition);
	}
	
	public Integer getMinbyPos(String venPosition) {
		return countDao.minbyPos(venPosition);
	}
	
	public void reset() {
		countDao.reset();
	}
	
	public List<Vendor> selectByValueWithPos(String venPosition,Integer no){
		return countDao.selectByValueWithPos(venPosition,no);
	}
	
	public List<Vendor> winBin(){
		return countDao.winBin();
	}
	
	public List<Vendor> loseBin(){
		return countDao.loseBin();
	}
}
