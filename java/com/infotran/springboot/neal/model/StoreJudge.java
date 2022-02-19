package com.infotran.springboot.neal.model;

import java.io.InputStream;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.ManyToAny;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.infotran.springboot.neal.utils.SystemUtils;

@Entity
@Table(name="StoreJudge_Spring")
public class StoreJudge {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long 	storeJudgeId;
	Integer 	storeId;
//	Integer 	tId;	//typeId
	String	title;
	String 	titleText;
	long 	popularity;
	long 	member_id;
	String 	mimeType;
	
//@JsonIgnore 意思不要轉為Json格式
	@JsonIgnore
	Clob comment;
	
	@JsonIgnore
	Blob	picture;
	
	@Transient				//短暫 臨時，反義詞Persistence: 永續儲存
	String	pictureString;
	
	@Transient
	MultipartFile placeImage;
	
	Integer delete_boolean;
	
//Many對照本類別，One對照反之
	@ManyToOne
	@JoinColumn(name = "typeId_0716")
	RestaurantType type;
	
	public StoreJudge() {

	}

	@JsonFormat(pattern = "yyyy-MM-dd_HH:mm:ss", timezone = "GMT+8")
	Timestamp creatdate;		// yyyy-MM-dd HH:mm:ss
	
	@JsonFormat(pattern = "yyyy-MM-dd_HH:mm:ss", timezone = "GMT+8")
	Timestamp deletedate;		// yyyy-MM-dd HH:mm:ss
	

	public StoreJudge(Integer storeId, String title, String titleText, long popularity, long member_id,
			Timestamp creatdate, Blob blob , Clob clob , String mimeType) {
		super();
		this.storeId = storeId;
//		this.tId = typeId;
		this.title = title;
		this.titleText = titleText;
		this.popularity = popularity;
		this.member_id = member_id;
		this.creatdate = creatdate;
		this.picture = blob;
		this.comment = clob;
		this.mimeType = mimeType;
	}
	
	public Integer getStoreId() {
		return storeId;
	}

	public void setStoreId(Integer storeId) {
		this.storeId = storeId;
	}

	public long getStoreJudgeId() {
		return storeJudgeId;
	}

	public void setStoreJudgeId(long storeJudgeId) {
		this.storeJudgeId = storeJudgeId;
	}

//	public Integer getTypeId() {
//		return tId;
//	}
//
//	public void setTypeId(Integer typeId) {
//		this.tId = typeId;
//	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleText() {
		return titleText;
	}

	public void setTitleText(String titleText) {
		this.titleText = titleText;
	}

	public long getPopularity() {
		return popularity;
	}

	public void setPopularity(long popularity) {
		this.popularity = popularity;
	}

	public long getMember_id() {
		return member_id;
	}

	public void setMember_id(long member_id) {
		this.member_id = member_id;
	}

	public Clob getComment() {
		return comment;
	}

	public void setComment(Clob comment) {
		this.comment = comment;
	}

	public Blob getPicture() {
		return picture;
	}

	public void setPicture(Blob picture) {
		this.picture = picture;
	}

	public Integer getDelete_boolean() {
		return delete_boolean;
	}

	public void setDelete_boolean(Integer delete_boolean) {
		this.delete_boolean = delete_boolean;
	}

	public Timestamp getCreatdate() {
		return creatdate;
	}

	public void setCreatdate(Timestamp creatdate) {
		this.creatdate = creatdate;
	}

	public Timestamp getDeletedate() {
		return deletedate;
	}

	public void setDeletedate(Timestamp deletedate) {
		this.deletedate = deletedate;
	}

	public String getPictureString() {
		return SystemUtils.blobToDataProtocol(mimeType, picture);
	}

	public void setPictureString(String pictureString) {
		this.pictureString = pictureString;
	}

	public String getMineType() {
		return mimeType;
	}

	public void setMineType(String mimeType) {
		this.mimeType = mimeType;
	}

	public MultipartFile getPlaceImage() {
		return placeImage;
	}

	public void setPlaceImage(MultipartFile placeImage) {
		this.placeImage = placeImage;
	}

	public String getMimeType() {
		return mimeType;
	}

	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

//	public Integer gettId() {
//		return tId;
//	}
//
//	public void settId(Integer tId) {
//		this.tId = tId;
//	}

	public RestaurantType getType() {
		return type;
	}

	public void setType(RestaurantType type) {
		this.type = type;
	}
	
}
