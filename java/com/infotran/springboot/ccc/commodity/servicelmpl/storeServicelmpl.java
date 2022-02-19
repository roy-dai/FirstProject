package com.infotran.springboot.ccc.commodity.servicelmpl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.infotran.springboot.ccc.bean.permissionsbean;
import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.ccc.bean.typebean;
import com.infotran.springboot.ccc.commodity.storeService;
import com.infotran.springboot.ccc.dao.dao;


@Transactional
@Service
public class storeServicelmpl implements storeService{
	@Autowired
	dao daolmpl;
	
	@Override
	public Map<String, Object>  findAll(){
		return daolmpl.findAll();
	}
	@Override
	public 	 Model findAll_a(Model map,ModelMap m){
		return daolmpl.findAll_a(map,m);
	}
	@Override
	public Model findAll_b(int a,Model m){
		return daolmpl.findAll_b(a,m);
	}
	@Override
	public Model findAll_c(String a,Model m) {
		return daolmpl.findAll_c(a,m);

	}
	@Override
	public List<typebean> findAll_c(int a){
		return daolmpl.findAll_c(a);

	}
	
	@Override
	public boolean insertEmp(storebean a,String[] rs) {
		return daolmpl.insertEmp(a,rs);
	}
	@Override
	public Map<String, Object> Feed(int key) {
		return daolmpl.Feed(key);
	}
	@Override
	public boolean  delete(int a){
				return daolmpl.delete(a);
	}
	
	@Override
	public List<permissionsbean>  add(int a){

				return daolmpl.add(a);
	}
	@Override
	public storebean Lookfor (int a) {
		return daolmpl.Lookfor(a);
	}
	@Override
	public String photo (HttpServletRequest request,MultipartFile pictureFile) throws IllegalStateException, IOException {
		return daolmpl.photo(request,pictureFile);
	}
	@Override
	public storebean text (HttpServletRequest request,int a,int b,String c) {
		return daolmpl.text(request,a,b,c);
	}
	@Override
	public boolean update (storebean a,String[] rs) {
		return daolmpl.update(a,rs);
	}
	@Override
	public Map<String, Object> streetVendor(ModelMap m){
		return daolmpl.streetVendor(m);
	}

	@Override
	public Model advertising(Model m) {
	return daolmpl.advertising(m);
}
	
	@Override
	public boolean merge (HttpServletRequest request,String a) {
		return daolmpl.merge(request,a);
	}
	@Override
	public Model find_merge(Model m,int key){
		return daolmpl.find_merge(m,key);
	}


}
