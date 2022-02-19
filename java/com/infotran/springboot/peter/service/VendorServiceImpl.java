package com.infotran.springboot.peter.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotran.springboot.peter.dao.VendorDaoImpl;
import com.infotran.springboot.peter.model.Vendor;

@Service
@Transactional
public class VendorServiceImpl {
	
	@Autowired
	VendorDaoImpl vendorDao;
	
	public void save(Vendor vendor) {
		vendorDao.save(vendor);
	}
	
	public  List<Vendor> findAllSlim(){
		return vendorDao.findAllSlim();
	}
	
	public Map<String, Object> findAll(){
		return vendorDao.findAll();
	}
	
	public Vendor findByVenID(Integer venID) {
		return vendorDao.findByVenID(venID);
	}
	
	public Map<String, Object> findByPosition(String venPosition) {
		return vendorDao.findByPosition(venPosition);
	}
	
	public Map<String, Object> findByVenType(String venType) {
		return vendorDao.findByVenType(venType);
	}
	
	public Map<String, Object> queryByVenName(String vname) {
		return vendorDao.queryByVenName(vname);
	}
	
	public Map<String, Object> queryByMember(Integer member_no) {
		return vendorDao.queryByMember(member_no);
	}
	
	public void updateVen(Vendor vendor) {
		vendorDao.updateVen(vendor);
	}
	
	public void deleteVen(Vendor vendor) {
		vendorDao.deleteVen(vendor);
	}
	
}
