package com.infotran.springboot.roy.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "r_member")
public class MemberBean {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		public Integer r_m_no;
		public String r_m_name;
		public String r_m_phone;
		public String r_m_sex;
		
		public String r_m_id;
		public String r_m_password;
		@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
		public Date r_m_birthday;
		@Column(name = "r_m_rights",insertable = false)
		public String r_m_rights;
		@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
		@Column(name = "r_m_createdate",insertable = false,updatable = false)
		public Date r_m_createdate;

		public MemberBean() {
		}

		public MemberBean(String r_m_id, String r_m_password) {
			this.r_m_id = r_m_id;
			this.r_m_password = r_m_password;
		}
		
		public MemberBean(Integer r_m_no, String r_m_name, String r_m_phone, String r_m_sex, String r_m_id,
				String r_m_password, Date r_m_birthday, String r_m_rights) {
			this.r_m_no = r_m_no;
			this.r_m_name = r_m_name;
			this.r_m_phone = r_m_phone;
			this.r_m_sex = r_m_sex;
			this.r_m_id = r_m_id;
			this.r_m_password = r_m_password;
			this.r_m_birthday = r_m_birthday;
			this.r_m_rights = r_m_rights;
		}

		public MemberBean(Integer r_m_no, String r_m_name, String r_m_phone, String r_m_sex,
				String r_m_id, String r_m_password, Date r_m_birthday, String r_m_rights, Date r_m_createdate) {
			this.r_m_no = r_m_no;
			this.r_m_name = r_m_name;
			this.r_m_phone = r_m_phone;
			this.r_m_sex = r_m_sex;
			this.r_m_id = r_m_id;
			this.r_m_password = r_m_password;
			this.r_m_birthday = r_m_birthday;
			this.r_m_rights = r_m_rights;
			this.r_m_createdate = r_m_createdate;
		}

		public String getR_m_phone() {
			return r_m_phone;
		}

		public void setR_m_phone(String r_m_phone) {
			this.r_m_phone = r_m_phone;
		}

		public String getR_m_sex() {
			return r_m_sex;
		}

		public void setR_m_sex(String r_m_sex) {
			this.r_m_sex = r_m_sex;
		}

		public Date getR_m_createdate() {
			return r_m_createdate;
		}

		public void setR_m_createdate(Date r_m_createdate) {
			this.r_m_createdate = r_m_createdate;
		}

		public void setR_m_no(Integer r_m_no) {
			this.r_m_no = r_m_no;
		}

		public String getR_m_rights() {
			return r_m_rights;
		}

		public void setR_m_rights(String r_m_rights) {
			this.r_m_rights = r_m_rights;
		}

		public int getR_m_no() {
			return r_m_no;
		}

		public void setR_m_no(int r_m_no) {
			this.r_m_no = r_m_no;
		}

		public String getR_m_name() {
			return r_m_name;
		}

		public void setR_m_name(String r_m_name) {
			this.r_m_name = r_m_name;
		}

		public String getR_m_id() {
			return r_m_id;
		}

		public void setR_m_id(String r_m_id) {
			this.r_m_id = r_m_id;
		}

		public String getR_m_password() {
			return r_m_password;
		}

		public void setR_m_password(String r_m_password) {
			this.r_m_password = r_m_password;
		}

		public Date getR_m_birthday() {
			return r_m_birthday;
		}

		public void setR_m_birthday(Date r_m_birthday) {
			this.r_m_birthday = r_m_birthday;
		}

		@Override
		public String toString() {
			StringBuilder builder = new StringBuilder();
			builder.append("MemberBean [r_m_no=");
			builder.append(r_m_no);
			builder.append(", r_m_name=");
			builder.append(r_m_name);
			builder.append(", r_m_phone=");
			builder.append(r_m_phone);
			builder.append(", r_m_sex=");
			builder.append(r_m_sex);
			builder.append(", r_m_id=");
			builder.append(r_m_id);
			builder.append(", r_m_password=");
			builder.append(r_m_password);
			builder.append(", r_m_birthday=");
			builder.append(r_m_birthday);
			builder.append(", r_m_rights=");
			builder.append(r_m_rights);
			builder.append(", r_m_createdate=");
			builder.append(r_m_createdate);
			builder.append("]");
			return builder.toString();
		}

		
		

	
}
