package com.infotran.springboot.roy.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.infotran.springboot.roy.Repository.Dao;
import com.infotran.springboot.roy.model.Mail;
import com.infotran.springboot.roy.model.MemberBean;


@Service
public class ServiceImpl implements MemberService{
	@Autowired
	Dao dao;
	
	@Override
	public String checkId(String r_m_id) {
		System.out.println("");
		System.out.println("S=>checkId");
		System.out.println("");
		return dao.checkId(r_m_id);
	}

	@Override
	public Map<String, Object> allMember() {
		System.out.println("");
		System.out.println("S=>allMember");
		System.out.println("");
		return dao.AllMembers();
	}


	@Override
	public int insertId(MemberBean mb) {
		System.out.println("");
		System.out.println("S=>insertId");
		System.out.println("");
		return dao.insert(mb);
	}

	@Override
	public void update(MemberBean m) {
		System.out.println("");
		System.out.println("S=>update");
		System.out.println("");
		 dao.update(m);
	}

	@Override
	public MemberBean checkLogin(String r_m_id, String r_m_password) {
		System.out.println("");
		System.out.println("S=>checkLogin");
		System.out.println("");
		return dao.checkLogin(r_m_id, r_m_password);
		
	}

	@Override
	public MemberBean selectByno(int r_m_no) {
		System.out.println("");
		System.out.println("S=>selectByno");
		System.out.println("");
		return dao.select(r_m_no);
	}

	@Override
	public boolean selectById(String r_m_id) {
		System.out.println("");
		System.out.println("S=>selectById");
		System.out.println("");
		return dao.selectid(r_m_id);
		
	}

	@Override
	public Map<String, Object> queryselect(String selectV, String selectionV) {
		System.out.println("");
		System.out.println("S=>queryselect");
		System.out.println("");
		return dao.queryselect(selectV,selectionV);
	}

	@Override
	public void deleteMember(MemberBean m) {
		System.out.println("");
		System.out.println("S=>deleteMember");
		System.out.println("");
		dao.deleteMember(m);
		
	}

	@Override
	public void mailToken(Mail mail) {
		dao.mailToken(mail);
		
	}

	@Override
	public boolean checkMail(String mail) {
		
		return dao.checkMail(mail);
	}
	
	@Override
	public Mail checkmodifyMail(String mail, String token) {
		
		return dao.checkmodifyMail(mail, token);
	}

	@Override
	public MemberBean queryById(String r_m_id) {
		return dao.queryById(r_m_id);
	}
	

}

//	@Override
//	public void deleteByNo(int r_m_no) {
//		System.out.println("S=>deleteByNo");		
//		dao.delete(r_m_no);
//	}