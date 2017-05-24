package com.newer.model;

public class CarItem {
        private Food food;
        private Cars car;
        private int num;
        private double sum;
		public Food getFood() {
			return food;
		}
		public void setFood(Food food) {
			this.food = food;
		}
		public Cars getCar() {
			return car;
		}
		public void setCar(Cars car) {
			this.car = car;
		}
		public int getNum() {
			return num;
		}
		public void setNum(int num) {
			this.num = num;
			this.sum = num*this.food.getFprice();
		}
		public double getSum() {
			return sum;
		}
		public void setSum(double sum) {
			this.sum = sum;
		}  
}
