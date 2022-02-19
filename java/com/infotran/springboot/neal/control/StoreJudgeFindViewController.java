package com.infotran.springboot.neal.control;

import java.io.File;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.naming.Binding;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.amqp.RabbitAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotran.springboot.neal.model.Message;
import com.infotran.springboot.neal.model.RestaurantType;
import com.infotran.springboot.neal.model.StoreJudge;
import com.infotran.springboot.neal.service.MsgServiceImpl;
import com.infotran.springboot.neal.service.StoreJudgeServiceImpl;
import com.infotran.springboot.neal.service.TypeServiceImpl;
import com.infotran.springboot.neal.utils.SystemUtils;
import com.infotran.springboot.neal.validate.MessageValidator;
import com.infotran.springboot.neal.validate.StoreJudgeValidator;
import com.infotran.springboot.peter.model.Vendor;

import ch.qos.logback.core.Context;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class StoreJudgeFindViewController {
	
	@Autowired
	StoreJudgeValidator storeJudgeValidator;
	
	@Autowired
	MessageValidator messageValidator;
	
	@Autowired
	StoreJudgeServiceImpl storeJudgeService;

	@Autowired
	TypeServiceImpl typeService;
	
	@Autowired
	ServletContext context;
	
	
//預設傳回物件的資料
	@ModelAttribute("storeJudge")
	public StoreJudge getStoreJudge(@RequestParam(value="id", required = false ) Long id) {
		
		System.out.println("------------------------------------------");
		StoreJudge storeJudge = null;
		if (id != null) {
			storeJudge = storeJudgeService.findById(id);
		} else {
			storeJudge = new StoreJudge();
		}
		System.out.println("In @ModelAttribute, storeJudge=" + storeJudge);
		return storeJudge;
	}
	
	@ModelAttribute("typeList")
	public List<RestaurantType>  getAllRestaurantType(){
		return typeService.findRestaurantTypes();
	}
	
//美食討論區:查詢維護訂餐評價
	@GetMapping("/modifyStoreJudge/{storeJudgeId}")	
	public String sendEditStoreJudgePage(
			@PathVariable Long storeJudgeId, Model model
			){
		System.out.println("---------- I will go to modifyStoreJudge GET");
		StoreJudge storeJudge = storeJudgeService.findById(storeJudgeId);
		
		System.out.println("---------- storeJudge"+storeJudge);
		model.addAttribute("storeJudge",storeJudge);
		return "neal/editStoreJudge";
	}
		
//美食討論區:更新文章
	@PostMapping("/modifyStoreJudge/{StoreJudgeId}")	
	public String updateStoreJudge(StoreJudge storeJudge,
			BindingResult result,
			RedirectAttributes ra,HttpSession session) {
		storeJudgeValidator.validate(storeJudge, result);
		System.out.println("---------- I will go to modifyStoreJudge POST");
		
		if(result.hasErrors()) {
			
			List<ObjectError> list =result.getAllErrors();
			for(ObjectError error : list) {
				System.out.println("有錯誤:"+error);
			}
			return "neal/editStoreJudge";
		}	
		
		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile placeImage = storeJudge.getPlaceImage();
		if (placeImage != null && placeImage.getSize() > 0) {
			try {
				InputStream is = placeImage.getInputStream();
				name = placeImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(name);
				storeJudge.setPicture(blob);
				storeJudge.setMimeType(mimeType);
				
				String ext = SystemUtils.getExtFilename(name);
				// 將上傳的檔案移到指定的資料夾, 目前註解此功能
				try {
					File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
					if (!imageFolder.exists())
						imageFolder.mkdirs();
					File file = new File(imageFolder, "MemberImage_" + storeJudge.getStoreJudgeId() + ext);
					placeImage.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		Integer memberNo =(Integer)session.getAttribute("member_no");
		storeJudge.setMember_id(memberNo);
		storeJudge.setPopularity(0);
		storeJudge.setCreatdate(new Timestamp(System.currentTimeMillis()));
		storeJudge.setDelete_boolean(0);
		storeJudge.setDeletedate(new Timestamp(System.currentTimeMillis()));
		storeJudgeService.update(storeJudge);
		return "redirect:/queryPsnStoreJudge";
	}
	
	@GetMapping("/insertStoreJudge/{venID}")
	public String sendInsertStoreJudge(Model model,HttpSession session,@PathVariable("venID") Integer venID) {	
		Integer memberNo =(Integer)session.getAttribute("member_no");
		StoreJudge storeJudge = new StoreJudge();
		model.addAttribute("storeJudge", storeJudge);
		model.addAttribute("member_id",session.getAttribute("member_no"));
		model.addAttribute("storeId",venID);
		return "neal/insertStoreJudge";
	}
	
	
//美食討論區:存檔文章
	@PostMapping("/insertStoreJudge/{venID}")
	public String saveStoreJudge(StoreJudge storeJudge ,
			RedirectAttributes ra,
			BindingResult result,
			HttpSession session
			) {	
		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile placeImage = storeJudge.getPlaceImage();
		try {
			InputStream is = placeImage.getInputStream();
			name = placeImage.getOriginalFilename();
			blob =  SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			storeJudge.setPicture(blob);
			storeJudge.setMimeType(mimeType);
		} catch (Exception e) {
				e.printStackTrace();
		}
		
		storeJudgeValidator.validate(storeJudge, result);
		
		if(result.hasErrors()) {
			List<ObjectError> list =result.getAllErrors();
			for(ObjectError error : list) {
				System.out.println("有錯誤:"+error);
			}
			
			return "neal/insertStoreJudge";
		}	
		Integer memberNo =(Integer)session.getAttribute("member_no");	
		storeJudge.setMember_id(memberNo);
		storeJudge.setPopularity(0);
		storeJudge.setCreatdate(new Timestamp(System.currentTimeMillis()));
		storeJudge.setDelete_boolean(0);
		storeJudge.setDeletedate(new Timestamp(System.currentTimeMillis()));
		storeJudgeService.save(storeJudge);
		
		String ext = SystemUtils.getExtFilename(name);
		//將上傳的檔案移到指定的資料夾
		try {
			File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
			if(!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder,"MemberImage_"+storeJudge.getStoreJudgeId()+ext);
			placeImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: "+e.getMessage());
		}	
//	新增或修改成功，要用response.sendRedirect(newURL)通知瀏覽器對newURL:新網址，發出請求
		return "redirect:/queryStoreJudge";
	}
	
	@GetMapping("/queryStoreJudge")
	public String sendQueryStoreJudge() {	
		return "neal/queryStoreJudge";
	}
	
	@GetMapping("/queryPsnStoreJudge")
	public String sendQueryPsnStoreJudge(Model m) {
		if(m.getAttribute("member_name")==null) {
			return "redirect:/member/login";
		}
		return "neal/queryPsnStoreJudge";
	}
	
}
