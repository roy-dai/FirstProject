package com.infotran.springboot.peter.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.infotran.springboot.peter.utils.SystemUtils;

@Entity
@Table(name = "Ven11007")
public class Vendor {

	 @Id 
	 @Column(name = "VenID")
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private  Integer venID;
	 @Column(name = "VenName")
	 private String venName;
	 @Column(name = "member_no")
	 private Integer member_no;
	 @Column(name = "VenType")
	 private String venType;
	 @Column(name = "VenRes")
	 private String venRes;
	 @Column(name = "VenPosition")
	 private String venPosition;
	 @Column(name = "VenValue")
	 private Integer venValue;
	 @Column(name = "VenIntro")
	 private String venIntro;
	 @Column(name = "MimeType")
	 private String mimeType;
	 @Column(name = "VenStatus")
	 private String venStatus;
	 
	 @Column(name = "Picture")
	 @JsonIgnore
	 Blob picture;
	
	 @Transient
	 String pictureString;
	
	 @Transient
	 MultipartFile vendorImage;
	
	
	public String getMimeType() {
		return mimeType;
	}

	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}
	
	public String getPictureString() {
		return SystemUtils.blobToDataProtocol(mimeType, picture);
	}

	public void setPictureString(String pictureString) {
		this.pictureString = pictureString;
	}

	public MultipartFile getVendorImage() {
		return vendorImage;
	}

	public void setVendorImage(MultipartFile vendorImage) {
		this.vendorImage = vendorImage;
	}

	public Integer getVenID() {
		return venID;
	}

	public void setVenID(Integer venID) {
		this.venID = venID;
	}

	public String getVenName() {
		return venName;
	}
	
	public void setVenName(String venName) {
		this.venName = venName;
	}
	
	public Integer getMember_no() {
		return member_no;
	}

	public void setMember_no(Integer member_no) {
		this.member_no = member_no;
	}
	
	public String getVenType() {
		return venType;
	}
	
	public void setVenType(String venType) {
		this.venType = venType;
	}
	
	public String getVenRes() {
		return venRes;
	}

	public void setVenRes(String venRes) {
		this.venRes = venRes;
	}

	public String getVenPosition() {
		return venPosition;
	}
	
	public void setVenPosition(String venPosition) {
		this.venPosition = venPosition;
	}
	
	public Integer getVenValue() {
		return venValue;
	}
	
	public void setVenValue(Integer venValue) {
		this.venValue = venValue;
	}
	
	public String getVenIntro() {
		return venIntro;
	}
	
	public void setVenIntro(String venIntro) {
		this.venIntro = venIntro;
	}
	
	public Blob getPicture() {
		return picture;
	}

	public void setPicture(Blob picture) {
		this.picture = picture;
	}

	public String getVenStatus() {
		return venStatus;
	}

	public void setVenStatus(String venStatus) {
		this.venStatus = venStatus;
	}

	public Vendor() {
		super();
	}
	
	public Vendor( Integer member_no, String venName, String venType, String venRes, String venPosition, Integer venValue,
			String venIntro, String mimeType, Blob picture) {
		super();
		this.member_no = member_no;
		this.venName = venName;
		this.venType = venType;
		this.venRes = venRes;
		this.venPosition = venPosition;
		this.venValue = venValue;
		this.venIntro = venIntro;
		this.mimeType = mimeType;
		this.picture = picture;
	}
	
	public Vendor( Integer member_no, String venName, String venType, String venRes, String venPosition, Integer venValue,
			String venIntro, String mimeType, Blob picture, String venStatus) {
		super();
		this.member_no = member_no;
		this.venName = venName;
		this.venType = venType;
		this.venRes = venRes;
		this.venPosition = venPosition;
		this.venValue = venValue;
		this.venIntro = venIntro;
		this.mimeType = mimeType;
		this.picture = picture;
		this.venStatus = venStatus;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Vendor [venID=");
		builder.append(venID);
		builder.append(", venName=");
		builder.append(venName);
		builder.append(", member_no=");
		builder.append(member_no);
		builder.append(", venType=");
		builder.append(venType);
		builder.append(", venRes=");
		builder.append(venRes);
		builder.append(", venPosition=");
		builder.append(venPosition);
		builder.append(", venValue=");
		builder.append(venValue);
		builder.append(", venIntro=");
		builder.append(venIntro);
		builder.append(", mimeType=");
		builder.append(mimeType);
		builder.append(", picture=");
		builder.append(picture);
		builder.append(", pictureString=");
		builder.append(pictureString);
		builder.append(", vendorImage=");
		builder.append(vendorImage);
		builder.append("]");
		return builder.toString();
	}

}
