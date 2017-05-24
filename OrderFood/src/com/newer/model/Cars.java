package com.newer.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cars {
       private int car_id;
       private User user;
       private Date car_time;
       private Map<Integer,CarItem> items =new HashMap<Integer,CarItem>();
       private double total;
       private String car_type;
       
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getcar_time() {
		return car_time;
	}
	public void setcar_time(Date car_time) {
		this.car_time = car_time;
	}
	
	public Date getCar_time() {
		return car_time;
	}
	public void setCar_time(Date car_time) {
		this.car_time = car_time;
	}

	public Map<Integer, CarItem> getItems() {
		return items;
	}
	public void setItems(Map<Integer, CarItem> items) {
		this.items = items;
	}
	public double getTotal() {
		double temp = 0;
		Collection<CarItem> cc = items.values();
		for(CarItem item:cc){
			temp+=item.getSum();
		}
		total = temp;
		return total;		
	}
	public void setTotal(double total) {
		this.total = total;
	}
    public void addItem(Food food){
    	CarItem item = items.get(food.getFid());
    	if(item==null){
    		item = new CarItem();
    		item.setFood(food);    		
    		item.setNum(1);
    		items.put(food.getFid(),item);
    	}else{
    		int oldNum = item.getNum();
    		item.setNum(oldNum+1);
    	}
    }
}
