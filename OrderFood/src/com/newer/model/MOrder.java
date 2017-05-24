package com.newer.model;

import java.sql.Date;

public class MOrder {
         @Override
	public String toString() {
		return "MOrder [order_id=" + order_id + ", user_id=" + user_id + ", car_id=" + car_id + ", order_name="
				+ order_name + ", order_address=" + order_address + ", order_mobile=" + order_mobile + ", paytype="
				+ paytype + ", postscript=" + postscript + ", order_time=" + order_time + ", payed=" + payed
				+ ", order_type=" + order_type + "]";
	}
		public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public String getOrder_mobile() {
		return order_mobile;
	}
	public void setOrder_mobile(String order_mobile) {
		this.order_mobile = order_mobile;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public String getPostscript() {
		return postscript;
	}
	public void setPostscript(String postscript) {
		this.postscript = postscript;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public String getPayed() {
		return payed;
	}
	public void setPayed(String payed) {
		this.payed = payed;
	}
	public String getOrder_type() {
		return order_type;
	}
	public void setOrder_type(String order_type) {
		this.order_type = order_type;
	}
		private int order_id;
         private int user_id;
         private int car_id;
         private String order_name;
         private String order_address;
         private String order_mobile;
         private String paytype;
         private String postscript;
         private Date order_time;
         private String payed;
         private String order_type;
		
         
}
