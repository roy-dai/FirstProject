package com.infotran.springboot.ccc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.infotran.springboot.ccc.bean.storebean;
import com.infotran.springboot.ccc.bean.typebean;
import com.infotran.springboot.ccc.commodity.storeService;
@SessionAttributes(value = {"member_no","member_id","member_name","member_rights","key"})

@Controller
public class cccController1 {
	
	@Autowired
	storeService storeService;
	

	@GetMapping("/CCC_BA/{key}")
	@SuppressWarnings("all")
	public String ccc_ba(@PathVariable Integer key, Model m,ModelMap map) {
		storeService.streetVendor(map);
		storeService.findAll_b(key, m);
		return "ccc/index1";
	}
	
	@GetMapping("/CCC_BB")
	@SuppressWarnings("all")
	public String ccc_bb(ModelMap m) {
		System.out.println(m.get("member_no"));
		storeService.streetVendor(m);
		
		return "ccc/index";
		
	}
		
		@PostMapping("/CCC_BC")
		@SuppressWarnings("all")
		public String ccc_bc(ModelMap m,HttpServletRequest request) {
			String paaen2 = request.getParameter("amount_1");
			String paaen3 = request.getParameter("amount_2");
			storeService.streetVendor(m);
			return "ccc/index";	
}
		@GetMapping("/CCC_BD")
		public String ccc_bd(Model m,ModelMap map){
			storeService.advertising(m);
			return "ccc/management1";
		}
		
		@PostMapping("/CCC_BE")
		@SuppressWarnings("all")
		public String ccc_be(Model m,HttpServletRequest request,ModelMap map) {
			String a = request.getParameter("Fuzzyquery");
			storeService.streetVendor(map);			
			storeService.findAll_c(a,m);
			int list_size = (int) m.getAttribute("list_size");
			System.out.println(list_size);
			if (list_size==0) {
				return "ccc/index3";					
			}
			else {
				return "ccc/index2";					
			}
		}
		
		
		@GetMapping("/CCC_BF/{key}")
		@SuppressWarnings("all")
		public String ccc_bf(@PathVariable Integer key, Model m,ModelMap map) {
			m.addAttribute("key",key);
			storeService.find_merge(m, key);
			return "ccc/merge";
		}
		
		
		
		@PostMapping("/CCC_BG")
		@SuppressWarnings("all")
		public String ccc_bg(Model m,HttpServletRequest request,ModelMap map,MultipartFile pictureFile)throws IllegalStateException, IOException {
			String d = storeService.photo(request, pictureFile);
			storeService.merge(request,d);
			
			storeService.advertising(m);
			return "ccc/management1";
		}

		@GetMapping("/CCC_BH/{key}")
		@SuppressWarnings("all")
		public String ccc_bh(@PathVariable String key,Model m,HttpServletRequest request,ModelMap map) {
			storeService.streetVendor(map);			
			storeService.findAll_c(key,m);
			int list_size = (int) m.getAttribute("list_size");
			System.out.println(key);
			if (list_size==0) {
				return "ccc/index3";					
			}
			else {
				return "ccc/index5";					
			}
		}
		
}