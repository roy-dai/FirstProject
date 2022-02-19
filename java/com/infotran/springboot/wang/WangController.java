package com.infotran.springboot.wang;


import java.io.IOException;
import java.net.http.HttpRequest;

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

import com.infotran.springboot.ccc.bean.introductionbean;
import com.infotran.springboot.ccc.commodity.storeService;
import com.infotran.springboot.wang.service.wangservice;


@SessionAttributes(value = {"member_no","member_id","member_name","member_rights","key","wangkey"})

@Controller
public class WangController {
	@Autowired
	wangservice wangservice;
	
	@Autowired
	storeService storeService;
	
	
	@GetMapping("/WANG")
	public String wang(Model m) {
		int a = 1;
		wangservice.get(m,a);
		return "wang/index";
	}
	
	@GetMapping("/Backstage")
	public String Backstage(Model m) {
		int a = 1;
		wangservice.get1(m,a);
		return "wang/Backstage";
	}
	
	@GetMapping("/WANG_ADD")
	public String wang_add(Model m) {
		if(m.getAttribute("member_rights")==null) {
			return "redirect:/member/login";
		}if(!m.getAttribute("member_rights").equals("4")) {
			return "redirect:/";
		}
		return "wang/add";
	}
	
	@PostMapping("/WANG_ADDIMPL")
	public String wang_addimpl(Model m,HttpServletRequest request,MultipartFile pictureFile) throws IllegalStateException, IOException {
		System.out.println(m.getAttribute("a1"));

		String d = storeService.photo(request, pictureFile);
//-----------------------------------
		wangservice.add(request,m,d);
		int a = 1;
		wangservice.get1(m,a);
		return "wang/Backstage";
	}
	
	@GetMapping("/WANG_MERGE/{key}")
	public String wang_merge (@PathVariable Integer key, Model m,ModelMap map) {
		wangservice.Inquire(m, key);
		return "wang/merge";
	}
	
	@PostMapping("/WANG_MERGEIMPL")
	public String wang_mergeimpl(Model m,HttpServletRequest request,MultipartFile pictureFile) throws IllegalStateException, IOException  {
		String d = storeService.photo(request, pictureFile);
		wangservice.mergeimpl(m, request, d);
		int a = 0;
		wangservice.get1(m,a);
		return "wang/Backstage"; 	
		}
	
	
	@GetMapping("/WANG_DELTE/{key}")
	public String wang_delte (@PathVariable Integer key, Model m,ModelMap map) {
		int a = 0;
		wangservice.DELTE(key);
		wangservice.get1(m,a);
		return "wang/Backstage"; 
	}
}