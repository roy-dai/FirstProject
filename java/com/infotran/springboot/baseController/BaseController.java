package com.infotran.springboot.baseController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.infotran.springboot.wang.service.wangservice;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class BaseController {
	@Autowired
	wangservice wangservice;
	
//	前台首頁
	@GetMapping("/")
	public String baseController(Model m) {
		System.out.println("baseController");
		int a = 0;
		wangservice.get(m,a);
		return "roy/index";

	}
//	後台首頁(攤販)
	@GetMapping("/BackForVendor")
	public String bakcViewForVendor(Model m) {
//		if(m.getAttribute("member_rights")!=3)) {
//			return "redirect:/"l;
//		}
		return "BackForVendor";
		
	}

}
