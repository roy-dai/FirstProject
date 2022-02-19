package com.infotran.springboot.neal.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.infotran.springboot.neal.model.Message;

@Component
public class MessageValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {	
		return Message.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Message message = (Message) target;
		System.out.println(message);
		ValidationUtils.rejectIfEmpty(errors, "msg_title", "msg.title.notempty", "標題不可為空白(D.V)");
		ValidationUtils.rejectIfEmpty(errors, "msg_text", "msg.txet.notempty", "內容不可為空白(D.V)");
		ValidationUtils.rejectIfEmpty(errors, "shop_id", "msg.shopId.notempty", "訂單編號不可為空白(D.V)");
		ValidationUtils.rejectIfEmpty(errors, "member_id", "msg.memberId.notempty", "會員編號不可為空白(D.V)");
		ValidationUtils.rejectIfEmpty(errors, "store_id", "msg.storeId.notempty", "商家編號不可為空白(D.V)");		
		
//		if(!errors.hasFieldErrors("shop_id")){
//			try {
////				long d = long(message.get);
//			}catch(NumberFormatException e){
//				
//			}
//		}
	}
}
