package com.infotran.springboot.mike.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


	
	
	@Entity
	@Table(name="Custom_Style")
	public class order_Style {

		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		int id;
		int cart_id;
		int custom_style;
		

		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}


		public int getCart_id() {
			return cart_id;
		}


		public void setCart_id(int cart_id) {
			this.cart_id = cart_id;
		}


		public int getCustom_style() {
			return custom_style;
		}


		public void setCustom_style(int custom_style) {
			this.custom_style = custom_style;
		}


		public order_Style() {
			super();
		}
		
}
