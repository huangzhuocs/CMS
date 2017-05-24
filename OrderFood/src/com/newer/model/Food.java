package com.newer.model;

public class Food {
          private int fid;
          private String fname;
          private double fprice;
          private String fpic;
          private String fdescript;
          private String food_type;
          public String getFood_type() {
      		return food_type;
      	}
      	public void setFood_type(String food_type) {
      		this.food_type = food_type;
      	}
		@Override
		public String toString() {
			return "Food [fid=" + fid + ", fname=" + fname + ", fprice="
					+ fprice + ", fpic=" + fpic + ", fdescript=" + fdescript
					+ ", food_type=" + food_type + "]";
		}
		public int getFid() {
			return fid;
		}
		public void setFid(int fid) {
			this.fid = fid;
		}
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		public double getFprice() {
			return fprice;
		}
		public void setFprice(double fprice) {
			this.fprice = fprice;
		}
		public String getFpic() {
			return fpic;
		}
		public void setFpic(String fpic) {
			this.fpic = fpic;
		}
		public String getFdescript() {
			return fdescript;
		}
		public void setFdescript(String fdescript) {
			this.fdescript = fdescript;
		}		          
}
