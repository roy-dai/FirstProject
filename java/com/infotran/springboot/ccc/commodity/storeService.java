package com.infotran.springboot.ccc.commodity;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.infotran.springboot.ccc.bean.permissionsbean;
import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.ccc.bean.typebean;



@Service
public interface storeService {
	
	Map<String, Object>  findAll();
	
	 Model findAll_a(Model map,ModelMap m);
	
	 Model findAll_b(int a,Model m);
	 
	 Model findAll_c(String a,Model m);
	 
	 List<typebean> findAll_c(int a);

	 boolean insertEmp(storebean a,String[] rs);

	Map<String, Object> Feed(int key);
	
	boolean  delete(int a);
	
	List<permissionsbean>  add(int a);

	storebean Lookfor (int a);
	
	String photo (HttpServletRequest request,MultipartFile pictureFile)throws IllegalStateException, IOException;
	
	storebean text (HttpServletRequest request,int a,int b,String c);
	
	boolean update (storebean a,String[] rs);
	
	Map<String, Object> streetVendor(ModelMap m);
	
	 Model advertising(Model m);
	 
	 boolean merge (HttpServletRequest request,String a);
	 
	 Model find_merge(Model m,int key);

	
}
