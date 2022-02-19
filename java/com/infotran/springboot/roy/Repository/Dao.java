package com.infotran.springboot.roy.Repository;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.infotran.springboot.roy.model.Mail;
import com.infotran.springboot.roy.model.MemberBean;
@Repository
public interface Dao {
//==================================查詢全部==========================================================
		public Map<String, Object> AllMembers();
//==================================更新==========================================================
		void update(MemberBean m);
//==================================新增==========================================================	
		public int insert(MemberBean mbean);
//==================================查詢no==========================================================
		public MemberBean select(int r_m_no);
//==============================查詢id==========================================================
		public boolean selectid(String r_m_id);
//==============================驗證帳號==========================================================
		public String checkId(String r_m_id);
//==================================驗證登入==========================================================
		public MemberBean checkLogin(String r_m_id, String r_m_password);
		
//==================================模糊查詢==========================================================
		public Map<String, Object> queryselect(String selectV, String selectionV);
		
//==================================刪除==========================================================
		public void deleteMember(MemberBean m);
		
		public void mailToken(Mail mail);
		
		boolean checkMail(String mail);
		
		Mail checkmodifyMail(String mail, String token);
		
		public MemberBean queryById(String r_m_id);
		
	
}

//		public void delete(int a);