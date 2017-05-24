package com.newer.model;

public class Item {
           private int food_id;
           private String food_name;
           private int count;
           private double food_price;
           private double sum;
           private double totle;
		public int getFood_id() {
			return food_id;
		}
		public void setFood_id(int food_id) {
			this.food_id = food_id;
		}
		public String getFood_name() {
			return food_name;
		}
		public void setFood_name(String food_name) {
			this.food_name = food_name;
		}
		public int getCount() {
			return count;
		}
		public void setCount(int count) {
			this.count = count;
			this.sum =count*this.food_price;
			//this.totle +=sum;
		}
		public double getFood_price() {
			return food_price;
		}
		public void setFood_price(double food_price) {
			this.food_price = food_price;
		}
		public double getSum() {
			return sum;
		}
		public void setSum(double sum) {
			this.sum = sum;			
		}
		public double getTotle() {
			return totle;
		}
		public void setTotle(double totle) {
			this.totle = totle;
		}
		@Override
		public String toString() {
			return "Item [food_id=" + food_id + ", food_name=" + food_name
					+ ", count=" + count + ", food_price=" + food_price
					+ ", sum=" + sum + ", totle=" + totle + "]";
		}
           
		
}
