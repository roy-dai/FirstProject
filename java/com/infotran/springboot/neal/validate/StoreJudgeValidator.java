package com.infotran.springboot.neal.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.infotran.springboot.neal.model.Message;
import com.infotran.springboot.neal.model.StoreJudge;

@Component
public class StoreJudgeValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {	
		return StoreJudge.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		StoreJudge storeJudge = (StoreJudge) target;
		System.out.println(storeJudge);
		
//		ValidationUtils.rejectIfEmpty(errors, "msg_title", "msg.title.notempty", "標題不可為空白(D.V)");
//		ValidationUtils.rejectIfEmpty(errors, "msg_text", "msg.txet.notempty", "內容不可為空白(D.V)");
//		ValidationUtils.rejectIfEmpty(errors, "shop_id", "msg.shopId.notempty", "訂單編號不可為空白(D.V)");
//		ValidationUtils.rejectIfEmpty(errors, "member_id", "msg.memberId.notempty", "會員編號不可為空白(D.V)");
//		ValidationUtils.rejectIfEmpty(errors, "store_id", "msg.storeId.notempty", "商家編號不可為空白(D.V)");		
		
//		if(!errors.hasFieldErrors("shop_id")){
//			try {
////				long d = long(message.get);
//			}catch(NumberFormatException e){
//				
//			}
//		}
	}
}
