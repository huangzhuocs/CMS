package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.newer.model.CarShow;
import com.newer.model.User;
import com.newer.util.DBUtil;

public class UserDAO {
	 private Connection conn;
	 private PreparedStatement pst;
	 private ResultSet rs;
        /*
         * 用户表添加用户信息
         */
	public boolean insertUser(User user){
		boolean flag = false;
		String sql = "insert into users values(seq_user_id.nextval,0,?,?)";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUname());
			pst.setString(2, user.getUpwd());
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
	/*
	 * 用户登录
	 */ 
	public User findUser(String userName,String userPwd){
		User u = null;
		String sql = "select * from users where user_name=? and password=?";
		conn =DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, userName);
			pst.setString(2, userPwd);
			rs = pst.executeQuery();
			if(rs.next()){
				u = new User();
				u.setUid(rs.getInt("user_id"));
				u.setUtype(rs.getInt("type"));
				u.setUname(rs.getString("user_name"));
				u.setUpwd(rs.getString("password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(rs, pst, conn);
			}
		return u;
	}
	//通过ID修改密码
	 public boolean updateById(User user){
		 boolean flag = false;
		 String sql = "update users set password=? where user_id=?";
			conn = DBUtil.getConnection();
			try {
				pst = conn.prepareStatement(sql);
				pst.setString(1, user.getUpwd());
				pst.setInt(2, user.getUid());
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
	 //判断用户名是否重复
	 public User findUserName(String userName){
			User u = null;
			String sql = "select * from users where user_name=?";
			conn =DBUtil.getConnection();
			try {
				pst = conn.prepareStatement(sql);
				pst.setString(1, userName);				
				rs = pst.executeQuery();
				if(rs.next()){
					u = new User();
					u.setUid(rs.getInt("user_id"));
					u.setUtype(rs.getInt("type"));
					u.setUname(rs.getString("user_name"));
					u.setUpwd(rs.getString("password"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeAll(rs, pst, conn);
				}
			return u;
		}
	 /*
		 * 查询用户未生成订单的购物车物品
		 */
		public List<CarShow> SelectCarUnOrder(int uid){
			List<CarShow> list=new ArrayList<CarShow>();
			conn=DBUtil.getConnection();
			String sql="select ci.user_id,ci.car_id,ci.car_type,ci.food_id,ci.count,ci.money,f.food_name,f.food_price from (select c.user_id,c.car_id,c.car_type,i.food_id,i.count,i.money  from car_items i join cars c on c.car_id=i.car_id where c.car_type=0 and c.user_id=?) ci join foods f on ci.food_id=f.food_id";
			try {
				pst=conn.prepareStatement(sql);
				pst.setInt(1, uid);
				rs=pst.executeQuery();
				while(rs.next()){
					CarShow carShow=new CarShow();
					carShow.setCar_id(rs.getInt("car_id"));
					carShow.setCar_type(rs.getString("car_type"));
					carShow.setFood_price(rs.getDouble("food_price"));
					carShow.setCount(rs.getInt("count"));
					carShow.setFood_id(rs.getInt("food_id"));
					carShow.setFood_name(rs.getString("food_name"));
					
					carShow.setUser_id(rs.getInt("user_id"));
					list.add(carShow);
					//测试
					//System.out.println("UserDaocarShow测试："+carShow.toString());
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				DBUtil.closeAll(rs, pst, conn);
			}
			
			
			
			return list;
			
		}
}
