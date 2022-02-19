package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="type")
public class typebean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	int v_id;
	String c_type;
	
	
	public typebean() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getV_id() {
		return v_id;
	}


	public void setV_id(int v_id) {
		this.v_id = v_id;
	}


	public String getC_type() {
		return c_type;
	}


	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	
	
	

}	