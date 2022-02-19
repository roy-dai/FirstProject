package com.infotran.springboot.mike.bean;

import java.text.SimpleDateFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ShoppingOrder")
public class orderBean {
	
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	int order_Id;//PK
	
	String order_No;//訂單編號(暫未定)
	int original_Cart_Id;//原始購物車內容編號(id) >> 有id就可以找品名/會員id
	int buyer;
	int qty;//最後確認的數量
	int total_Price;//總價?訂單金額
	String order_Date;//訂單成立日期
	String order_State;//訂單狀態(未付款/已付款)
	int v_id;//因為你會把購物車內容刪掉,所以你還是得創一個v_id呈現品名
	int seller_id;//賣家id
	
	
	public orderBean() {
		super();
	}


	public int getOrder_Id() {
		return order_Id;
	}


	public void setOrder_Id(int order_Id) {
		this.order_Id = order_Id;
	}


	public String getOrder_No() {
		return order_No;
	}


	public void setOrder_No(String order_No) {
		this.order_No = order_No;
	}


	public int getOriginal_Cart_Id() {
		return original_Cart_Id;
	}


	public void setOriginal_Cart_Id(int original_Cart_Id) {
		this.original_Cart_Id = original_Cart_Id;
	}


	public int getBuyer() {
		return buyer;
	}


	public void setBuyer(int buyer) {
		this.buyer = buyer;
	}


	public int getQty() {
		return qty;
	}


	public void setQty(int qty) {
		this.qty = qty;
	}


	public int getTotal_Price() {
		return total_Price;
	}


	public void setTotal_Price(int total_Price) {
		this.total_Price = total_Price;
	}


	public String getOrder_Date() {
		return order_Date;
	}


	public void setOrder_Date(String order_Date) {
		this.order_Date = order_Date;
	}


	public String getOrder_State() {
		return order_State;
	}


	public void setOrder_State(String order_State) {
		this.order_State = order_State;
	}


	public int getV_id() {
		return v_id;
	}


	public void setV_id(int v_id) {
		this.v_id = v_id;
	}


	public int getSeller_id() {
		return seller_id;
	}


	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("orderBean [order_Id=");
		builder.append(order_Id);
		builder.append(", order_No=");
		builder.append(order_No);
		builder.append(", original_Cart_Id=");
		builder.append(original_Cart_Id);
		builder.append(", buyer=");
		builder.append(buyer);
		builder.append(", qty=");
		builder.append(qty);
		builder.append(", total_Price=");
		builder.append(total_Price);
		builder.append(", order_Date=");
		builder.append(order_Date);
		builder.append(", order_State=");
		builder.append(order_State);
		builder.append(", v_id=");
		builder.append(v_id);
		builder.append(", seller_id=");
		builder.append(seller_id);
		builder.append("]");
		return builder.toString();
	}
	
	


}
