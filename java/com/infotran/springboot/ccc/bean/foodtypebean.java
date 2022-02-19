package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="foodtype")
public class foodtypebean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	int foodtype;
	String foodtypename;

	
	
	
	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public int getFoodtype() {
		return foodtype;
	}




	public void setFoodtype(int foodtype) {
		this.foodtype = foodtype;
	}




	public String getFoodtypename() {
		return foodtypename;
	}




	public void setFoodtypename(String foodtypename) {
		this.foodtypename = foodtypename;
	}




	public foodtypebean() {
		super();
	}


	
	

}	