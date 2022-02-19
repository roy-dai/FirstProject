package com.infotran.springboot.peter.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotran.springboot.peter.model.Vendor;

@Repository
public class CountDaoImp {

	@Autowired
	EntityManager em;
	
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
	
	public Integer maxbyPos(String venPosition) {
//		String hql = "From vendor v where v.venValue=(select max(venValue) from vendor v where v.venPos:venPos)";
		String hql = "select max(v.venValue) from Vendor v where v.venPosition=:venPosition";
		Integer max = (
						(Number)em.createQuery(hql)
						.setParameter("venPosition", venPosition)
						.getSingleResult()
						)
						.intValue();
		System.out.println(max);
		return max;
	}
	
	public Integer minbyPos(String venPosition) {
		String hql = "select min(v.venValue) from Vendor v where v.venPosition=:venPosition";
		Integer min = (
				(Number)em.createQuery(hql)
				.setParameter("venPosition", venPosition)
				.getSingleResult()
				)
				.intValue();
		System.out.println(min);
		return min;
	}
	
	public void reset() {
		String hql = "Update Vendor v set v.venStatus = null";
		em.createQuery(hql).executeUpdate();	
	}
	
	public void allValid() {
		String hql = "Update Vendor v set v.venStatus = 'Y' ";
		em.createQuery(hql).executeUpdate();	
	}
	
	public List<Vendor> selectByValueWithPos(String venPosition,Integer no){
		String hql = "select v.venValue From Vendor v where v.venPosition=:venPosition Order by v.venValue desc";
		List<Vendor> list = em.createQuery(hql).setParameter("venPosition", venPosition).setMaxResults(no).getResultList();
		Object value = (Object)list.get(no-1);
		Integer value2 =(Integer)value;
		hql = "Update Vendor v set v.venStatus = 'Y' where v.venPosition=:venPosition and v.venValue > :venValue " ;
		em.createQuery(hql).setParameter("venPosition", venPosition).setParameter("venValue", value2).executeUpdate();
		return list;
	}
	
	public List<Vendor> winBin(){
		String hql = "From Vendor v where v.venStatus='Y'";
		System.out.println(em.createQuery(hql).getResultList());
	    return em.createQuery(hql).getResultList();
	
	}
	public List<Vendor> loseBin(){
		String hql = "From Vendor v where v.venStatus=NULL";
		System.out.println(em.createQuery(hql).getResultList());
		 return em.createQuery(hql).getResultList();
	}
}
