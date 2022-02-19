package com.infotran.springboot.wang.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.infotran.springboot.ccc.bean.introductionbean;
import com.infotran.springboot.wang.bean.performancebean;
import com.infotran.springboot.wang.dao.dao;
@SessionAttributes(value = {"member_no","member_id","member_name","member_rights","key","wangkey"})

@Repository
public class daoimpl implements dao{

	@Autowired
	EntityManager em;
//前台專用------------------------------------------------------------------------------------------------------------
	@SuppressWarnings("all")
	@Override
	public Model get(Model m,int a) {
		LocalDate todaysDate = LocalDate.now();
		String hql = "FROM performancebean where day like '"+todaysDate+"'";
		List<performancebean> list = em.createQuery(hql).getResultList();
		ArrayList name = new ArrayList();
		ArrayList c_sellerID = new ArrayList();
		ArrayList performance = new ArrayList();
		ArrayList date = new ArrayList();
		ArrayList time = new ArrayList();
		ArrayList film = new ArrayList();
		ArrayList photo = new ArrayList();

		for(performancebean b : list){
			name.add(b.getName());
			c_sellerID.add(b.getC_sellerID());
			performance.add(b.getPerformance());
			date.add(b.getDay());
			time.add(b.getTime());
			film.add(b.getFilm());
			photo.add(b.getPhoto());
		}		
		m.addAttribute("size",(a-1));
		m.addAttribute("name",name);
		m.addAttribute("c_sellerID",c_sellerID);
		m.addAttribute("date",date);
		m.addAttribute("performance",performance);
		m.addAttribute("time",time);
		m.addAttribute("photo",photo);
		m.addAttribute("film",film);
		return m;
	}	
	@SuppressWarnings("all")
	@Override
	public Model get1(Model m,int a) {
		LocalDate todaysDate = LocalDate.now();

		String hql = "FROM performancebean ";
		List<performancebean> list = em.createQuery(hql).getResultList();
		ArrayList name = new ArrayList();
		ArrayList ID = new ArrayList();
		ArrayList c_sellerID = new ArrayList();
		ArrayList performance = new ArrayList();
		ArrayList date = new ArrayList();
		ArrayList time = new ArrayList();
		ArrayList film = new ArrayList();
		ArrayList photo = new ArrayList();

		for(performancebean b : list){
			ID.add(b.getId());
			name.add(b.getName());
			c_sellerID.add(b.getC_sellerID());
			performance.add(b.getPerformance());
			date.add(b.getDay());
			time.add(b.getTime());
			film.add(b.getFilm());
			photo.add(b.getPhoto());
		}		
		m.addAttribute("size",(a-1));
		m.addAttribute("id",ID);
		m.addAttribute("name",name);
		m.addAttribute("c_sellerID",c_sellerID);
		m.addAttribute("date",date);
		m.addAttribute("performance",performance);
		m.addAttribute("time",time);
		m.addAttribute("photo",photo);
		m.addAttribute("film",film);
		return m;
	}
	
	@SuppressWarnings("all")
	@Override
	public Model add (HttpServletRequest request,Model m,String a) {
		performancebean b = new  performancebean();
		int C_sellerID = 0;        
		try {
			C_sellerID = Integer.parseInt(request.getParameter("a1"));
		}catch (Exception e) {}
		b.setC_sellerID(C_sellerID);
		b.setName(request.getParameter("a2"));
		b.setPerformance(request.getParameter("a3"));
		b.setDay(request.getParameter("a4"));
		b.setTime(request.getParameter("a5"));
		b.setFilm(request.getParameter("a6"));
		b.setPhoto(a);
		 em.persist(b);
		return  m;
	}
	@SuppressWarnings("all")
	@Override
	public boolean DELTE (int key) {
		boolean a = false;
			performancebean DELTE = em.find(performancebean.class, key);
			em.remove(DELTE);
			a =true;
	return a ;
	}
	
	@SuppressWarnings("all")
	@Override
	public Model Inquire (Model m,int key) {
		
		performancebean Inquire = em.find(performancebean.class, key);	
		m.addAttribute("wangkey", key);
		m.addAttribute("c_sellerID", Inquire.getC_sellerID());
		m.addAttribute("name", Inquire.getName());
		m.addAttribute("performance", Inquire.getPerformance());
		m.addAttribute("day", Inquire.getDay());
		m.addAttribute("time", Inquire.getTime());
		m.addAttribute("film", Inquire.getFilm());
	return m;
	}
	
	@SuppressWarnings("all")
	@Override
	public boolean mergeimpl (Model m,HttpServletRequest request,String a) {
		System.out.println(request.getParameter("a2"));
		performancebean b = em.find(performancebean.class, (int)m.getAttribute("wangkey"));
		int C_sellerID = 0;        
		try {
			C_sellerID = Integer.parseInt(request.getParameter("a1"));
		}catch (Exception e) {}
		b.setC_sellerID(C_sellerID);
		b.setName(request.getParameter("a2"));
		b.setPerformance(request.getParameter("a3"));
		b.setDay(request.getParameter("a4"));
		b.setTime(request.getParameter("a5"));
		b.setFilm(request.getParameter("a6"));
		if(a!=null) {
			b.setPhoto(a);			
		}
		em.merge(b);
	return true;
	}
}
