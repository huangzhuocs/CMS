package com.newer.model;

public class FoodPojo {
	@Override
	public String toString() {
		return "FoodPojo [seFood_id=" + seFood_id + ", seFood_name=" + seFood_name + ", seFood_price1=" + seFood_price1
				+ ", seFood_price2=" + seFood_price2 + ", seDescript=" + seDescript + "]";
	}
	private int seFood_id;
	private String seFood_name;
	private double seFood_price1;
	private double seFood_price2;
	private String seDescript;
	
	
	
	public int getSeFood_id() {
		return seFood_id;
	}
	public void setSeFood_id(int seFood_id) {
		this.seFood_id = seFood_id;
	}
	public String getSeFood_name() {
		return seFood_name;
	}
	public void setSeFood_name(String seFood_name) {
		this.seFood_name = seFood_name;
	}
	public double getSeFood_price1() {
		return seFood_price1;
	}
	public void setSeFood_price1(double seFood_price1) {
		this.seFood_price1 = seFood_price1;
	}
	public double getSeFood_price2() {
		return seFood_price2;
	}
	public void setSeFood_price2(double seFood_price2) {
		this.seFood_price2 = seFood_price2;
	}
	public String getSeDescript() {
		return seDescript;
	}
	public void setSeDescript(String seDescript) {
		this.seDescript = seDescript;
	}
	
	
	
	
	
	

}
