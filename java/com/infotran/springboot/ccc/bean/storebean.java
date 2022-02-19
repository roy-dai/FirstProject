package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="voucher")
public class storebean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int c_v_uniformnumbers;
	String c_name;
	int c_c_price;
	int c_sellerID;
	String c_image;
	
	public storebean() {
		super();
	}
	
	
	public int getC_v_uniformnumbers() {
		return c_v_uniformnumbers;
	}



	public void setC_v_uniformnumbers(int c_v_uniformnumbers) {
		this.c_v_uniformnumbers = c_v_uniformnumbers;
	}



	public String getC_name() {
		return c_name;
	}



	public void setC_name(String c_name) {
		this.c_name = c_name;
	}



	public int getC_c_price() {
		return c_c_price;
	}



	public void setC_c_price(int c_c_price) {
		this.c_c_price = c_c_price;
	}



	public int getC_sellerID() {
		return c_sellerID;
	}



	public void setC_sellerID(int c_sellerID) {
		this.c_sellerID = c_sellerID;
	}



	public String getC_image() {
		return c_image;
	}



	public void setC_image(String c_image) {
		this.c_image = c_image;
	}






}	