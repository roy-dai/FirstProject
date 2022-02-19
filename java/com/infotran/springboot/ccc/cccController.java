package com.infotran.springboot.ccc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.cfg.annotations.MapKeyColumnDelegator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.infotran.springboot.ccc.bean.introductionbean;
import com.infotran.springboot.ccc.bean.permissionsbean;
import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.ccc.bean.typebean;
import com.infotran.springboot.ccc.commodity.storeService;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights","key"})

@Controller
public class cccController {
	
	@Autowired
	storeService storeService;
	
	@GetMapping("/CCC")
	public String ccc() {
		
		return "ccc/index";
	}
	
	@GetMapping(value="/findAll", produces = "application/json; charset=UTF-8")	

	public @ResponseBody Map<String, Object> findAll(){
		return storeService.findAll(); 
	}
	
//新增頁面------------------------------------------------------------------------------------------------	
	@SuppressWarnings("all")
	@GetMapping("/CCC_add")
	public String ccc_add(ModelMap m,Model Model) {
		ArrayList a2 = new ArrayList();// 類別名稱	
		try {
		if (!m.get("member_rights").equals("3")) {
			return "redirect:/";			
		}
		else {
			List<permissionsbean> a =storeService.add((int)m.get("member_no"));
			for (permissionsbean b:a) {
				a2.add(b.getType());
			}
			m.addAttribute("A1", a.size());
			m.addAttribute("A2", a2);
			return "ccc/add";				
		}
		}catch (Exception e) {
			return "redirect:/member/login";				
		}
	}
	

//新增------------------------------------------------------------------------------------------------	
	@SuppressWarnings("all")
	@PostMapping("/CCC_AC")
	public String ccc_ac(HttpServletRequest request,MultipartFile pictureFile,ModelMap m,Model map) throws IllegalStateException,  IOException {
		int zz = 0 ;
		try {
		zz = (int)m.get("member_no");
		}catch (Exception e) {
			return "redirect:/member/login";				
		}
		
		String d = storeService.photo(request, pictureFile);
		
		
		storebean a1 = new storebean();
		String paaen2 = request.getParameter("account");
		int paaen3 = 0;
		try {
			paaen3 = Integer.parseInt(request.getParameter("pwd"));			
		}catch (Exception e) {
			paaen3 = 0;		
			}
		String paaen4 = request.getParameter("comment");
		String[] rs = request.getParameterValues("hobby");
		
		a1.setC_name(paaen2);
		a1.setC_c_price(paaen3);
		if (d!=null) {
			a1.setC_image(d);			
		}
		else {
			a1.setC_image("1.jpg");						
		}
		a1.setC_sellerID(zz);
		storeService.insertEmp(a1, rs);
		storeService.findAll_a(map,m);
		return "ccc/management";	
	}
//管理頁面------------------------------------------------------------------------------------------------	
	@GetMapping("/CCC_MANAGEMENT")
	@SuppressWarnings("all")
	public String ccc_management(ModelMap m,Model map) {
		try {
		if (!m.get("member_rights").equals("3")) {
			System.out.println(m.get("member_no"));
			System.out.println("驗證失敗");
			return "redirect:/";				
		}
		else {
			storeService.findAll_a(map,m);
			return "ccc/management";				
		}
		}catch (Exception e) {			
			return "redirect:/member/login";				
		}
	}
	
//配方------------------------------------------------------------------------------------------------	
@GetMapping(value="/CCC_AD", produces = "application/json; charset=UTF-8")	
	public @ResponseBody Map<String, Object> CCC_AD(ModelMap m){
		return storeService.Feed((int)m.get("key")); 
	}
	
//配方------------------------------------------------------------------------------------------------	

	@GetMapping("/CCC_condiment/{key}")
	public String editMember(@PathVariable Integer key, Model m,ModelMap map) {
		try {
			if (map.get("member_no").equals(null)) {
				return "redirect:/member/login";			
			}
			else {
				System.out.println(key);
				m.addAttribute("key",key);
				return "ccc/condiment";											
			}
			}catch (Exception e) {
				return "redirect:/member/login";				
			}
	}		
//刪除------------------------------------------------------------------------------------------------	
	@GetMapping("/CCC_DELETE/{key}")
	public String delete(@PathVariable Integer key, Model m) {
			m.addAttribute("key",key);
			return "ccc/delete";					
	}
	
	@GetMapping("/CCC_DELETELMPL")
	@SuppressWarnings("all")
	public String ccc_deletelmpl(ModelMap m,Model map) {
		try {
		if (m.get("member_no")==(null)) {
			return "redirect:/member/login";			
		}
		else {
			storeService.delete((int)m.get("key"));
			try {
				if (m.get("member_no").equals(null)) {
					return "redirect:/member/login";			
				}
				else {
					storeService.findAll_a(map,m);
					return "ccc/management";				
				}
				}catch (Exception e) {
					return "redirect:/member/login";				
				}
		}
		}catch (Exception e) {
			return "redirect:/member/login";				
		}
	}
////修改------------------------------------------------------------------------------------------------	
	@SuppressWarnings("all")
	@GetMapping("/CCC_UPDATE/{key}")
	public String update(@PathVariable Integer key, ModelMap m,Model Model) {	
			Model.addAttribute("key",key);
			storebean a1 =storeService.Lookfor(key);
			ArrayList a2 = new ArrayList();// 類別名稱	
			try {
			if (m.get("member_no")==(null)) {
				return "redirect:/member/login";			
			}
			else {
				List<permissionsbean> a =storeService.add((int)m.get("member_no"));
				for (permissionsbean b:a) {
					a2.add(b.getType());
				}
				m.addAttribute("A1", a.size());
				m.addAttribute("A2", a2);
				m.addAttribute("A3", a1.getC_name());
				m.addAttribute("A4",a1.getC_c_price());
				return "ccc/update";				
			}
			}catch (Exception e) {
				return "redirect:/member/login";				
			}					
	}
//修改執行------------------------------------------------------------------------------------------------	
@PostMapping("/CCC_UPDATELMPL")
@SuppressWarnings("all")
public String updatelmplString (HttpServletRequest request,MultipartFile pictureFile,ModelMap m,Model map) throws IllegalStateException,  IOException {
		int z1 = (int)m.get("key");
		int z2 = (int)m.get("member_no");
		String[] rs = request.getParameterValues("hobby");
		String d = storeService.photo(request, pictureFile);
		storebean bean =  storeService.text(request, z1, z2, d);
		storeService.update(bean,rs);
		storeService.findAll_a(map,m);				
	return "ccc/management";	
}		
}