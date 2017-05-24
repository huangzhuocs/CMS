package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.newer.model.Cars;
import com.newer.model.Item;
import com.newer.model.Order;
import com.newer.model.User;
import com.newer.util.DBUtil;

public class OrderDAO {
	 private Connection conn;
	  private PreparedStatement pst;
	  private ResultSet rs;
	  //购物车添加数据
	  public boolean insertCarItem(String name,String address,String mobile,String paytype,String postscript,int oid){
			boolean flag = false;
			String sql = "update orders set order_name=?,order_address=?,order_mobile=?,paytype=?,postscript=?,payed=1 where order_id=? and order_type='0'";
			conn = DBUtil.getConnection();
			try {
				pst = conn.prepareStatement(sql);							
				pst.setString(1,name);
				pst.setString(2,address);
				pst.setString(3,mobile );
				pst.setString(4,paytype );
				pst.setString(5,postscript);
				pst.setInt(6, oid);
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
	  //查询已完成订单
	  public List<Order> findCompleteOrder(int uid){
		  List<Order> list = new ArrayList<Order>();
		  String sql = "select * from orders where payed=1 and user_id=? and order_type='0'";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, uid);
			rs = pst.executeQuery();
			while(rs.next()){
				Cars c = new Cars();
				User u = new User();
				Order o = new Order();
				o.setOrder_id(rs.getInt("order_id"));
				u.setUid(rs.getInt("user_id"));
				o.setCar(c);
				c.setCar_id(rs.getInt("car_id"));
				o.setUser(u);
				o.setOrder_name(rs.getString("order_name"));
				o.setOrder_address(rs.getString("order_address"));
				o.setOrder_mobile(rs.getString("order_mobile"));
				o.setPaytype(rs.getString("paytype"));
				o.setPostscript(rs.getString("postscript"));
				o.setOrder_time(rs.getDate("order_time"));
				o.setPayed(rs.getString("payed"));
				list.add(o);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}	
		  return list;
	  }
	  //查询未完成订单
	  public List<Order> findNoCompleteOrder(int uid){
		  List<Order> list = new ArrayList<Order>();
		  String sql = "select * from orders where payed=0 and user_id=? and order_type='0'";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, uid);
			rs = pst.executeQuery();
			while(rs.next()){
				Cars c = new Cars();
				User u = new User();
				Order o = new Order();
				o.setOrder_id(rs.getInt("order_id"));
				u.setUid(rs.getInt("user_id"));
				o.setCar(c);
				c.setCar_id(rs.getInt("car_id"));
				o.setUser(u);
				o.setOrder_name(rs.getString("order_name"));
				o.setOrder_address(rs.getString("order_address"));
				o.setOrder_mobile(rs.getString("order_mobile"));
				o.setPaytype(rs.getString("paytype"));
				o.setPostscript(rs.getString("postscript"));
				o.setOrder_time(rs.getDate("order_time"));
				o.setPayed(rs.getString("payed"));			
				list.add(o);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}	
		  return list;
	  }
	  //修改订单的order_type值
	  public boolean updateOrderType(int oid){
		  boolean flag = false;
		  String sql = "update orders set order_type='1' where order_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst=conn.prepareStatement(sql);		   
		    pst.setInt(1, oid);
		    int i = pst.executeUpdate();
		    if(i>0){
		    	flag= true;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}	
		 
		  return flag;
	  }
	  //去结账
	  public List<Item> findAllByOrder(int cid){
		  List<Item> list = new ArrayList<Item>();		  		  		  
		  String sql=" select * from car_items i inner join foods f on i.food_id=f.food_id where i.car_id=?";
		  conn = DBUtil.getConnection();	
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			rs = pst.executeQuery();
			while(rs.next()){				
			  Item i = new Item();	
			  i.setFood_id(rs.getInt("food_id"));
			  i.setFood_name(rs.getString("food_name"));
			  i.setFood_price(rs.getDouble("food_price"));
			  i.setCount(rs.getInt("count"));	
			   double totle =+ i.getSum();
			   i.setTotle(totle);
			  list.add(i);
			  //System.out.println(i);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(rs, pst, conn);
		}	
		    return list;
	  }
	  
	  public int findoid(int cid){
		  int oid = 0;
		  String sql = "select order_id from orders where car_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cid);
			rs = pst.executeQuery();
			if(rs.next()){
				oid = rs.getInt("order_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(rs, pst, conn);
		}	
		  return oid;
	  }
	  
	  
}
