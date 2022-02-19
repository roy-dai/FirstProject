package com.infotran.springboot.roy.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.infotran.springboot.roy.model.Mail;
import com.infotran.springboot.roy.model.MemberBean;
import com.infotran.springboot.roy.service.MemberService;
import com.infotran.springboot.roy.service.Mail.MailService;
@SessionAttributes(value = {"member_no","member_id","member_name","member_rights"})
@Controller
public class RoyViewController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	private MailService mailService;
	
	
//	到登入頁面
	@GetMapping("/member/login")
	public String login() {
		return "roy/login";
	}
//	到管理員中心頁面
	@GetMapping("/admin/center")
	public String adminCenter(Model m) {
		if(m.getAttribute("member_rights")==null) {
			return "redirect:/member/login";
		}if(!m.getAttribute("member_rights").equals("4")) {
			return "redirect:/";
		}
		return "roy/admin/center";
	}
//	到管理員圖表頁面
	@GetMapping("/admin/charts")
	public String admincharts() {
		System.out.println("頁面到charts");
		return "roy/admin/charts";
	}
//	到會員員中心
	@GetMapping("/member/index")
	public String memberCenter() {
		System.out.println("頁面到member/index");
		return "roy/member/index";
	}
	
	
	
	
	
//====================會員區==============================	
//	帳號註冊
	@GetMapping("/r_singup")
	public String singUp(Model m){
//		MemberBean mb = new MemberBean();
//		丟空永續物件給前端form:form綁定
//		m.addAttribute("singupMember",mb);
		return "roy/singup";
	}

//=====admin=============================================================================

//	admin查看全部會員資料專區
	@GetMapping("/admin/member")
	public String admin() {
		return "roy/admin/viewMember";
	}

//	admin查詢全部會員資料(ajax)=================================================================================================
	@GetMapping("/r_showAll")
	public @ResponseBody Map<String,Object> showAll() {
		return memberService.allMember();
	}
//	admin看個人資料=================================================================================================
	@GetMapping("/r_members/{key}")
	public @ResponseBody MemberBean showMembers(@PathVariable Integer key) {
		MemberBean m = memberService.selectByno(key);
		return m;
	}
//	模糊查詢=================================================================================================
	@GetMapping(value="admin/queryselect" , produces = "application/Json;charset=UTF-8")
	public @ResponseBody Map<String, Object> queryByName(
			@RequestParam("selectV") String selectV
			,@RequestParam("selectionV") String selectionV
			){
		System.out.println("selectV="+selectV);
		System.out.println("selectionV="+selectionV);
		return memberService.queryselect(selectV,selectionV);
	}
//	==========登出==========================================================================
	@GetMapping("/Logout")
	public String logout(SessionStatus status) {
		System.out.println("有到登出這邊");
		status.setComplete();
		return "redirect:/";
	}
//	忘記密碼跳轉頁面
	@GetMapping("/forgetPwd")
	public String forgetPwd() {
		System.out.println("跳轉到忘記密碼頁面");
		return "roy/forgetPwd";
	}

//	忘記密碼修改處理頁面
	@GetMapping("/forgetChangePwd/{mail}/{key}")
	public String sendMailForPwd(@PathVariable(name="mail") String r_m_id,
															@PathVariable String key,
															Model m,
															RedirectAttributes ra){
		System.out.println("key=>"+key);
		System.out.println("mail=>"+r_m_id);
		Mail result = memberService.checkmodifyMail(r_m_id, key);
		if(result!=null) {
			Date date = new Date();
			System.out.println(date);
			if(!date.after(result.getLastTime())) {
				m.addAttribute("mail",r_m_id);
				m.addAttribute("token",key);
				m.addAttribute("lastTime",result.getLastTime());
				return "roy/member/changPassword";
			}else {
				System.out.println("超過時間ㄌ");
				ra.addFlashAttribute("lateMsg","超過時間了,請重新操作");
				return "redirect:/forgetPwd";
			}
			
		}else {
			System.out.println("找不到值");
			ra.addFlashAttribute("lateMsg","請先填寫郵件申請");
			return "redirect:/forgetPwd";
		}
		
	}
//	忘記密碼修改送出
	@PostMapping("/changPassword")
	public String changePassword(@RequestParam String mail,
								 @RequestParam String password,
								 @RequestParam String token,
								 @RequestParam String lastTime,
								 RedirectAttributes ra) throws ParseException{
		SimpleDateFormat sdf =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date lastDate = sdf.parse(lastTime);
		
		Date date = new Date();
		if(!date.after(lastDate)) {
			System.out.println("時間內");
			MemberBean mb = memberService.queryById(mail);
			MemberBean result = new MemberBean(mb.getR_m_no(), mb.getR_m_name(), mb.getR_m_phone(), mb.getR_m_sex(), mb.getR_m_id(), password, mb.getR_m_birthday(), mb.getR_m_rights());
			memberService.update(result);
			System.out.println("修改成功");
			ra.addFlashAttribute("changePwdSuccess","修改密碼成功，請重新登入");
			return "redirect:/";
		}else {
			ra.addFlashAttribute("lateMsg","超過時間了,請重新操作");
			System.out.println("超過時間ㄌ");
			return "redirect:/forgetPwd";
		}
		
	}
//	忘記密碼處理頁面
	@PostMapping("/sendMailForPwd")
	public String sendMailForPwd(@RequestParam(name="mail")String mail,
															Mail mailBean,
															RedirectAttributes ra)
															throws ParseException, MessagingException {
		
		if(!memberService.selectById(mail)) {
			ra.addFlashAttribute("fail","請輸入正確帳號");
			return "redirect:/forgetPwd";
		}
		String uuid = UUID.randomUUID().toString();//產生token
		long time = 15*60*1000;//15分鐘後
		Date date = new Date();
		Date befordate = new Date(date.getTime()+time);//得到15分鐘後時間
		mailBean.setLastTime(befordate);
		mailBean.setToken(uuid);
		mailBean.setMail(mail);
		memberService.mailToken(mailBean);
		mailService.sendPwdEmail(mail, "http://localhost:/nightMarket3/forgetChangePwd/"+mail+"/"+uuid, "夜總匯忘記密碼信件");
		ra.addFlashAttribute("changePwdMsg","已發送連結至您的信箱，請在15分鐘內更改完畢");
		return "redirect:/";
		
	}
//	開通帳號處理頁面
	@GetMapping("/openAccount/{key}")
	public String openAccount(@PathVariable String key){
		System.out.println("key=>"+key);
		return "/";
	}
	
	
}
