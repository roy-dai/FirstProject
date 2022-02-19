package com.infotran.springboot.peter.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotran.springboot.peter.model.Vendor;

@Repository
public class VendorDaoImpl {

	@Autowired
	EntityManager em;
	
	public void save(Vendor vendor) {
		em.persist(vendor);
	}
	
	@SuppressWarnings("unchecked")
	public  List<Vendor> findAllSlim(){
		String hql = "select v.venID,v.venName,v.venType,v.venRes,v.venPosition,v.venValue From Vendor v";
		List<Vendor> list = em.createQuery(hql).getResultList();
		System.out.println(list);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public  Map<String, Object> findAll(){
		Map<String, Object> map = new HashMap<>();
		String hql = "From Vendor";
		List<Vendor> list = em.createQuery(hql).getResultList();
		map.put("size", list.size());
		map.put("list", list);
		System.out.println(list);
		System.out.println(map);
		return map;
	}
	
	public Vendor findByVenID(Integer venID) {
		return em.find(Vendor.class, venID);
	}
	
	public Map<String, Object> queryByMember(Integer member_no) {
		Map<String, Object> map = new HashMap<>();
		String hql = "From Vendor v Where v.member_no =:member_no";
		List<Vendor> list = em.createQuery(hql,Vendor.class)
							  .setParameter("member_no", member_no)
							  .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	public Map<String, Object> findByPosition(String venPosition) {
		Map<String, Object> map = new HashMap<>();
		String hql = "From Vendor v Where v.venPosition =:venPosition";
		List<Vendor> list = em.createQuery(hql,Vendor.class)
							  .setParameter("venPosition", venPosition)
							  .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	public Map<String, Object> findByVenType(String venType) {
		Map<String, Object> map = new HashMap<>();
		String hql = "From Vendor v Where v.venType =:venType";
		List<Vendor> list = em.createQuery(hql,Vendor.class)
							  .setParameter("venType", venType)
							  .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	public Map<String, Object> queryByVenName(String vname) {
		Map<String, Object> map = new HashMap<>();
		String hql = "From Vendor v Where v.venName like :name";
		List<Vendor> list = em.createQuery(hql,Vendor.class)
							  .setParameter("name", "%"+ vname +"%")
							  .getResultList();				
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	public void updateVen(Vendor vendor) {
		em.merge(vendor);
	}
	
	public void deleteVen(Vendor vendor) {
		em.remove(vendor);
	}
	
	public Integer getCount(String venPosition) {
		String hql = "select count(*) from Vendor v where v.venPosition=:venPosition";
		Integer count =(
						(Number)em.createQuery(hql)
						.setParameter("venPosition", venPosition)
						.getSingleResult()
						)
						.intValue();
		return count;
	}
}
