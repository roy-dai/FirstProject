package com.infotran.springboot.wang.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="performance")
public class performancebean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	int c_sellerID;
	String name;
	String performance;
	String day;
	String time;
	String photo;
	String film;

	
	
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



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPerformance() {
		return performance;
	}



	public void setPerformance(String performance) {
		this.performance = performance;
	}









	public String getDay() {
		return day;
	}



	public void setDay(String day) {
		this.day = day;
	}



	public String getTime() {
		return time;
	}



	public void setTime(String time) {
		this.time = time;
	}



	public String getPhoto() {
		return photo;
	}



	public void setPhoto(String photo) {
		this.photo = photo;
	}



	public String getFilm() {
		return film;
	}



	public void setFilm(String film) {
		this.film = film;
	}



	public performancebean() {
		super();
	}


	
	
	

}	