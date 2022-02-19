package com.infotran.springboot.neal.control;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Blob;
import java.sql.Clob;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
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
import com.infotran.springboot.neal.model.StoreJudge;
import com.infotran.springboot.neal.service.MsgServiceImpl;
import com.infotran.springboot.neal.service.StoreJudgeServiceImpl;
import com.infotran.springboot.neal.service.TypeServiceImpl;

import ch.qos.logback.core.Context;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class StoreJudgeController {
	
//@Autowired:受IOC容器控管的Java物件就是bean
//把 service & dao 作為介面，spring是以介面寫程式而非類別
	@Autowired
	StoreJudgeServiceImpl storeJudgeService;
	
	@Autowired
	TypeServiceImpl typeService;
	
	@Autowired
	ServletContext context;
	
//美食討論區:查詢功能
	@GetMapping(value="/findStoreJudgeAll",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> findStoreJudgeAll(){
		return storeJudgeService.findAll();
	}
	
//美食討論區:個人查詢功能
	@GetMapping(value="/findPsnStoreJudgeAll",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> findPsnStoreJudgeAll(HttpSession session){
		System.out.println("美食討論區:個人查詢功能");
		long member =(Integer)session.getAttribute("member_no");
		return storeJudgeService.findPsnAll(member);
	}
	
//美食討論區:標題查詢功能
	@GetMapping(value="/queryStoreJudgeByTitle",produces = "application/json; charser=UTF-8")
	public @ResponseBody Map<String, Object> queryStoreJudgeByTitle(
			   @RequestParam("title") String title
	){
		return storeJudgeService.queryByTitle(title);
	}
	
//美食討論區:findById
	@GetMapping(value="/findStoreJudgeById/{id}",produces = "application/json; charser=UTF-8")
	public 	@ResponseBody StoreJudge findStoreJudgeById(
				@PathVariable("id") Long id
			){
		return storeJudgeService.findById(id);
	}
	
//美食討論區:商家查詢功能
	@GetMapping(value="/findStoreJudgeByStoreId",produces = "application/json; charser=UTF-8")
	public 	@ResponseBody Map<String, Object> findStoreJudgeByStoreId(
				@RequestParam("storeId") Integer storeId
			){
		return storeJudgeService.findBystoreId(storeId);
	}	
	
//美食討論區:findByTypeId
	@GetMapping(value="/findByTypeId",produces = "application/json; charser=UTF-8")
	public 	@ResponseBody List<StoreJudge> findByTypeId(
				@RequestParam Integer typeId
			){
		return storeJudgeService.findByType(typeId);
	}
}
