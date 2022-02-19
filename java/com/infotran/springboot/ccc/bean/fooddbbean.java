package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="fooddb")
public class fooddbbean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	int foodtstallid;
	int foodtypenid;
	
	
	
	
	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public int getFoodtstallid() {
		return foodtstallid;
	}




	public void setFoodtstallid(int foodtstallid) {
		this.foodtstallid = foodtstallid;
	}




	public int getFoodtypenid() {
		return foodtypenid;
	}




	public void setFoodtypenid(int foodtypenid) {
		this.foodtypenid = foodtypenid;
	}





	
	
	
	public fooddbbean() {
		super();
	}


	
	

}	