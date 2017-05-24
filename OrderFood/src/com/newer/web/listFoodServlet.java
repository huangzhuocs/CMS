package com.newer.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.newer.dao.ManagerDao;
import com.newer.model.BackPageBean;
import com.newer.model.CarShow;
import com.newer.model.Food;
import com.newer.model.FoodPojo;
import com.newer.model.MOrder;
import com.newer.model.ReturnSelect;
import com.newer.model.ShowUserMessage;


@WebServlet(name="listFoodServlet",urlPatterns="/listFoodServlet")
public class listFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action=req.getParameter("action");
		ManagerDao dao=new ManagerDao();
		
		
		
		//查询、高级查询
		 if ("advSelect".equals(action)||"listfood".equals(action)) {
			int id=0;
			double price1=0;
			double price2=0;
			int pageNo=1;
			int pageSize=4; 
			String seFood_id=req.getParameter("seFood_id");
			String seFood_price1=req.getParameter("seFood_price1");
			String seFood_price2=req.getParameter("seFood_price2");
			String pno=req.getParameter("pageNo");
			String pSize=req.getParameter("pageSize");
			
			//System.out.println(seFood_id+","+seFood_price1+","+seFood_price2+","+pno+","+pSize);
			
			if (StringUtil.isEmpty(seFood_id)) {
				id=Integer.parseInt(seFood_id);
			}
			if (StringUtil.isEmpty(seFood_price1)) {
				price1=Double.parseDouble(seFood_price1);
			}
			if (StringUtil.isEmpty(seFood_price2)) {
				price2=Double.parseDouble(seFood_price2);
			}
			if(pno!=null&&!"".equals(pno)){
				pageNo=Integer.parseInt(pno);
			}
			
			if(pSize!=null&&!"".equals(pSize)){
				pageSize=Integer.parseInt(pSize);
			}
			FoodPojo foodPojo=new FoodPojo();
			foodPojo.setSeFood_id(id);
			foodPojo.setSeFood_price1(price1);
			foodPojo.setSeFood_price2(price2);
			
			foodPojo.setSeFood_name(req.getParameter("seFood_name"));
			foodPojo.setSeDescript(req.getParameter("seDescript"));
			
			
			
			ReturnSelect returnSelect=dao.advSelect(foodPojo,pageNo, pageSize);
			List<Food> foods=returnSelect.getFoods();
			/*for(Food f:foods){
			System.out.println(f.toString());
			}*/
			int totalRows=returnSelect.getTotalRows();
			
			/*
			 * 封装分页数据
			 */
			BackPageBean<Food> pb=new BackPageBean<Food>();
			pb.setData(foods);
			pb.setPageNo(pageNo);
			pb.setPageSize(pageSize);
			pb.setTotalRows(totalRows);
			
			req.setAttribute("pb",pb );
			req.setAttribute("foodPojo", foodPojo);
			req.getRequestDispatcher("/back/listCate.jsp").forward(req, resp);
		}
		 //添加菜品
		else if ("addfood".equals(action)) {
			//2.获取参数值
	    	String food_name=req.getParameter("food_name");
	    	double food_price=Double.parseDouble(req.getParameter("food_price"));
	    	String pic=req.getParameter("pic");
	    	String descript=req.getParameter("descript");
	    	//3.构建数据模型
	    	Food food=new Food();
	    	food.setFname(food_name);
	    	food.setFprice(food_price);
	    	food.setFpic(pic);
	    	food.setFdescript(descript);
	    	//3.数据库访问操作
	    	//保存菜品信息到数据库，获得刚添加的商品的food_id
	    	int food_id=dao.insertFood(food);
	    	//上传文件
	    	SmartUpload su=new SmartUpload();
	    	//初始化
	    	su.initialize(this.getServletConfig(),req,resp);
	    	try {
	    		//上传文件到服务器的临时目录
				su.upload();
				//获得所有上传的文件集合
				Files files=su.getFiles();
		    	//遍历集合文件
		    	for(int i=0;i<files.getCount();i++){
		    		File file=files.getFile(i);
		    		//获取images文件夹在服务器的绝对路径
		    		String dir=this.getServletContext().getRealPath("images");
		    		//获取旧文件名
		    		String oldName=file.getFileName();
		    		//定义新文件名
		    		String newName=food_id+"_"+i+oldName.substring(oldName.lastIndexOf("."));
		    		//定义新文件的保存路径
		    		String path=dir+"/"+newName;
		    		//将文件保存到新路径
		    		file.saveAs(path);
		    		food.setFid(food_id);
		    		food.setFpic(newName);
		    		//修改数据库对应菜品的图片值
		    		boolean result=dao.updatePicture(food);
		    		if (result) {
		    			//服务器内部转发方式跳转
			    		req.setAttribute("message", "添加菜品成功成功！");
						req.getRequestDispatcher("/back/ManagerSucc.jsp").forward(req, resp);
					}		
		    	}
			} catch (SmartUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
		}
		 
		//查看详情
		else if ("seefood".equals(action)) {
			int food_id=Integer.parseInt(req.getParameter("food_id"));
			Food food=dao.selectFoodById(food_id);
			req.setAttribute("food",food );
			req.getRequestDispatcher("/back/FoodDetail.jsp").forward(req, resp);
		}
		 //上架下架
		else if ("downfood".equals(action)) {
			int food_id=Integer.parseInt(req.getParameter("food_id"));
			Food food=dao.selectFoodById(food_id);
			String food_type=food.getFood_type();
			boolean result=dao.downFoodById(food, food_type);
			if(result){
	    		//服务器内部转发方式跳转
	    		req.setAttribute("message", "菜品下架成功！");
				req.getRequestDispatcher("/back/ManagerSucc.jsp").forward(req, resp);
	    	}
		//被修改菜品下架
		}else if ("updatefood1".equals(action)) {
			int food_id=Integer.parseInt(req.getParameter("food_id"));
			Food food=dao.selectFoodById(food_id);
			dao.downFoodById(food, "0");
			req.setAttribute("food",food );
			req.getRequestDispatcher("/back/FoodUpdate.jsp").forward(req, resp);
		}//添加修改后的菜品
		 else if ("updatefood2".equals(action)) {
			//2.获取参数值
		    	String food_name=req.getParameter("food_name");
		    	double food_price=Double.parseDouble(req.getParameter("food_price"));
		    	String pic=req.getParameter("pic");
		    	String descript=req.getParameter("descript");
		    	System.out.println("111"+descript);
		    	//3.构建数据模型
		    	Food food=new Food();
		    	food.setFname(food_name);
		    	food.setFprice(food_price);
		    	food.setFpic(pic);
		    	food.setFdescript(descript.trim());
		    	//3.数据库访问操作
		    	
		    	
		    	//System.out.println(food.toString());
		    	
		    	int result=dao.insertFood(food);
		    	//System.out.println(result);
		    	if(result!=0){
		    		//服务器内部转发方式跳转
		    		req.setAttribute("message", "修改菜品成功成功！");
					req.getRequestDispatcher("/back/ManagerSucc.jsp").forward(req, resp);
		    	}
		}
		else if ("addmanager".equals(action)) {
			String user_name=req.getParameter("user_name");
			String password=req.getParameter("password");
			boolean result=dao.addmanager(user_name, password);
			if(result){
	    		//服务器内部转发方式跳转
	    		req.setAttribute("message", "添加新管理员成功！");
				req.getRequestDispatcher("/back/ManagerSucc.jsp").forward(req, resp);
	    	}
		}
		else if ("listuser".equals(action)) {
			List<ShowUserMessage> list=dao.selectUserMessages();
			req.setAttribute("list",list );
			req.getRequestDispatcher("/back/UserMessage.jsp").forward(req, resp);
		}
		else if ("listorder".equals(action)) {
			List<MOrder> list=dao.SelectOrders();
			req.setAttribute("list",list );
			req.getRequestDispatcher("/back/listOrder.jsp").forward(req, resp);
			
		}
		else if ("orderdetail".equals(action)) {
			int car_id=Integer.parseInt(req.getParameter("car_id"));
			List<CarShow> list=dao.SelectOrderDetail(car_id);
			req.setAttribute("list",list );
			req.getRequestDispatcher("/back/orderdetail.jsp").forward(req, resp);
		}
		else if ("listoldorder".equals(action)) {
			List<MOrder> list=dao.SeleedOrders();
			req.setAttribute("list",list );
			req.getRequestDispatcher("/back/listOrder.jsp").forward(req, resp);
			
		}
		 
		 
		 
		 
		 
	}
	

}
