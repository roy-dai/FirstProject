package com.infotran.springboot.roy.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.infotran.springboot.roy.model.MemberBean;
@Component
public class MemberValidator implements Validator {

//	可以檢查的物件放在這個方法
	@Override
	public boolean supports(Class<?> clazz) {
		return MemberBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		MemberBean memberBean = (MemberBean) target;
//		打錯報錯
		ValidationUtils.rejectIfEmpty(errors, "r_m_id","member.id.notempty","帳號不能是空白" );
		ValidationUtils.rejectIfEmpty(errors, "r_m_birthday","member.birthday.notempty","生日不能是空白" );
		ValidationUtils.rejectIfEmpty(errors, "r_m_rights","member.rights.notempty","權限不能是空白" );
		ValidationUtils.rejectIfEmpty(errors, "r_m_password","member.password.notempty","密碼不能是空白" );
		ValidationUtils.rejectIfEmpty(errors, "r_m_name","member.name.notempty","名稱不能是空白" );
//		打錯或空白報錯
//		ValidationUtils.rejectIfEmptyOrWhitespace(errors, null, null);
//		if(place.getName() == null) {
//			//...
//		}
	}

}
