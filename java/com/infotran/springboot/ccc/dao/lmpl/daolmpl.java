package com.infotran.springboot.ccc.dao.lmpl;

import java.io.File;
import java.io.IOException;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.infotran.springboot.ccc.bean.advertisingbean;
import com.infotran.springboot.ccc.bean.cokebean;
import com.infotran.springboot.ccc.bean.fooddbbean;
import com.infotran.springboot.ccc.bean.foodstallbean;
import com.infotran.springboot.ccc.bean.foodtypebean;
import com.infotran.springboot.ccc.bean.introductionbean;
import com.infotran.springboot.ccc.bean.permissionsbean;
import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.ccc.bean.typebean;
import com.infotran.springboot.ccc.dao.dao;
import com.infotran.springboot.wang.bean.performancebean;
@SessionAttributes(value = {"member_no","member_id","member_name","member_rights","key"})



@Repository
public class daolmpl implements dao{
	public daolmpl() {
		System.out.println("---daolmpl---------------------------------");
	}
	@Autowired
	EntityManager em;
//全部商品-------------------------------------------------------------------------------------
	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Object>  findAll(){
		Map<String, Object> map = new HashMap<>();
		String hql = "FROM storebean";
		List<storebean> list = em.createQuery(hql).getResultList();
		map.put("size", list.size()); 
		map.put("list", list);
		return map;
	}
//管理頁面------------------------------------------------------------------------	
	@SuppressWarnings("all")
	@Override
	public Model findAll_a(Model map,ModelMap m){
		String hql = "FROM storebean where c_sellerID like "+m.get("member_no");
		List<storebean> list = em.createQuery(hql).getResultList();
		ArrayList c_v_uniformnumbers = new ArrayList();
		ArrayList c_name = new ArrayList();
		ArrayList c_c_price = new ArrayList();
		ArrayList c_sellerID = new ArrayList();
		ArrayList c_image = new ArrayList();
		ArrayList type = new ArrayList();
		for (storebean aStorebean :list) {
			c_v_uniformnumbers.add(aStorebean.getC_v_uniformnumbers());
			c_name.add(aStorebean.getC_name());
			c_c_price.add(aStorebean.getC_c_price());
			c_sellerID.add(aStorebean.getC_sellerID());
			String b = aStorebean.getC_image();
			if (b.equals("1.jpg")) {
				c_image.add("尚未更新照片!");
			}
			else {
				c_image.add("已完成更新照片!");
			}
			String hql1 = "FROM typebean where v_id like "+aStorebean.getC_v_uniformnumbers();
			List<typebean> list1 = em.createQuery(hql1).getResultList();
			String daw = "";
			for(typebean s :list1) {
				daw = daw+s.getC_type()+"/";
			}
			type.add(daw);
		}
		map.addAttribute("list_size", list.size());
		map.addAttribute("c_v_uniformnumbers", c_v_uniformnumbers);
		map.addAttribute("c_name", c_name);
		map.addAttribute("c_c_price", c_c_price);
		map.addAttribute("c_sellerID", c_sellerID);
		map.addAttribute("c_image", c_image);
		map.addAttribute("type", type);
		
		return map;
	}
	@SuppressWarnings("all")
	@Override
	public List<typebean> findAll_c(int a){
		String hql = "FROM typebean where v_id like" + a;
		List<typebean> list = em.createQuery(hql).getResultList();
		return list;
	}
//商品呈現頁面------------------------------------------------------------------------		
	@SuppressWarnings("all")
	@Override
	public Model findAll_b(int a,Model m){
		foodstallbean q =  em.find(foodstallbean.class, a);
		String x = q.getFoodstall()+"("+q.getMap()+q.getAddress()+")"; 
		int z = q.getC_sellerID();
		String hql = "FROM storebean where c_sellerID like "+z;
		List<storebean> list = em.createQuery(hql).getResultList();
		ArrayList c_v_uniformnumbers = new ArrayList();
		ArrayList c_name = new ArrayList();
		ArrayList c_c_price = new ArrayList();
		ArrayList c_sellerID = new ArrayList();
		ArrayList c_image = new ArrayList();
		ArrayList type = new ArrayList();
		for (storebean aStorebean :list) {
			c_v_uniformnumbers.add(aStorebean.getC_v_uniformnumbers());
			c_name.add(aStorebean.getC_name());
			c_c_price.add(aStorebean.getC_c_price());
			c_sellerID.add(aStorebean.getC_sellerID());
			c_image.add(aStorebean.getC_image());
			String hql1 = "FROM typebean where v_id like "+aStorebean.getC_v_uniformnumbers();
			List<typebean> list1 = em.createQuery(hql1).getResultList();
			String daw = "";
			for(typebean s :list1) {
				daw = daw+s.getC_type()+"/";
			}
			type.add(daw);
			}
		m.addAttribute("type",type);
		m.addAttribute("Foodstall",x);
		m.addAttribute("list_size", list.size());
		m.addAttribute("c_v_uniformnumbers", c_v_uniformnumbers);
		m.addAttribute("c_name", c_name);
		m.addAttribute("c_c_price", c_c_price);
		m.addAttribute("c_sellerID", c_sellerID);
		m.addAttribute("c_image", c_image);
		return m;
	}
	//模糊查詢頁面------------------------------------------------------------------------		
		@SuppressWarnings("all")
		@Override
		public Model findAll_c(String a,Model m){
			String b = "'%"+a+"%'";
			String hql = "FROM storebean where c_name like "+b;
			List<storebean> list = em.createQuery(hql).getResultList();
			ArrayList c_v_uniformnumbers = new ArrayList();
			ArrayList c_name = new ArrayList();
			ArrayList c_c_price = new ArrayList();
			ArrayList c_sellerID = new ArrayList();
			ArrayList c_image = new ArrayList();
			ArrayList type = new ArrayList();
			ArrayList name = new ArrayList();
			for (storebean aStorebean :list) {
				c_v_uniformnumbers.add(aStorebean.getC_v_uniformnumbers());
				c_name.add(aStorebean.getC_name());
				c_c_price.add(aStorebean.getC_c_price());
				c_sellerID.add(aStorebean.getC_sellerID());
				c_image.add(aStorebean.getC_image());
				
				String hql1 = "FROM foodstallbean where c_sellerID like "+aStorebean.getC_sellerID();
				List<foodstallbean> list1 = em.createQuery(hql1).getResultList();
				
				String x = "";
				for(foodstallbean q :list1) {
					x = q.getFoodstall()+"("+q.getMap()+q.getAddress()+")"; 
					System.out.println(x);
				}
				name.add(x);
				
				
				String hql2 = "FROM typebean where v_id like "+aStorebean.getC_v_uniformnumbers();
				List<typebean> list2 = em.createQuery(hql2).getResultList();
				String daw = "";
				for(typebean s :list2) {
					daw = daw+s.getC_type()+"/";
				}
				type.add(daw);
				}
			String a1 = "全夜市查詢:【"+a+"】";
			m.addAttribute("a1",a1);
			m.addAttribute("type",type);
			m.addAttribute("Foodstall",name);
			m.addAttribute("list_size", list.size());
			m.addAttribute("c_v_uniformnumbers", c_v_uniformnumbers);
			m.addAttribute("c_name", c_name);
			m.addAttribute("c_c_price", c_c_price);
			m.addAttribute("c_sellerID", c_sellerID);
			m.addAttribute("c_image", c_image);
			return m;
		}
//新增頁面----------------------------------------------------------------------------------------------------------
	@SuppressWarnings("unchecked")
	@Override
	public List<permissionsbean>   add(int a){
		String hql = "FROM  permissionsbean  where member_no like "+a;
		List<permissionsbean> list = em.createQuery(hql).getResultList();
		return list;
	}

	
//新增----------------------------------------------------------------------------------------------------------
	@Override
	public boolean insertEmp(storebean a,String[] rs) {
			em.persist(a);		
			int z = a.getC_v_uniformnumbers();
			 for (String b: rs) {
				 typebean p = new typebean();
				 p.setV_id(z);
				 p.setC_type(b);
				 em.persist(p);
			 }		
			return true;
	}
//加調料----------------------------------------------------------------------------------------------------------
	@SuppressWarnings("all")
	@Override
	public 	Map<String, Object> Feed(int key){
		Map<String, Object> map = new HashMap<>();
		storebean a1 =  em.find(storebean.class, key);
		ArrayList a2 = new ArrayList();// 類別名稱	
		int i = 0;

		String hql = "FROM  typebean  where v_id like "+key;
		List<typebean> list = em.createQuery(hql).getResultList();
		for (typebean a : list) {
			String hql1 = "FROM  cokebean  where type like '"+a.getC_type()+"'";
			List<cokebean> list1 = em.createQuery(hql1).getResultList();
			ArrayList a3 = new ArrayList();// 類別名稱	
			ArrayList a4 = new ArrayList();// 類別名稱				
			for (cokebean b : list1 ) {
				a3.add(b.getCookery());
				a4.add(b.getId());
			}
			map.put("z"+i,a3);
			map.put("x"+i,a4);
			a2.add(a.getC_type());
			i++;
		}
		
		map.put("name", a1.getC_name());
		map.put("type", a2);
		map.put("list", list.size());	
		return map;	
	}
	
	

	
//刪除---------------------------------
	@Override
	public boolean  delete(int a){
		storebean a1 =  em.find(storebean.class, a);
		em.remove(a1);
		return true;
	}

//修改頁面----------------------------------------------------------------------------------------------------------------

	@Override
	public storebean Lookfor (int a) {
		storebean a1 =  em.find(storebean.class, a);
		return a1;
	}
//照片產生器----------------------------------------------------------------------------------------------------------------
	@Override
	@SuppressWarnings("all")
	public String photo (HttpServletRequest request,MultipartFile placeImage) throws IllegalStateException,  IOException  {
		Blob blob = null;
		try {
		String saveFileDir = request.getSession().getServletContext().getRealPath("/") + "images\\ccc\\";
		String a = UUID.randomUUID().toString();//新名稱
		String b = placeImage.getOriginalFilename();//原檔名
		String c = b.substring(b.lastIndexOf("."));//副檔名
		
		String d = a+c;
		File saveDirFile = new File(saveFileDir+d);
		System.out.println(saveFileDir);
		saveDirFile.mkdirs();
		
//		InputStream is = placeImage.getInputStream();
//		blob = SystemUtils.inputStreamToBlob(is);
		
		
		
		byte[] z = placeImage.getBytes();
		placeImage.transferTo(saveDirFile);
		
		
		
		
		return d;
		}catch (Exception e) {
			return null;
		}
		
		
		
		
	}
//修改表格資料獲取----------------------------------------------------------------------------------------------------------------
	@Override
	public storebean text (HttpServletRequest request,int a,int b,String c) { //a = 第幾筆商品 b = 使用者id c = 照片檔名
		storebean a1 =  em.find(storebean.class, a);
		String paaen2 = request.getParameter("account");
		if(paaen2.equals("")){}
		else {
			a1.setC_name(paaen2);
			}

		int paaen3 = 0;
		try {
			paaen3 = Integer.parseInt(request.getParameter("pwd"));			
		}catch (Exception e) {
			paaen3 = 0;		
		}
		if (paaen3!=0) {a1.setC_c_price(paaen3);}
		String d = a1.getC_image();		
		if(c==null) {
			if(d==null) {
				a1.setC_image("1.png");
				}		
		}
		else {
			a1.setC_image(c);
			}
		
		if (b!=0) {a1.setC_sellerID(b);}		
		return a1;
	}
//完成修改----------------------------------------------------------------------------------------------------------------
	@SuppressWarnings("all")
	@Override
	public boolean update (storebean a,String[] rs) {
		em.merge(a);		
		int z = a.getC_v_uniformnumbers();
		String hql = "FROM  typebean  where V_id like '"+z+"'";
		List<typebean> list = em.createQuery(hql).getResultList();
		if (list.size()!=0) {
			for (typebean a1 :list) {
				em.remove(a1);			
			}			
		}
		 for (String b: rs) {
			 typebean p = new typebean();
			 p.setV_id(z);
			 p.setC_type(b);
			 em.persist(p);
		 }
		return true;
	}
//攤販頁面----------------------------------------------------------------------------------------------------------------
		@SuppressWarnings("all")
		@Override
		public 	Map<String, Object> streetVendor(ModelMap m){
			ArrayList a1 = new ArrayList();// 類別名稱	
			String hql = "FROM foodtypebean";
			List<foodtypebean> list = em.createQuery(hql).getResultList();
			String z = "";
			for (foodtypebean a : list) {
				z = a.getFoodtypename();
				System.out.println(z);
				int x = a.getFoodtype();
				String hql1 = "FROM  fooddbbean  where foodtypenid like '"+x+"'";
				List<fooddbbean> list1 = em.createQuery(hql1).getResultList();
				ArrayList a2 = new ArrayList();// 商品編號
				ArrayList a3 = new ArrayList();// 商品名稱
				for (fooddbbean b : list1) {
					int dd = b.getFoodtstallid();
					foodstallbean q =  em.find(foodstallbean.class, dd);
					a2.add(dd);
					a3.add(q.getFoodstall()+"("+q.getMap()+q.getAddress()+")");
				}
				m.addAttribute("商品編號"+z, a2);
				m.addAttribute("商品名稱"+z, a3);
				if (a2.size()==0) {}
				else {a1.add(z);}
			}
	
			m.addAttribute("商品", a1);									
			return m;	
		}
//廣告牆管理----------------------------------------------------------------------------------------------------------------
		@SuppressWarnings("all")
		@Override
		public Model advertising(Model m){
			ArrayList z1 = new ArrayList();//攤販名稱
			ArrayList z2 = new ArrayList();//攤販簡介
			ArrayList z3 = new ArrayList();//攤販網址尾碼
			ArrayList z4 = new ArrayList();//攤販照片
			String hql = "FROM introductionbean";
			List<introductionbean> list = em.createQuery(hql).getResultList();
			for (introductionbean a : list) {
				z1.add(a.getIntroduction());
				z2.add(a.getStorephotos());
				z3.add(a.getC_sellerID());
				String b = a.getPhoto();
				if(b==null) {
					z4.add("照片尚未上傳");
				}
				else {
					z4.add(b);
				}
			}
			System.out.println("是用這個");
			m.addAttribute("z1",z1);
			m.addAttribute("z2",z2);
			m.addAttribute("z3",z3);
			m.addAttribute("z4",z4);			
			return m;
		}
	
//----------------------------------------------------------------------------------------------------------------
		@SuppressWarnings("all")
		@Override
		public boolean merge (HttpServletRequest request,String a) {
			System.out.println();
			int ID = 0;
			int ID1 = 0;
			int C_sellerID = 0;        
			try {
				ID = Integer.parseInt(request.getParameter("a1"));
				ID1 = Integer.parseInt(request.getParameter("a4"));
			}catch (Exception e) {}
			introductionbean b = em.find(introductionbean.class, ID1);
			b.setC_sellerID(ID);
			b.setIntroduction(request.getParameter("a2"));
			b.setStorephotos(request.getParameter("a3"));
			b.setPhoto(a);
			System.out.println("確實上傳:"+b.getPhoto());
			em.merge(b);
			return true;
		}
//----------------------------------------------------------------------------------------------------------------
		@SuppressWarnings("all")
		@Override
		public Model find_merge(Model m,int key){
			introductionbean z = em.find(introductionbean.class, key);
			m.addAttribute("a1", z.getC_sellerID());
			m.addAttribute("a2",z.getIntroduction());
			m.addAttribute("a3", z.getStorephotos());
			return m;
		}
		
		
		
		
		
//----------------------------------------------------------------------------------------------------------------
}
