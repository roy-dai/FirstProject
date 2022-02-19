package com.infotran.springboot.neal.control;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.infotran.springboot.neal.model.Message;
import com.infotran.springboot.neal.service.MsgServiceImpl;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class NealController {
	
	@Autowired
	MsgServiceImpl msgService;

//查詢訂餐評價網頁		
	@GetMapping("/NEAL")
	public String neal() {
	return "neal/index";
	//	return "neal/queryMsg";
	}
	
//查詢個人訂餐評價網頁	
	@GetMapping("/queryPsnMsg" )
	public String sendQueryPsnMsg(Model m) {
		if(m.getAttribute("member_name")==null) {
			return "redirect:/member/login";
		}
		return "neal/queryPsnMsg";
	}
	
//查詢訂餐評價網頁	
	@GetMapping("/queryMsg" )
	public String sendQueryMsg() {
		return "neal/queryMsg";
	}
	
//查詢個人訂餐評價網頁	
	@GetMapping(value="/findPsnAll",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> findPsnAll(HttpSession session){
		long member =(Integer)session.getAttribute("member_no");
		return msgService.findPsnAll(member);
	}
	
//查詢所有訂餐評價網頁	
	@GetMapping(value="/findAllMsg",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> findAll(){
		return msgService.findAll();
	}
	
//查詢所有訂餐評價網頁(使用標題查詢)
	@GetMapping(value="/queryByTitle",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> queryByTitle(
			   @RequestParam("title") String title
	){
		return msgService.queryByTitle(title);
	}
	
	@GetMapping(value="/findById/{id}",produces = "application/json; charser=UTF-8")
	public @ResponseBody Message findById(
			@PathVariable("id") Long id
			){
		return msgService.findById(id);
	}
	
//查詢所有訂餐評價網頁(使用訂單編號查詢)
	@GetMapping(value="/findByShopId",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> findByShopId(
			@RequestParam("shop_id") String shop_id
			){
		return msgService.findByshopId(shop_id);
	}	
}
