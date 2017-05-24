package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.newer.model.Food;
import com.newer.util.DBUtil;

public class FoodDAO {
	  private Connection conn;
	  private PreparedStatement pst;
	  private ResultSet rs;
           //查询所有的商品
	     public List<Food> findAll(){
	    	 List<Food> list = new ArrayList<Food>();
	    	 String sql="select * from foods where food_type='0'";
	    	 conn = DBUtil.getConnection();
	    	 try {
			 pst = conn.prepareStatement(sql);
			 rs = pst.executeQuery();
			 while(rs.next()){
				 Food food = new Food();
				 food.setFid(rs.getInt("food_id"));
				 food.setFname(rs.getString("food_name"));
				 food.setFprice(rs.getDouble("food_price"));
				 food.setFpic(rs.getString("pic"));
				 food.setFdescript(rs.getString("descript"));				
				 list.add(food);
			 }
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeAll(rs, pst, conn);
			}
	    	 return list;
	     }
	     //根据商品ID查找商品
	     public Food fianById(int fid){
	    	 Food food =null;
	    	 String sql="select *　from foods where food_id=?";
	    	 conn = DBUtil.getConnection();
	    	 try {
				pst=conn.prepareStatement(sql);
				pst.setInt(1, fid);
				rs = pst.executeQuery();
				if(rs.next()){
					food = new Food();
					food.setFid(rs.getInt("food_id"));
					food.setFname(rs.getString("food_name"));
					food.setFprice(rs.getDouble("food_price"));
					food.setFpic(rs.getString("pic"));
				    food.setFdescript(rs.getString("descript"));					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeAll(rs, pst, conn);
			}
	    	 
	    	 return food;
	     }
}
