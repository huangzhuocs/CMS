package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.newer.model.UserMessage;
import com.newer.util.DBUtil;

public class UserMessageDAO {
	 private Connection conn;
	 private PreparedStatement pst;
	 private ResultSet rs;
	 /*
	  * 根据UID查询用户详细信息
	  */
	 public UserMessage findById(int id){
		  UserMessage um = null;
		  String sql ="select * from usermessage where user_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if(rs.next()){
				um = new UserMessage();				
				um.setName(rs.getString("name"));
				um.setAge(rs.getInt("age"));
				um.setSex(rs.getString("sex"));
				um.setAddress(rs.getString("address"));
				um.setMobile(rs.getString("mobile"));
				um.setEmail(rs.getString("email"));
				um.setLikefood(rs.getString("likefood"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(rs, pst, conn);
		}
		  return um;
	 }
	 /*
	  * 添加用户信息 
	  */
	 public boolean insertUserMessage(UserMessage um){
		 boolean flag = false;
		 String sql ="insert into usermessage values(?,?,?,?,?,?,?,?)";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1,um.getUser().getUid());
			pst.setString(2, um.getName());
			pst.setInt(3, um.getAge());
			pst.setString(4, um.getSex());
			pst.setString(5, um.getAddress());
			pst.setString(6, um.getMobile());
			pst.setString(7, um.getEmail());
			pst.setString(8, um.getLikefood());
		    int i = pst.executeUpdate();
		    if(i>0){
		    	flag=true;
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(null, pst, conn);
		}
		 return flag;
	 }
	 //修改用户信息
	 public boolean updateById(UserMessage um){
		 boolean flag = false;
		 String sql ="update usermessage set name=?,age=?,sex=?,address=?,mobile=?,email=?,likefood=? where user_id=?";
		  conn = DBUtil.getConnection();
		  try {
			pst = conn.prepareStatement(sql);			
			pst.setString(1, um.getName());
			pst.setInt(2, um.getAge());
			pst.setString(3, um.getSex());
			pst.setString(4, um.getAddress());
			pst.setString(5, um.getMobile());
			pst.setString(6, um.getEmail());
			pst.setString(7, um.getLikefood());
			pst.setInt(8,um.getUser().getUid());
		    int i = pst.executeUpdate();
		    if(i>0){
		    	flag=true;
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
