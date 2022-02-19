package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Introduction")
public class introductionbean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	int c_sellerID;
	String Introduction;
	String Storephotos;
	String photo;
	
	
	public String getPhoto() {
		return photo;
	}


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public introductionbean() {
		super();
	}


	public int getId() {
		return id;
	}


	public int getC_sellerID() {
		return c_sellerID;
	}


	public void setC_sellerID(int c_sellerID) {
		this.c_sellerID = c_sellerID;
	}


	public String getIntroduction() {
		return Introduction;
	}


	public void setIntroduction(String introduction) {
		Introduction = introduction;
	}


	public String getStorephotos() {
		return Storephotos;
	}


	public void setStorephotos(String storephotos) {
		Storephotos = storephotos;
	}


	public void setId(int id) {
		this.id = id;
	}


	
	
	

}	