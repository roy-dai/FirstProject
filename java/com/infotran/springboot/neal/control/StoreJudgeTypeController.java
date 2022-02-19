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
import com.infotran.springboot.neal.service.MsgServiceImpl;
import com.infotran.springboot.neal.service.StoreJudgeServiceImpl;
import com.infotran.springboot.neal.service.TypeServiceImpl;


@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class StoreJudgeTypeController {
	
	@Autowired
	TypeServiceImpl typeService;
	
	@Autowired
	ServletContext context;
	
//查詢所有文章類型	
	@GetMapping(value={"/getAllTypes"}, produces = "application/json; charset=UTF-8")	
	public @ResponseBody Map<String, Object> findAll(){
		return typeService.findAll(); 
	}
	
	@GetMapping(value={"/findAllTypes","/queryType"})	
	public String  sendTypePage(){
		return "neal/queryAllTypes"; 
	}

}
