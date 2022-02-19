package com.infotran.springboot.roy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.infotran.springboot.roy.model.MemberBean;
import com.infotran.springboot.roy.service.MemberService;
//import com.infotran.springboot.roy.service.Mail.MailService;
import com.infotran.springboot.roy.validate.MemberValidator;

@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})
//取值方式model.getAttributes

@Controller
public class RoyController {
	@Autowired
	MemberService memberService;
	@Autowired
	MemberValidator membervalidator;
//	@Autowired
//	private MailService mailService;

////	=======會員區==================================================================================
//	@GetMapping("/test")
//	public String test() {
//		return "roy/test";
//	}
	
	
//	管理者修改會員資料
		@PostMapping(value = "r_edit/{key}")
		public String adminEdit(@ModelAttribute("adminViewMember") MemberBean mb,
																	BindingResult result,
																	RedirectAttributes ra,
																	Model model) {
			membervalidator.validate(mb, result);
			if(result.hasErrors()) {
			List<ObjectError> list = result.getAllErrors();
			for(Object error:list) {
				System.out.println("管理者修改會員時發生錯誤==>"+error);
			}
			System.out.println(result.getErrorCount());
			return "roy/admin/editMember";
			}
			try {
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			memberService.update(mb);
			System.out.println("修改成功");
			ra.addFlashAttribute("updatemessage","修改成功");
			return "redirect:/admin/center";
			}
	
//	會員修改會員資料=================================================================================================
	@PostMapping("/r_afterLogin")
	public String EditMember(@ModelAttribute("member") MemberBean mb,
														BindingResult result,
														RedirectAttributes ra,
														Model model) {
		System.out.println("修改會員送出方法");
		membervalidator.validate(mb, result);
		if(result.hasErrors()) {
			model.addAttribute("error", "validate");
//			System.out.println("vaildate裡面有東西");
//			List<ObjectError> list = result.getAllErrors();
//			for(ObjectError error:list) {
//				System.out.println("有錯誤="+error);
//			}
//			System.out.println(result.getErrorCount());
//			return "roy/afterLogin";
			return "roy/member/modifyMember";
//			return "redirect:/r_afterLogin/";
		}
		System.out.println("vaildate裡面沒東西，繼續執行");
		try {
			memberService.update(mb);
		} catch (Exception e) {
			System.out.println("主建重複");
			ra.addFlashAttribute("idFail","帳號重複");
//			return "roy/member/modifyMember";
			return "redirect:/r_afterLogin/";
		}
		ra.addFlashAttribute("success","修改成功");
		model.addAttribute("member_no", mb.getR_m_no());
		model.addAttribute("member_name", mb.getR_m_name());
		model.addAttribute("member_rights", mb.getR_m_rights());
		model.addAttribute("member_id", mb.getR_m_id());
		return "redirect:/r_afterLogin/";
	}

//	form確認登入是否成功=================================================================================================
	@PostMapping("/R_login")
	public String login(@RequestParam(name="userid")String id,
						@RequestParam(name="password")String pwd,
		 Model md,RedirectAttributes ra) {
		Map<String,Object>map = new HashMap<>();
		MemberBean check = memberService.checkLogin(id,pwd);
		if (check==null) { // 登入失敗
			System.out.println("登入失敗");
			ra.addFlashAttribute("fail", "登入失敗，帳號或密碼錯誤");
			return "redirect:/member/login";
		} else if (check.getR_m_rights().equals("1")) { // 一般會員
			md.addAttribute("member_no", check.getR_m_no());
			md.addAttribute("member_name", check.getR_m_name());
			md.addAttribute("member_rights", check.getR_m_rights());
			md.addAttribute("member_id", check.getR_m_id());
			ra.addFlashAttribute("loginSuccess",check.getR_m_name() +" 歡迎光臨");
			map.put("success", check.getR_m_name());
			map.put("success_no",check.getR_m_no());
			map.put("success_rights",check.getR_m_rights());
			System.out.println("一般會員");
//			String uuid = UUID.randomUUID().toString();
//			mailService.sendSignupEmail("B10227035@gmail.com", "http://localhost:8080/nightMarket3/openAccount/"+uuid, "夜總會認證Mail，請點選網址開通");
		} else if (check.getR_m_rights().equals("4")) { // 管理員
			md.addAttribute("member_id", check.getR_m_id());
			md.addAttribute("member_no", check.getR_m_no());
			md.addAttribute("member_name", check.getR_m_name());
			md.addAttribute("member_rights", check.getR_m_rights());
			ra.addFlashAttribute("loginSuccess",check.getR_m_name() +" 管理員您好");
			map.put("admin", check.getR_m_name());
			map.put("admin_no",check.getR_m_no());
			map.put("admin_rights",check.getR_m_rights());
			System.out.println("管理員");
		}else if (check.getR_m_rights().equals("3")) { // 攤販
			md.addAttribute("member_id", check.getR_m_id());
			md.addAttribute("member_no", check.getR_m_no());
			md.addAttribute("member_name", check.getR_m_name());
			md.addAttribute("member_rights", check.getR_m_rights());
			ra.addFlashAttribute("loginSuccess",check.getR_m_name() +" 老闆您好，祝您賺大錢!!");
			map.put("admin", check.getR_m_name());
			map.put("admin_no",check.getR_m_no());
			map.put("admin_rights",check.getR_m_rights());
			System.out.println("攤販");
		}else if (check.getR_m_rights().equals("2")) { // 停用
			ra.addFlashAttribute("loginSuccess",check.getR_m_name() +" 會員已被停權，請與管理者聯繫");
			map.put("admin", check.getR_m_name());
			map.put("admin_no",check.getR_m_no());
			map.put("admin_rights",check.getR_m_rights());
			System.out.println("停權");
		}
		return "redirect:/";
	}
	// 當新增會員資料時, 檢查帳號是否可用=================================================================================================
	@PostMapping(value = "/r_checkId", produces = { "application/json" })
	public @ResponseBody Map<String, String> checkMemberId(@RequestParam("r_m_id") String memberId) {
		System.out.println("檢查帳好controller");
		Map<String, String> map = new HashMap<>();
		String id = memberService.checkId(memberId);
		System.out.println("id=>" + id);
		map.put("id", id);
		return map;
	}
	// 刪除單筆會員資料=================================================================================================
	@DeleteMapping("/r_members/{key}")
	public @ResponseBody Map<String, String> delete(@PathVariable(required = true) Integer key) {
		Map<String, String> map = new HashMap<>();
		System.out.println("刪除的controller");
		System.out.println(key);
		try {
			MemberBean result = memberService.selectByno(key);
			memberService.deleteMember(result);
			map.put("success", "刪除成功");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("fail", "刪除失敗");
			System.out.println("刪除失敗");
		}
		return map;
	}
	// 新增會員資料=================================================================================================
	@PostMapping(value = "/r_insert", consumes = "application/json")
	public @ResponseBody Map<String, String> save(@RequestBody MemberBean m) {
		System.out.println("有進來新增controller");
		Map<String, String> map = new HashMap<>();
		int n = 0;
		try {
			n = memberService.insertId(m);
			System.out.println(n);
			if (n == 1) {
				System.out.println(n);
				map.put("success", "新增成功");
				System.out.println("新增成功");
//				String uuid = UUID.randomUUID().toString();
//				mailService.sendSignupEmail(m.getR_m_email(), "http://localhost:8080/nightMarket3/openAccount/"+uuid, "夜總會認證Mail，請點選網址開通");
			} else if (n == 0) {
				System.out.println(n);
				map.put("fail", "帳號重複");
				System.out.println("帳號重複");
			}
		} catch (Exception e) {
			map.put("fail", e.getMessage());
		}
		return map;
	}
//	進到會員修改(
	@GetMapping("r_afterLogin")
	public String modifyMember( Model m,RedirectAttributes ra,MemberBean mb,BindingResult br) {
		if(m.getAttribute("member_no")==null) {
			ra.addFlashAttribute("remarks", "請先登入");
			return "redirect:/member/login";
		}
		MemberBean result = memberService.selectByno((int) m.getAttribute("member_no"));  
		m.addAttribute("member",result);
		return "roy/member/modifyMember";
	}
//	admin修改資料頁面
	@GetMapping("r_edit/{key}")
	public String editMember(@PathVariable Integer key, Model m){
		MemberBean result = memberService.selectByno(key);
		m.addAttribute("adminViewMember",result);
		return "roy/admin/editMember";
	}
	
	
	
	
	
//	form:form表單用
	@ModelAttribute("r_sex")
	public Map<String , String>getSex(){
		Map<String,String> map = new HashMap<>();
		map.put("男","男");
		map.put("女","女");
		return map;
	}
//	這個也是
	@ModelAttribute("r_rights")
	public Map<String , String>r_rights(){
		Map<String,String> map = new HashMap<>();
		map.put("1","一般會員");
		map.put("2","停用");
		map.put("3","攤販");
		map.put("4","管理員");
		return map;
	}

	
}



