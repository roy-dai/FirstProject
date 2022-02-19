package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="foodstall")
public class foodstallbean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	int c_sellerID;
	String foodstall;
	String map;
	int address;
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getC_sellerID() {
		return c_sellerID;
	}


	public void setC_sellerID(int c_sellerID) {
		this.c_sellerID = c_sellerID;
	}


	public String getFoodstall() {
		return foodstall;
	}


	public void setFoodstall(String foodstall) {
		this.foodstall = foodstall;
	}


	public String getMap() {
		return map;
	}


	public void setMap(String map) {
		this.map = map;
	}


	public int getAddress() {
		return address;
	}


	public void setAddress(int address) {
		this.address = address;
	}


	public foodstallbean() {
		super();
	}


	
	

}	