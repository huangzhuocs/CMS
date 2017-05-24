package com.newer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.newer.model.CarShow;
import com.newer.model.Food;
import com.newer.model.FoodPojo;
import com.newer.model.MOrder;
import com.newer.model.ReturnSelect;
import com.newer.model.ShowUserMessage;
import com.newer.model.User;
import com.newer.model.UserMessage;
import com.newer.web.StringUtil;
import com.newer.util.DBUtil;
//import com.sun.org.apache.bcel.internal.generic.Select;

/*
 * 本包所提供方法仅供系统管理员使用
 */
public class ManagerDao {
	// 获得连接对象
	private Connection conn;
	// 获得命令对象
	private PreparedStatement pst;
	// 获得结果集对象
	private ResultSet rs;

	/*
	 * 管理员添加菜品的方法
	 */
	public int insertFood(Food food) {
		int food_id=0;
		conn = DBUtil.getConnection();
		String sql = "insert into foods (food_id,food_name,food_price,pic,descript) values(seq_food_id.nextval,?,?,?,?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, food.getFname());
			pst.setDouble(2, food.getFprice());
			pst.setString(3, food.getFpic());
			pst.setString(4, food.getFdescript());

			// System.out.println(food.toString());测试通过，sql语句中descript写成了description

			int rows = pst.executeUpdate();
			if (rows == 1) {
				sql="select seq_food_id.currval from dual";
				pst=conn.prepareStatement(sql);
				rs=pst.executeQuery();
				if(rs.next()){
					//获得新添加的记录的ffood_id的值
					food_id=rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(null, pst, conn);
		}
		return food_id;
	}
	
	/*
	 * 按food_id修改图片信息的方法
	 */
	public boolean updatePicture(Food food){
		boolean result=false;
		String sql="update foods set pic=? where food_id=?";
		
		try {
			conn=DBUtil.getConnection();
			pst=conn.prepareStatement(sql);
			
			pst.setString(1, food.getFpic());
			pst.setInt(2, food.getFid());
			
			int rows=pst.executeUpdate();
			if(rows>0){
				result=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeAll(rs, pst, conn);
		}
		
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	/*
	 * 餐品列表查看所有菜品（不包扩下架的）
	 
	public List<Food> ManageSelectAllFood() {
		List<Food> foods = new ArrayList<Food>();
		conn = DBUtil.getconnction();
		String sql = "select * from foods  where food_type=0 order by food_id";
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				Food food = new Food();
				food.setFood_id(rs.getInt("food_id"));
				food.setFood_name(rs.getString("food_name"));
				food.setFood_price(rs.getDouble("food_price"));
				food.setPic(rs.getString("pic"));
				food.setDescript(rs.getString("descript"));
				food.setFood_type(rs.getString("food_type"));
				foods.add(food);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.clossAll(rs, pst, conn);
		}

		return foods;

	}*/

	/*
	 * 高级查询方法(不包括下架餐品)
	 */
	public ReturnSelect advSelect(FoodPojo foodPojo, int pageNo, int pageSize) {

		List<Food> foods = new ArrayList<Food>();
		int totalRows = 0;
		ReturnSelect returnSelect = new ReturnSelect();
		conn = DBUtil.getConnection();
		String sql="where food_type=0";
		
		
		String sql2 = "select count(*) from foods where 1=1 and food_type=0";

		//编号
		if (foodPojo.getSeFood_id() != 0) {
			sql += "and food_id=" + foodPojo.getSeFood_id();
			sql2 += "and food_id=" + foodPojo.getSeFood_id();
		}
		//菜名
		if (StringUtil.isEmpty(foodPojo.getSeFood_name())) {
			sql += " and food_name like '%" + foodPojo.getSeFood_name() + "%'";
			sql2 += " and food_name like '%" + foodPojo.getSeFood_name() + "%'";
		}
		//描述
		if (StringUtil.isEmpty(foodPojo.getSeDescript())) {
			sql += " and descript like '%" + foodPojo.getSeDescript() + "%'";
			sql2 += " and descript like '%" + foodPojo.getSeDescript() + "%'";
		}
		//价格
		if (foodPojo.getSeFood_price1() > 0 && foodPojo.getSeFood_price2() == 0) {
			sql += "and food_price=" + foodPojo.getSeFood_price2();
			sql2 += "and food_price=" + foodPojo.getSeFood_price2();
		}
		if (foodPojo.getSeFood_price1() == 0 && foodPojo.getSeFood_price2() > 0) {
			sql += " and food_price=" + foodPojo.getSeFood_price2();
			sql2 += " and food_price=" + foodPojo.getSeFood_price2();
		}
		if (foodPojo.getSeFood_price1() > 0 && foodPojo.getSeFood_price2() > 0
				&& foodPojo.getSeFood_price1() <= foodPojo.getSeFood_price2()) {
			sql += " and food_price between " + foodPojo.getSeFood_price1() + " and " + foodPojo.getSeFood_price2();
			sql2 += " and food_price between " + foodPojo.getSeFood_price1() + " and " + foodPojo.getSeFood_price2();
		}
		if (foodPojo.getSeFood_price1() > 0 && foodPojo.getSeFood_price2() > 0
				&& foodPojo.getSeFood_price1() >= foodPojo.getSeFood_price2()) {
			sql += " and food_price between " + foodPojo.getSeFood_price2() + " and " + foodPojo.getSeFood_price1();
			sql2 += " and food_price between " + foodPojo.getSeFood_price2() + " and " + foodPojo.getSeFood_price1();
		}
		
		String sql1 = "select * from(select row_number() over(order by food_id ) rn ,p.* from foods p "+sql+" ) where rn between ? and ?";
		int startNo = (pageNo - 1) * pageSize + 1;// 起始记录数
		int endNo = pageNo * pageSize;// 结束记录数
		try {
			pst = conn.prepareStatement(sql1);
			pst.setInt(1, startNo);
			pst.setInt(2, endNo);
			rs = pst.executeQuery();
			while (rs.next()) {
				Food food = new Food();
				food.setFid(rs.getInt("food_id"));
				food.setFname(rs.getString("food_name"));
				food.setFprice(rs.getDouble("food_price"));
				food.setFpic(rs.getString("pic"));
				food.setFdescript(rs.getString("descript"));
				food.setFood_type(rs.getString("food_type"));
				foods.add(food);
				returnSelect.setFoods(foods);	
			}
			
			pst = conn.prepareStatement(sql2);
			rs = pst.executeQuery();
			if (rs.next()) {
				totalRows = rs.getInt("count(*)");
				returnSelect.setTotalRows(totalRows);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeAll(rs, pst, conn);
		}

		return returnSelect;

	}
	/*
	 * 按菜品ID查看菜品信息
	 */
	public Food selectFoodById(int food_id){
		Food food=null;
		String sql="select * from foods where food_id=?";
		conn=DBUtil.getConnection();
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, food_id);
			rs=pst.executeQuery();
			if (rs.next()) {
				food=new Food();
				food.setFid(rs.getInt("food_id"));
				food.setFname(rs.getString("food_name"));
				food.setFprice(rs.getDouble("food_price"));
				food.setFpic(rs.getString("pic"));
				food.setFdescript(rs.getString("descript"));
				food.setFood_type(rs.getString("food_type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.closeAll(rs, pst, conn);
		}

		return food;
	}
	
	/*
	 * 按菜品ID把商品下架、上架（把商品type属性改为1下架操作，改为0为上架操作）
	 */
	public boolean downFoodById(Food food,String food_type){
		boolean flag=false;
		String type=food_type;
		if ("0".equals(type)) {
			type="1";
		}else {
			type="0";
		}
		String sql="update foods set food_type=? where food_id=?";
		conn=DBUtil.getConnection();
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, type);
			pst.setInt(2, food.getFid());
			rs=pst.executeQuery();
			
			int rows=pst.executeUpdate();
			if (rows==1) {
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.closeAll(rs, pst, conn);
		}

		return flag;
	}
	
	/*
	 * 添加新管理员
	 */
	public boolean addmanager(String user_name,String password){
		boolean flag=false;
		conn=DBUtil.getConnection();
		String sql="insert into users (user_id,type,user_name,password) values(seq_user_id.nextval,'1',?,?)";
		try {
			pst=conn.prepareStatement(sql);
			pst.setString(1, user_name);
			pst.setString(2, password);
			
			int rows = pst.executeUpdate();
			if(rows==1){
				flag=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}DBUtil.closeAll(null, pst, conn);
		return flag;
	}
	
	/*
	 * 查看用户信息1
	 */
	public List<ShowUserMessage> selectUserMessages(){
		List<ShowUserMessage> list=new ArrayList<ShowUserMessage>();
		ShowUserMessage user=null;
		conn=DBUtil.getConnection();
		String sql="select u.user_id user_id,u.user_name user_name,u.password password,m.name name,m.age age,m.sex sex,m.address address,m.mobile mobile,m.email email,m.likefood likefood from users u join usermessage m on u.user_id=m.user_id  where type=0";
		try {
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			while (rs.next()) {
				user=new ShowUserMessage();
				user.setUid(rs.getInt("user_id"));
				user.setUname(rs.getString("user_name"));
				user.setUpwd(rs.getString("password"));
				user.setAddress(rs.getString("address"));
				user.setAge(rs.getInt("age"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setLikefood(rs.getString("likefood"));
				user.setName(rs.getString("name"));
				user.setSex(rs.getString("sex"));
				list.add(user);
				//System.out.println(user.toString());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.closeAll(rs, pst, conn);
		}
		
		
		return list;
	}
	
	/*
	 * 查看已完成订单payed=1 order_type=0
	 */
	public List<MOrder> SelectOrders(){
		List<MOrder> orders=new ArrayList<MOrder>();
		conn=DBUtil.getConnection();
		String sql="select * from orders where payed=1 and order_type=0";
		try {
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			MOrder order=null;
			while (rs.next()) {
				order=new MOrder();
				order.setOrder_id(rs.getInt("order_id"));
				order.setCar_id(rs.getInt("car_id"));
				order.setOrder_mobile(rs.getString("order_mobile"));
				order.setOrder_name(rs.getString("order_name"));
				order.setOrder_time(rs.getDate("order_time"));
				order.setPostscript(rs.getString("postscript"));
				order.setOrder_address(rs.getString("order_address"));
				orders.add(order);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orders;
	}
	/*
	 * 查詢被用戶刪除的訂單payed=1 order_type=1
	 */
	public List<MOrder> SeleedOrders(){
		List<MOrder> orders=new ArrayList<MOrder>();
		conn=DBUtil.getConnection();
		String sql="select * from orders where payed=1 and order_type=1";
		try {
			pst=conn.prepareStatement(sql);
			rs=pst.executeQuery();
			MOrder order=null;
			while (rs.next()) {
				order=new MOrder();
				order.setOrder_id(rs.getInt("order_id"));
				order.setCar_id(rs.getInt("car_id"));
				order.setOrder_mobile(rs.getString("order_mobile"));
				order.setOrder_name(rs.getString("order_name"));
				order.setOrder_time(rs.getDate("order_time"));
				order.setPostscript(rs.getString("postscript"));
				order.setOrder_address(rs.getString("order_address"));
				orders.add(order);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orders;
	}
	
	/*
	 * 根據訂單編號查訂單詳情
	 */
	public List<CarShow> SelectOrderDetail(int car_id){
		List<CarShow> list=new ArrayList<CarShow>();
		conn=DBUtil.getConnection();
		String sql="select ci.user_id,ci.car_id,ci.car_type,ci.food_id,ci.count,ci.money,f.food_name,f.food_price from (select c.user_id,c.car_id,c.car_type,i.food_id,i.count,i.money  from car_items i join cars c on c.car_id=i.car_id where c.car_id=? ) ci join foods f on ci.food_id=f.food_id";
		try {
			pst=conn.prepareStatement(sql);
			pst.setInt(1, car_id);
			rs=pst.executeQuery();
			double total=0;
			while(rs.next()){
				CarShow carShow=new CarShow();
				carShow.setCar_id(rs.getInt("car_id"));
				carShow.setCar_type(rs.getString("car_type"));
				carShow.setFood_price(rs.getDouble("food_price"));
				carShow.setCount(rs.getInt("count"));
				carShow.setFood_id(rs.getInt("food_id"));
				carShow.setFood_name(rs.getString("food_name"));
				
				carShow.setUser_id(rs.getInt("user_id"));
				total+=carShow.getMoney();
				carShow.setTotal(total);
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
