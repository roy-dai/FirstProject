package com.infotran.springboot.roy.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
//import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.infotran.springboot.roy.model.Mail;
import com.infotran.springboot.roy.model.MemberBean;
@Repository
@Transactional
public class DaoImpl implements Dao {

	@Autowired
	EntityManager em;

	// ==================================查詢全部==========================================================
	@Override
	public Map<String,Object> AllMembers() {
		Map<String, Object>map = new HashMap<>();
		System.out.println("有到全部查dao");
		String hql = "FROM MemberBean";
		System.out.println("要出全部查dao");
		List<MemberBean> list = em.createQuery(hql,MemberBean.class).getResultList();
		map.put("size",list.size());
		map.put("list",list);
		return map;
	}
	// ==================================新增==========================================================
		@Override
		public int insert(MemberBean mbean) {
			int result = 0;
				boolean check = selectid(mbean.getR_m_id());
				
				if(check) {
					System.out.println("帳號重複");
					return 0;
				}
				System.out.println("可以新增");
				result = 1;
			try {
				em.persist(mbean);
				System.out.println("新增成功");
				result = 1;
			} catch (Exception e) {
				System.out.println("新增異常");
				result = 0;
			}
				return result;
		}
	
	

	// ==================================更新==========================================================
	@Override
	public void update(MemberBean m) {
			em.merge(m);
	}
	// ==================================刪除==========================================================
	@Override
	public void deleteMember(MemberBean m) {
		System.out.println("有到刪除dao");
		em.remove(m);
		System.out.println("要出刪除dao");
	}

	

	// ==================================no查詢==========================================================
	@Override
	public MemberBean select(int r_m_no) {

		return em.find(MemberBean.class, r_m_no);

	}

	// ==================================id查詢==========================================================
	@Override
	public boolean selectid(String r_m_id) {
		boolean result = false;
		String hql = "FROM MemberBean m WHERE m.r_m_id = :id";
		try {
			MemberBean bean = (MemberBean) em.createQuery(hql).setParameter("id", r_m_id).getSingleResult();
			result = true;
		} catch (NoResultException e) {
			System.out.println("selectId找不到值，可以新增");
		}
		return result;
	}
	// ==================================驗證帳號(新增或修改)==========================================================
	@Override
	public String checkId(String r_m_id) {
		System.out.println("檢查帳號dao");
		String hql = "FROM MemberBean m WHERE m.r_m_id = :id";
		String id = "";
	
		try {
			MemberBean mb = (MemberBean) em.createQuery(hql).setParameter("id", r_m_id).getSingleResult();
			id = mb.r_m_id;

		} catch (NoResultException ee) {
			System.out.println("到noResultEception");
			id = "";
//		} catch (NullPointerException ok) {
//			System.out.println("到nullpointEception");
		} 	catch (Exception e) {
			System.out.println("到Exception");
			return "Error:資料庫異常，請檢查資料庫";
		}
		return id;
	}

	// ==================================驗證登入==========================================================
	@Override
	public MemberBean checkLogin(String r_m_id, String r_m_password) {
//		Map<Integer, Object> map = new HashMap<>();
		String hql = "FROM MemberBean m WHERE m.r_m_id=: id AND m.r_m_password = :pwd ";
		MemberBean singleResult = null;

		System.out.println("到達登入dao，下面要印出resultBean");
		try {
			singleResult = (MemberBean) em.createQuery(hql).setParameter("id", r_m_id).setParameter("pwd", r_m_password)
					.getSingleResult();
			if(singleResult.getR_m_id().equals(r_m_id) && singleResult.getR_m_password().equals(r_m_password)) {
				
			}
			else {
				singleResult = null;
			}
		} catch (Exception e) {
		}
		return singleResult;

	}
//  模糊查詢(admin用)
	@Override
	public Map<String, Object> queryselect(String selectV, String selectionV) {
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM MemberBean m WHERE m."+selectV+" like :selection";
		List<MemberBean> list = em.createQuery(hql,MemberBean.class).
											setParameter("selection","%"+selectionV+"%").
											getResultList();
		System.out.println(hql);
		System.out.println(list);
		map.put("size",list.size());
		map.put("list",list);
		return map;
		
	}
//	寫入token
	@Override
	public void mailToken(Mail mail) {
		System.out.println("寫入token的dao");
		em.persist(mail);
	}
	
//  修改密碼前確認是否有這個帳號
    @Override
    public boolean checkMail(String mail) {
        System.out.println("進到防小人的dao");
        String hql = "FROM Mail m WHERE m.mail = :mail";
        boolean result = true; 
        try{
            em.createQuery(hql, Mail.class).setParameter("mail", mail).getResultList();
        }catch (Exception e) {
            result = false;
        }
        return result;
        
    }
//	修改密碼前檢查
	@Override
	public Mail checkmodifyMail(String mail,String token) {
		System.out.println("進到修改密碼前檢查的dao");
		String hql = "FROM Mail m WHERE m.mail= :mail AND m.token = :token";
		Mail result = null;
		if(!checkMail(mail)) {
			result = null;
		}else {
			result = em.createQuery(hql, Mail.class).setParameter("mail", mail).setParameter("token", token).getSingleResult();
		}
		return result;
	}
//	修改密碼前取值
	@Override
	public MemberBean queryById(String r_m_id) {
		String hql ="FROM MemberBean m WHERE m.r_m_id = :id";
//		List<MemberBean> result = em.createQuery(hql,MemberBean.class).setParameter("id",r_m_id).getResultList();
		MemberBean result = em.createQuery(hql,MemberBean.class).setParameter("id",r_m_id).getSingleResult();
		
		return result;
//		return result.get(1);
	}

	

}