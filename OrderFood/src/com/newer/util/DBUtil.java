package com.newer.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBUtil {
     private static String driver="oracle.jdbc.OracleDriver";
     private static String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
     private static String username="shoppingtest";
     private static String password="123456";
     static{
    	 try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     }
     public static Connection getConnection(){
    	 Connection conn = null;
    	 try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	 return conn;
     }
     public static void closeAll(ResultSet rs,Statement stmt, Connection conn){
    	 try{
    	 if(rs!=null){
				rs.close();
			}
    	 if(stmt != null){
    		 stmt.close();
    	 }
    	 if(conn != null){
    		 conn.close();
    	 }
    	 }catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
			}
    	 }
}
