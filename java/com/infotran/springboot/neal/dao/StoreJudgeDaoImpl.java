package com.infotran.springboot.neal.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.infotran.springboot.neal.model.Message;
import com.infotran.springboot.neal.model.StoreJudge;

@Repository
public class StoreJudgeDaoImpl {
	
	@Autowired
	EntityManager em;
	
	public StoreJudgeDaoImpl() {
		System.out.println("---StoreJudgeDaoImpl---------------------------------");
	}
	
	public void save(StoreJudge storeJudge) {
		em.persist(storeJudge);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> findAll() {
		Map<String, Object> map = new HashMap<>();
		
//		              下方的 StoreJudge 為類別名稱，非Table 名稱，若要加
		String hql="FROM StoreJudge ORDER BY creatdate DESC ";
		List<StoreJudge> list= em.createQuery(hql).getResultList(); 
		System.out.println(list);
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	public StoreJudge findById(Long id) {		
		return em.find(StoreJudge.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<StoreJudge> findByType(Integer typeId) {		
		String hql="FROM StoreJudge WHERE typeId = :tid ";
		return	em.createQuery(hql)
						.setParameter("tid", typeId)
						.getResultList();
	}
	
	public void update(StoreJudge storeJudge) {
		em.merge(storeJudge);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> findBystoreId(long storeId) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM StoreJudge sj WHERE sj.storeId = :storeId ";
		List<StoreJudge> list = em.createQuery(hql)
//															 storeId  ,sj.storeId
				                            .setParameter("storeId", storeId)
				                            .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}

	public Map<String, Object> queryByTitle(String title) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM StoreJudge sj WHERE sj.title like :title ORDER BY creatdate DESC";
		List<StoreJudge> list = em.createQuery(hql, StoreJudge.class)
				                            .setParameter("title", "%" + title + "%")
				                            .getResultList();
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> findPsnAll(long member) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM StoreJudge sj WHERE sj.member_id = :member ORDER BY creatdate DESC";
		List<StoreJudge> list = em.createQuery(hql)
				                            .setParameter("member", member)
				                            .getResultList();
		
		System.out.println("Neal:"+list);
		
		map.put("size", list.size());
		map.put("list", list);
		return map;
	}
	
	
	
}
