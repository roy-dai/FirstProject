package com.infotran.springboot.neal.model;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Timestamp;
import java.util.Base64;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.catalina.connector.Response;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.infotran.springboot.neal.utils.SystemUtils;

@Entity
@Table(name="Message_Spring")
public class Message {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long msg_id;
	String  msg_title;
	String  msg_text;
	
	String shop_id;
	long member_id;
	long store_id;
	Integer msg_great_count;
	String mimeType;
	
	@JsonFormat(pattern = "yyyy-MM-dd_HH:mm:ss", timezone = "GMT+8")
	Timestamp creatdate;		// yyyy-MM-dd HH:mm:ss
	
	Integer delete_boolean;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	Timestamp deletedate;			// yyyy-MM-dd
	
	@JsonIgnore
	Clob  	comment;
	
	@JsonIgnore
	Blob  	picture;
	
	@Transient   // 短暫. 臨時    Persistence: 永續儲存
	String  pictureString;    // data:image/gif;base64,.....
	
	@Transient
	MultipartFile placeImage;
	
	public Message() {
		super();
	}

	public Message(String msg_title, String msg_text, String shop_id, long member_id, long store_id, Blob blob, Clob clob, String mimeType
//			,Integer msg_great_count, Timestamp creatdate, int delete_boolean, Timestamp deletedate
			) {
		super();
		this.msg_title = msg_title;
		this.msg_text = msg_text;
		this.shop_id = shop_id;
		this.member_id = member_id;
		this.store_id = store_id;
		this.picture = blob;
		this.comment = clob;
		this.mimeType=mimeType;
//		this.msg_great_count = msg_great_count;
//		this.creatdate = creatdate;
//		this.delete_boolean = delete_boolean;
//		this.deletedate = deletedate;
	}

	public String getMimeType() {
		return mimeType;
	}

	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

	public Long getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(Long msg_id) {
		this.msg_id = msg_id;
	}
	public String getMsg_title() {
		return msg_title;
	}
	public void setMsg_title(String msg_title) {
		this.msg_title = msg_title;
	}
	public String getMsg_text() {
		return msg_text;
	}
	public void setMsg_text(String msg_text) {
		this.msg_text = msg_text;
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public long getMember_id() {
		return member_id;
	}
	public void setMember_id(long member_id) {
		this.member_id = member_id;
	}
	public long getStore_id() {
		return store_id;
	}
	public void setStore_id(long store_id) {
		this.store_id = store_id;
	}
	public Integer getMsg_great_count() {
		return msg_great_count;
	}
	public void setMsg_great_count(Integer msg_great_count) {
		this.msg_great_count = msg_great_count;
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
		
//		StringBuffer result=new StringBuffer("data:"+mimeType+";base64,");
//		try (
//				InputStream is = picture.getBinaryStream();
//				ByteArrayOutputStream baos = new ByteArrayOutputStream();
//		){
//			int len = 0;
//			byte[] b = new byte[81920];
//			while((len = is.read(b))!=-1) {
//				baos.write(b,0,len);
//			}
//			
//			byte [] bytes = baos.toByteArray();		
//			Base64.Encoder be = Base64.getEncoder();
//			
//			byte[] ba = be.encode(bytes);
//			String tmp = new String(ba,"UTF-8");
//			System.out.println(tmp);
//			result.append(tmp);
//			
//			result.append(new String(be.encode(bytes)));
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return result.toString();
	}

	public void setPictureString(String pictureString) {
		this.pictureString = pictureString;
	}	

	public Integer getDelete_boolean() {
		return delete_boolean;
	}

	public void setDelete_boolean(Integer delete_boolean) {
		this.delete_boolean = delete_boolean;
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

	public MultipartFile getPlaceImage() {
		return placeImage;
	}

	public void setPlaceImage(MultipartFile placeImage) {
		this.placeImage = placeImage;
	}

	@Override
	public String toString() {
		
		StringBuilder builder = new StringBuilder();
		builder.append("Message [msg_id=");
		builder.append(msg_id);
		builder.append(", msg_title=");
		builder.append(msg_title);
		builder.append(", msg_text=");
		builder.append(msg_text);
		builder.append(", shop_id=");
		builder.append(shop_id);
		builder.append(", member_id=");
		builder.append(member_id);
		builder.append(", store_id=");
		builder.append(store_id);
		builder.append(", msg_great_count=");
		builder.append(msg_great_count);
		builder.append(", creatdate=");
		builder.append(creatdate);
		builder.append(", delete_boolean=");
		builder.append(delete_boolean);
		builder.append(", deletedate=");
		builder.append(deletedate);

		builder.append(", hashCode=]" + hashCode());
		return builder.toString();

	}


	
}
