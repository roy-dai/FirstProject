package com.infotran.springboot.peter.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.infotran.springboot.peter.model.Vendor;
import com.infotran.springboot.peter.service.CountServiceImpl;
import com.infotran.springboot.peter.validate.VendorValidator;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class MarketController {
	
	@Autowired
	CountServiceImpl countService;

	@Autowired
	VendorValidator vendorValidator;
	
	@GetMapping(value = "/getCount", produces = "application/json; charset=UTF-8")
	public @ResponseBody ArrayList<Integer> Count() {
		ArrayList<Integer> count = new ArrayList<Integer>();
		count.add(countService.getCount("A"));
		count.add(countService.getCount("B"));
		count.add(countService.getCount("C"));
		count.add(countService.getCount("D"));
		count.add(countService.getCount("E"));
//		model.addAttribute("count",count);
//		System.out.println(count);
		return count;
	}
	
	@GetMapping(value = "/MinAndMax/{venPosition}", produces = "application/json; charset=UTF-8")
	public @ResponseBody ArrayList<Integer> minAndMaxbyPos(@PathVariable("venPosition") String venPosition) {
		ArrayList<Integer> value = new ArrayList<Integer>();
		value.add(countService.getMaxbyPos(venPosition));
		value.add(countService.getMinbyPos(venPosition));
//		System.out.println(value);
		return value;
	}
	
	@GetMapping("/reset")
	public String SetAllNull() {
		countService.reset();
		return "redirect:/backstage";
	}	
	
	@GetMapping(value = "/close1/{strings}")
	public String selectByValueWithPos(@PathVariable String[] strings) {
//		System.out.println("strings="+strings);
//		System.out.println("strings[0]="+strings[0]);
//		System.out.println("strings[0]="+strings[1]);
		countService.selectByValueWithPos("A", Integer.parseInt(strings[0]));
		countService.selectByValueWithPos("B", Integer.parseInt(strings[1]));
		countService.selectByValueWithPos("C", Integer.parseInt(strings[2]));
		countService.selectByValueWithPos("D", Integer.parseInt(strings[3]));
		countService.selectByValueWithPos("E", Integer.parseInt(strings[4]));
		return "redirect:/backstage";
	}
	
	@GetMapping(value = "/winBin", produces = "application/json; charset=UTF-8")
	public @ResponseBody List<Vendor> winBin(){
		return countService.winBin();
	}
	
	@GetMapping(value = "/loseBin", produces = "application/json; charset=UTF-8")
	public @ResponseBody List<Vendor> loseBin(){
		return countService.loseBin();
	}
	
}
