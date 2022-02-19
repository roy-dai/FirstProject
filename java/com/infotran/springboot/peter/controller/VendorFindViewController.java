package com.infotran.springboot.peter.controller;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotran.springboot.peter.model.Vendor;
import com.infotran.springboot.peter.service.VendorServiceImpl;
import com.infotran.springboot.peter.utils.SystemUtils;
import com.infotran.springboot.peter.validate.VendorValidator;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class VendorFindViewController {

	@Autowired
	VendorServiceImpl vendorService;

	@Autowired
	VendorValidator vendorValidator;

	@Autowired
	ServletContext context;

	@GetMapping("/PETER")
	public String venHomePage() {
		return "peter/index";
	}
	
	@GetMapping("/backstage")
	public String backStage(HttpSession session) {
		if(checkAdmin(session)==true) {
			return "peter/backStage2";			
		}else{
			return "redirect:./";
		}
	}
	
	@GetMapping("/backstage2")
	public String backStage2() {
		return "peter/OrderManagement";
	}
	
	@GetMapping("/mapDesign")
	public String mapDesign() {
		return "peter/map";
	}
	
//	@PostMapping(value = "/Login", produces = "application/json; charset=UTF-8")
//	public @ResponseBody String login(
//			@RequestParam(value = "act")String act,
//			@RequestParam(value = "pwd")String pwd
//			) {
//		String status = "";
//		if (act=="A12345722" && Integer.parseInt(pwd)==12345) {
//			status = "登入成功";
//		}else {
//			status = "登入失敗";
//		}
//		return status;
//	}
//	
	@GetMapping("/checkLogin")
	public @ResponseBody boolean checkLogin(HttpSession session) {
		Integer id = (Integer)session.getAttribute("member_no");
		boolean status = true;
		System.out.println(id);
		if (id == null) {
			status = false;
		}
		return status;
	}
	
	
	public static boolean checkAdmin(HttpSession session) {
		String R = (String) session.getAttribute("member_rights");
		System.out.println("R:"+R);
		boolean status;
		String adminR = "4";
		if (R == null || !R.equals(adminR)) {
			status = false;
		}else status = true;
//		System.out.println("status:"+status);
		return status;
	}
	
	@GetMapping("/vendorRegister")
	public String sendInsertVendor(Model model) {	
		return "peter/registerPage";
	}
	
	@PostMapping("vendorRegister")
	public String saveVendor(@ModelAttribute("vendor") Vendor vendor,
				HttpSession session,
				BindingResult result,
				RedirectAttributes ra
			) {
		Integer id = (Integer) session.getAttribute("member_no");
		vendor.setMember_no(id);
		vendorValidator.validate(vendor, result);
		if (result.hasErrors()) {
			List<ObjectError> list = result.getAllErrors();
			for(Object error:list) {
				System.out.println("有錯誤: " + error);
			}
			return "peter/registerPage";
		}
		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile vendorImage = vendor.getVendorImage();
//		if (vendorImage != null && vendorImage.getSize() > 0 ) {
		try {
				InputStream is = vendorImage.getInputStream();
				name = vendorImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(name);
				vendor.setPicture(blob);
				vendor.setMimeType(mimeType);
			} catch (Exception e) {
				e.printStackTrace();
			}
//		}
		vendorService.save(vendor);
		
		String ext = SystemUtils.getExFilename(name);
		try {
				File imageFolder = new File(SystemUtils.VENDOR_IMAGE_FOLDER);
				if (!imageFolder.exists()) 
					imageFolder.mkdirs();
				File file = new File(imageFolder, "VendorImage_" + vendor.getVenID() + ext);
				vendorImage.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常:" + e.getMessage());
			}
			
			ra.addFlashAttribute("successMessage", vendor.getVenName()+"，新增成功");
		return "redirect:/queryVendor";
	}
	
	
	
	@GetMapping("/insertSuccess")
	public String insertSuccess() {
		return "peter/insertSuccess";
	}

	@GetMapping("/modifyVendor/{venID}")
	public String sendEditPage(@PathVariable("venID") Integer venID, Model model) {
		Vendor vendor = vendorService.findByVenID(venID);
		model.addAttribute("vendor", vendor);
		return "peter/editVendor";
	}
	
	@GetMapping("/delete/{venID}")
	public String deleteVendor(@PathVariable("venID") Integer venID
			){
		Vendor vendor = vendorService.findByVenID(venID);
		vendorService.deleteVen(vendor);
		return "/peter/queryVendor";
	}

	@PostMapping("/modifyVendor/{venID}")
	public String updateVendor(@ModelAttribute("vendor") Vendor vendor,
			BindingResult result, RedirectAttributes ra){
		vendorValidator.validate(vendor, result);
		if (result.hasErrors()) {
			List<ObjectError> list = result.getAllErrors();
			for(Object error:list) {
				System.out.println("有錯誤: " + error);
			}
			return "redirect:/editVendor";
		}
		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile vendorImage = vendor.getVendorImage();
		if (vendorImage != null && vendorImage.getSize() > 0 ) {
		try {
			InputStream is = vendorImage.getInputStream();
			name = vendorImage.getOriginalFilename();
			blob = SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			vendor.setPicture(blob);
			vendor.setMimeType(mimeType);
			
			String ext = SystemUtils.getExFilename(name);
			try {
					File imageFolder = new File(SystemUtils.VENDOR_IMAGE_FOLDER);
					if (!imageFolder.exists())
						imageFolder.mkdirs();
					File file = new File(imageFolder, "Image_" + vendor.getVenID() + ext);
					vendorImage.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常" + e.getMessage());
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		vendorService.updateVen(vendor);
		ra.addFlashAttribute("successMessage", vendor.getVenName()+"修改成功");
		return "/peter/queryVendor";
	}
	
	@ModelAttribute("vendor")
	public Vendor getVendor1(@RequestParam(value = "venID", required = false) Integer venID) {
		Vendor vendor = null;
		if (venID != null) {
			vendor = vendorService.findByVenID(venID);
		}else {
			vendor = new Vendor();
		}
		System.out.println("In @ModelAttribute, vendor = " + vendor);
		return vendor;
	}
}
