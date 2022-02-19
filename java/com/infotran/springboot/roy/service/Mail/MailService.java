package com.infotran.springboot.roy.service.Mail;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;



@Service
public class MailService {
	@Autowired
	JavaMailSender javaMailSender;
	
//	開通帳號用的Mail
	public void sendSignupEmail(String to,String body,String topic) {
		System.out.println("This sending email");
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setFrom("java-master@gmail.com");
		simpleMailMessage.setTo(to);
		simpleMailMessage.setText("歡迎註冊夜總匯，請在15分鐘內點下列連結前往開通會員帳號\r\n"+body);
		simpleMailMessage.setSubject(topic);
		javaMailSender.send(simpleMailMessage);
		System.out.println("sent email....");
		
	}
//	忘記密碼用的Mail
	public void sendPwdEmail(String to,String body,String topic) throws MessagingException {
		MimeMessage mimeMessage = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
		System.out.println("This sending email");
		try {
			helper.setFrom("java-master@gmail.com","夜總匯");
		} catch (UnsupportedEncodingException | MessagingException e) {
			System.out.println("錯誤");
		}
		helper.setTo(to);
		helper.setSubject(topic);
		helper.setText("<html><body><img src='https://scontent.ftpe4-1.fna.fbcdn.net/v/t1.6435-9/217448070_5668776906530526_4858072413274325118_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=yTloilMcWwMAX-EOwno&_nc_ht=scontent.ftpe4-1.fna&oh=e7026a5fe090f1306bfd845f42a101ba&oe=614BDAC5'><h2>夜總匯修改密碼郵件</h2><p>請在15分鐘內點下列連結前往修改會員密碼</p><br><a style='font-size: 2em;' href='"+body+"'>點此修改密碼</a></div></body></html>",true);
		System.out.println("sent email....");
		javaMailSender.send(mimeMessage);
		
	}
}
