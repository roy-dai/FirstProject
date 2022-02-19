package com.infotran.springboot.peter.controller;

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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.infotran.springboot.peter.model.Vendor;
import com.infotran.springboot.peter.service.VendorServiceImpl;
import com.infotran.springboot.peter.utils.SystemUtils;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class VendorController {
	
	@Value("\\data\\Vendor11006.csv")
	String filename;
	
	@Autowired
	VendorServiceImpl vendorService;
	
	@Autowired
	ServletContext context;
	
	@GetMapping("/queryVendor")
	public String queryVendor() {
		return "peter/queryVendor";
	}
	
	@GetMapping("/AllVendor")
	public String AllVendor() {
		return "peter/AllVendor";
	}
	
	@GetMapping(value = "/findAllSlim", produces = "application/json; charset=UTF-8")
	public @ResponseBody List<Vendor> findAllSlim(){
		return vendorService.findAllSlim();
	}
	
	@GetMapping(value = "/findAllVen", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> findAll(){
		return vendorService.findAll();
	}
	
	
	@GetMapping(value = "/queryByName", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> queryByName(
			@RequestParam("vname") String vname
		){
			return vendorService.queryByVenName(vname);
	}
	
	@GetMapping(value = "/queryByMember", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> queryByMember(HttpSession session
		){
			Integer id = (Integer) session.getAttribute("member_no");
			return vendorService.queryByMember(id);
	}
	
	@GetMapping(value = "/findById/{venID}", produces = "application/json; charset=UTF-8")
	public @ResponseBody Vendor findById(
			@RequestParam("venID") Integer venID
			){
		return vendorService.findByVenID(venID);
	}
	
	@GetMapping(value = "/findByPosition/{venPosition}", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> findByPosition(@PathVariable("venPosition") String venPosition
			){
		return vendorService.findByPosition(venPosition);
	}
	
	@GetMapping(value = "/findByType", produces = "application/json; charset=UTF-8")
	public @ResponseBody Map<String, Object> findByType(
			@RequestParam("venType") String venType
			){
		return vendorService.findByVenType(venType);
	}

	@GetMapping("/readfile/excel")
	public String readFile(Model model) {
		String result = "";
		try {
			ClassPathResource cpr = new ClassPathResource(filename);
			InputStream is = cpr.getInputStream();
			InputStreamReader isr = new InputStreamReader(is);
			BufferedReader br = new BufferedReader(isr);
			String line = "";
			int count = 0;
			while ( (line = br.readLine()) != null) {
				System.out.println(line);
				String [] sa = line.split(",");
				
//				Integer venID = Integer.parseInt(sa[0]);
				Integer member_no = Integer.parseInt(sa[1]);
				Integer venValue = Integer.parseInt(sa[6]);
				Blob picture = SystemUtils.pathToBlob(sa[8]);
				String mimeType = context.getMimeType(sa[8]);
				Vendor vendor = new Vendor( member_no, sa[2], sa[3], sa[4],
											sa[5],venValue, sa[7], mimeType, picture);
				vendorService.save(vendor);
				count++;
			}
			result = "新增" + count + "筆廠商資料";
		} catch (Exception e) {
			e.printStackTrace();
			result = e.getMessage();
		}
		model.addAttribute("result", result);
		
		return "peter/showResult";
		
	}
}
