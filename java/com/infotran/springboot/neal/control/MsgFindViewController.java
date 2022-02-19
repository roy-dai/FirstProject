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

import com.infotran.springboot.mike.bean.orderBean;
import com.infotran.springboot.mike.service.cartService;
import com.infotran.springboot.neal.model.Message;
import com.infotran.springboot.neal.model.StoreJudge;
import com.infotran.springboot.neal.service.MsgServiceImpl;
import com.infotran.springboot.neal.utils.SystemUtils;
import com.infotran.springboot.neal.validate.MessageValidator;

import ch.qos.logback.core.Context;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})

@Controller
public class MsgFindViewController {
	
	@Autowired
	MessageValidator messageValidator;
	
	@Autowired
	MsgServiceImpl msgService;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	cartService cartService;
	
	
//預設傳回物件的資料
	@ModelAttribute("message")
	public Message getPlace1(@RequestParam(value="msg_id", required = false ) Long msg_id) {
		
		System.out.println("------------------------------------------");
		Message message = null;
		if (msg_id != null) {
			message = msgService.findById(msg_id);
		} else {
			message = new Message();
		}
		System.out.println("In @ModelAttribute, message=" + message);
		return message;
	}
	
//新增訂餐評價網頁
	@GetMapping("/insertMessage/{key}")
	public String sendInsertMessage(Model model,HttpSession session,@PathVariable("key") Integer key) {	
//	Message message = new Message("This is default title", "This is default Text", shopId, memberNo, storeId);

		orderBean thisOrder = cartService.findOrderByOrderId(key);
		System.out.println("Mike in to insertMessage GetMapping");
		Integer memberNo =(Integer)session.getAttribute("member_no");
		Message message = new Message();
		model.addAttribute("message", message);		model.addAttribute("member_id",session.getAttribute("member_no"));
		model.addAttribute("store_id",thisOrder.getSeller_id());
		model.addAttribute("shop_id",thisOrder.getOrder_No());
		message.setShop_id(thisOrder.getOrder_No());
		message.setStore_id(thisOrder.getSeller_id());
		return "neal/insertMessage";
	}
	
//查詢維護訂餐評價
	@GetMapping("/modifyMessage/{msg_id}")	
	public String sendEditPage(
			@PathVariable Long msg_id, Model model
			){
		Message message = msgService.findById(msg_id);
		model.addAttribute("message",message);
		return "neal/editMessage";
	}
	
//更新維護訂餐評價
	@PostMapping("/modifyMessage/{msg_id}")	
	public String updateMessage(Message message,
			BindingResult result,
			RedirectAttributes ra,
			HttpSession session) {
		messageValidator.validate(message, result);
		
		if(result.hasErrors()) {
			
			List<ObjectError> list =result.getAllErrors();
			for(ObjectError error : list) {
				System.out.println("有錯誤:"+error);
			}
			return "neal/editMessage";
		}	
		
		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile placeImage = message.getPlaceImage();
		if (placeImage != null && placeImage.getSize() > 0) {
			try {
				InputStream is = placeImage.getInputStream();
				name = placeImage.getOriginalFilename();
				blob = SystemUtils.inputStreamToBlob(is);
				mimeType = context.getMimeType(name);
				message.setPicture(blob);
				message.setMimeType(mimeType);
				
				String ext = SystemUtils.getExtFilename(name);
				// 將上傳的檔案移到指定的資料夾, 目前註解此功能
				try {
					File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
					if (!imageFolder.exists())
						imageFolder.mkdirs();
					File file = new File(imageFolder, "MemberImage_" + message.getMsg_id() + ext);
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
		message.setMember_id(memberNo);
//		點讚先 mark 不更新
		message.setMsg_great_count(0);
		message.setCreatdate(new Timestamp(System.currentTimeMillis()));
//		刪除控制先 mark 不更新
		message.setDelete_boolean(0);
		message.setDeletedate(new Timestamp(System.currentTimeMillis()));
		msgService.update(message);
		ra.addFlashAttribute("successMessage", "訂單編號:"+message.getShop_id()+"修改成功");
		return "redirect:/queryMsg";
	}
	
//存檔訂餐評價網頁
	@PostMapping("/insertMessage/{key}")
	public String saveMessage(Message message ,
			RedirectAttributes ra,
			BindingResult result,
			HttpSession session
			) {	
		System.out.println("Mike in to insertMessage PostMapping");
		Blob blob = null;
		String mimeType = "";
		String name = "";
		MultipartFile placeImage = message.getPlaceImage();
		try {
			InputStream is = placeImage.getInputStream();
			name = placeImage.getOriginalFilename();
			blob =  SystemUtils.inputStreamToBlob(is);
			mimeType = context.getMimeType(name);
			message.setPicture(blob);
			message.setMimeType(mimeType);
		} catch (Exception e) {
				e.printStackTrace();
		}
		
		messageValidator.validate(message, result);
		
		if(result.hasErrors()) {
			List<ObjectError> list =result.getAllErrors();
			for(ObjectError error : list) {
				System.out.println("有錯誤:"+error);
			}
			
			return "neal/insertMessage";
		}	
		Integer memberNo =(Integer)session.getAttribute("member_no");
		message.setMember_id(memberNo);
		message.setMsg_great_count(0);
		message.setCreatdate(new Timestamp(System.currentTimeMillis()));
		message.setDelete_boolean(0);
		message.setDeletedate(new Timestamp(System.currentTimeMillis()));
		msgService.save(message);
		
		String ext = SystemUtils.getExtFilename(name);
		//將上傳的檔案移到指定的資料夾
		try {
			File imageFolder = new File(SystemUtils.PLACE_IMAGE_FOLDER);
			if(!imageFolder.exists())
				imageFolder.mkdirs();
			File file = new File(imageFolder,"MemberImage_"+message.getMsg_id()+ext);
			placeImage.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("檔案上傳發生異常: "+e.getMessage());
		}	
//		新增或修改成功，要用response.sendRedirect(newURL)通知瀏覽器對newURL:新網址，發出請求
		return "redirect:/queryMsg";
	}
}
