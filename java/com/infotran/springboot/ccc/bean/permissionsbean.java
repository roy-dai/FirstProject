package com.infotran.springboot.ccc.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


		@Entity
		@Table(name="permissions")
		public class permissionsbean {
			@Id
			@GeneratedValue(strategy = GenerationType.IDENTITY)
			int id;
			int member_no;
			String type;
			
			public permissionsbean() {
				super();
			}

			
			public int getId() {
				return id;
			}
			public void setId(int id) {
				this.id = id;
			}
			public int getMember_no() {
				return member_no;
			}
			public void setMember_no(int member_no) {
				this.member_no = member_no;
			}
			public String getType() {
				return type;
			}
			public void setType(String type) {
				this.type = type;
			}

	

}
