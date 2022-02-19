package com.infotran.springboot.peter.validate;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.infotran.springboot.peter.model.Vendor;

@Component
public class VendorValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Vendor.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Vendor vendor = (Vendor) target;
		ValidationUtils.rejectIfEmpty(errors, "venName", "vendor.venName.notempty", "名稱不能為空白");
		ValidationUtils.rejectIfEmpty(errors, "venType", "vendor.venType.notempty", "名稱不能為空白");
		ValidationUtils.rejectIfEmpty(errors, "venRes", "vendor.venRes.notempty", "名稱不能為空白");
		ValidationUtils.rejectIfEmpty(errors, "venPosition", "vendor.venPosition.notempty", "名稱不能為空白");
		ValidationUtils.rejectIfEmpty(errors, "venValue", "vendor.venValue.notempty", "名稱不能為空白");
		ValidationUtils.rejectIfEmpty(errors, "venIntro", "vendor.venIntro.notempty", "名稱不能為空白");	
	}

	
}
