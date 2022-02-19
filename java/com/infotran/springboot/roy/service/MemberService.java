package com.infotran.springboot.roy.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.infotran.springboot.roy.model.Mail;
import com.infotran.springboot.roy.model.MemberBean;

@Service
public interface MemberService {

	public String checkId(String r_m_id);
	
	public MemberBean queryById(String r_m_id);
	
	public MemberBean selectByno(int r_m_no);
	
	public MemberBean checkLogin(String r_m_id,String r_m_password);
	
	public boolean selectById(String r_m_id);
	
	public Map<String, Object> allMember();
	
	
	public int insertId(MemberBean mb);
	
	public void update(MemberBean m);
	

	public Map<String, Object> queryselect(String selectV, String selectionV);
	
	
	public void deleteMember(MemberBean m);
	
	public void mailToken(Mail mail);

	boolean checkMail(String mail);
	
	Mail checkmodifyMail(String mail, String token);
	
}

//	public void deleteByNo(int r_m_no);