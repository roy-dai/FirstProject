package com.infotran.springboot.ccc.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="coke")
public class cokebean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String cookery;
	String type;
	
	
	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getCookery() {
		return cookery;
	}



	public void setCookery(String cookery) {
		this.cookery = cookery;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}







	public cokebean() {
		super();
	}


	
	
	

}	