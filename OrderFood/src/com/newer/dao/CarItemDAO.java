package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.newer.model.Food;
import com.newer.util.DBUtil;

public class CarItemDAO {
	  private Connection conn;
	  private PreparedStatement pst;
	  private ResultSet rs;
	  //购物车添加数据	
	  public boolean insertCarItem(int cid,Food food){
		    boolean flag = false;
		     String sql1 = "select * from car_items where food_id="+food.getFid()+"and car_id="+cid;
		      conn = DBUtil.getConnection();		  
		    try {
				pst=conn.prepareStatement(sql1);
				rs = pst.executeQuery();
				if(rs.next()){					
					  String sql2 ="update car_items set count=?,money=? where food_id=?";
				      pst=conn.prepareStatement(sql2);
				      pst.setInt(1, rs.getInt("count")+1);
				      pst.setDouble(2, (rs.getInt("count")+1)*food.getFprice());
				      pst.setInt(3, food.getFid());
				      int i = pst.executeUpdate();
				      if(i>0){
				    	  flag = true;
				      }			     
				    }else{
				     String sql = "insert into car_items values("+cid+",?,?,?)";
				     pst = conn.prepareStatement(sql);
				     pst.setInt(1, food.getFid());
					 pst.setInt(2, 1);
					 pst.setDouble(3,food.getFprice() );
					 int i = pst.executeUpdate();				
						if(i>0){
							flag = true;
						}
					}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}finally{
				DBUtil.closeAll(null, pst, conn);
			}				
			return flag;
		}
	  //修改购物车项数量
	  public boolean updateNum(int fid,int num){
		  boolean flag = false;
		  FoodDAO dao = new FoodDAO();
		  Food food = dao.fianById(fid);
		  String sql="update car_items set count=?,money=? where food_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst  = conn.prepareStatement(sql);
		    pst.setInt(1,num);
		    pst.setDouble(2,num*food.getFprice());
		    pst.setInt(3, food.getFid());
		    int i = pst.executeUpdate();
		    if(i>0){
		    	 flag = true;
		      }			     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}		
		  return flag;
	  }
	  //删除购物车选项
	  public boolean delete(int fid){
		  boolean flag = false;
		  String sql="delete car_items where food_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst  = conn.prepareStatement(sql);
		    pst.setInt(1,fid);    
		    int i = pst.executeUpdate();
		    if(i>0){
		    	 flag = true;
		      }			     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}		
		  return flag;
	  }
	  //清空购物车
	  public boolean drop(int cid){
		  boolean flag = false;
		  String sql="delete car_items where car_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst  = conn.prepareStatement(sql);
		    pst.setInt(1,cid);    
		    int i = pst.executeUpdate();
		    if(i>0){
		    	 flag = true;
		      }			     
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}		
		  return flag;
	  }
}
