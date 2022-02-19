package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="advertising")
public class advertisingbean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	int advertising;
	int Introduction_id;

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getAdvertising() {
		return advertising;
	}


	public void setAdvertising(int advertising) {
		this.advertising = advertising;
	}


	public int getIntroduction_id() {
		return Introduction_id;
	}


	public void setIntroduction_id(int introduction_id) {
		Introduction_id = introduction_id;
	}


	
	
	public advertisingbean() {
		super();
	}


}	