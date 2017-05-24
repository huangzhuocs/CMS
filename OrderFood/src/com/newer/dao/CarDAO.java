package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.newer.model.Cars;
import com.newer.model.User;
import com.newer.util.DBUtil;

public class CarDAO {
	private Connection conn;
	  private PreparedStatement pst;
	  private ResultSet rs;
	  //购物车添加数据,并且得到cid的值
	  public int insertCars(int uid){
			int cid = 0;
			String sql = "insert into cars (car_id,user_id) values(seq_car_id.nextval,?)";
						//insert into cars (car_id,user_id) values(seq_car_id.nextval,1)
			conn = DBUtil.getConnection();
			try {
				pst = conn.prepareStatement(sql);
				pst.setInt(1, uid);				
				pst.executeUpdate();	
				
			  String sql1 = "select seq_car_id.currval from dual";
			   pst=conn.prepareStatement(sql1);
			   rs = pst.executeQuery();
			   if(rs.next()){
				   cid = rs.getInt("currval");
			   }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeAll(null, pst, conn);
			}
			//System.out.println(cid);
			return cid;
		}
	  public int submit(int cid,int uid){
		  int oid = 0;
		  String sql = "update cars set car_type=? where car_id = ?";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, 1);
			pst.setInt(2, cid);
			pst.executeUpdate();
			
			String sql1 = "insert into orders(order_id,user_id,car_id) values(seq_order_id.nextval,?,?)";
			pst=conn.prepareStatement(sql1);
			pst.setInt(1, uid);
			pst.setInt(2, cid);
			pst.executeUpdate();
			
		    String sql2 = "select seq_order_id.currval from dual";
		    pst=conn.prepareStatement(sql2);
			rs = pst.executeQuery();
			if(rs.next()){
			   oid = rs.getInt("currval");
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}				
		return oid;
	  }
	  /*
		  * 根据传入的oldCar_id删除car_items表中此oldCar_id下此用户下所有项以及cars表中的项
		  */
		 public boolean deleteCarItemByCar_Id(int oldCar_id){
			 boolean flag=false;
			 conn=DBUtil.getConnection();
			 String sql="delete car_items where car_id=?";
			 String sql1="delete cars where car_id=?";
			 try {
				pst=conn.prepareStatement(sql);
				pst.setInt(1, oldCar_id);
				int rows=pst.executeUpdate();
				if(rows>0){
					pst=conn.prepareStatement(sql1);
					pst.setInt(1, oldCar_id);
					int r=pst.executeUpdate();
					if(r>0){
						//System.out.println("删除car成功！");
						flag=true;
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.closeAll(null, pst, conn);
			}
			 
			 
			 
			 return flag;
		 }
}
