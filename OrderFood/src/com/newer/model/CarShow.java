package com.newer.model;

import java.util.Collection;

public class CarShow {
	
	@Override
	public String toString() {
		return "CarShow [user_id=" + user_id + ", car_id=" + car_id + ", car_type=" + car_type + ", food_id=" + food_id
				+ ", count=" + count + ", money=" + money + ", food_name=" + food_name + ", food_price=" + food_price
				+ ", total=" + total + "]";
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}


	private int user_id;
	private int car_id;
	private String car_type;
	private int food_id;
	private int count;
	private double money;
	private String food_name;
	private double food_price;
	private double total;
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
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
		this.money=count*this.getFood_price();
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public double getFood_price() {
		return food_price;
	}
	public void setFood_price(double food_price) {
		this.food_price = food_price;
	}
	
	
	

}
