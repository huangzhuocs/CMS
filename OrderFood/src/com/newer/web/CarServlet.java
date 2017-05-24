package com.newer.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.CarDAO;
import com.newer.dao.CarItemDAO;
import com.newer.dao.FoodDAO;
import com.newer.model.CarItem;
import com.newer.model.Cars;
import com.newer.model.Food;
import com.newer.model.User;
@WebServlet(name="carsServlet",urlPatterns="/cars")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		      doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		   String action = req.getParameter("action");
           String fid = req.getParameter("fid");         
           FoodDAO dao = new FoodDAO();
           CarDAO cdao = new CarDAO();
           CarItemDAO cidao = new CarItemDAO();
           HttpSession session = req.getSession();
           User user =(User) session.getAttribute("user");
          
         if("add".equals(action)){  
           if(user==null){
        	// 若处于未登录状态跳转到登陆界面
				resp.sendRedirect("login.jsp");
           }else{  
        	   int uid = user.getUid();
        	   int cid = 0;
               Food food = dao.fianById(Integer.parseInt(fid));
               Cars cars = (Cars)session.getAttribute("cars");          
               if(cars==null){        	    
        	     cars = new Cars();
        	     
        	     
        	     cid = cdao.insertCars(uid);        	      
        	     System.out.println(cid);
        	     cars.setCar_id(cid);
               }
        	    cars.addItem(food);
        	    cidao.insertCarItem(cars.getCar_id(), food);       	                    
                session.setAttribute("cars", cars);                                     
               resp.sendRedirect("car/car.jsp");
         }
      }
         if("update".equals(action)){
        	 int pid=Integer.parseInt(req.getParameter("fid"));
     		 int num=Integer.parseInt(req.getParameter("num"));
     		
     		Cars cars =(Cars) session.getAttribute("cars");
     		CarItem item = cars.getItems().get(pid);
     		item.setNum(num);
     		cidao.updateNum(pid, num);
     		req.getRequestDispatcher("car/car.jsp").forward(req, resp);
         }
         if("delete".equals(action)){
        	 int pid=Integer.parseInt(req.getParameter("fid"));
        		
        	Cars car = (Cars)session.getAttribute("cars");
        	car.getItems().remove(pid);
        	cidao.delete(pid);
        	req.getRequestDispatcher("car/car.jsp").forward(req, resp);
         }
         if("drop".equals(action)){
        	 int pid=Integer.parseInt(req.getParameter("cid"));
         Cars car = (Cars)session.getAttribute("cars");
         car.getItems().clear();
         cidao.drop(pid);
         req.getRequestDispatcher("car/car.jsp").forward(req, resp);
           
         }
	
        if("insert".equals(action)){
        	int uid = Integer.parseInt(req.getParameter("uid"));
        	String cid = req.getParameter("cid");
            Cars cars=(Cars)session.getAttribute("cars"); 
            if(cid==""){
            	resp.sendRedirect("food");
            }else{
            	
            int oid = cdao.submit(Integer.parseInt(cid),uid);             
             session.setAttribute("order", cars);
             session.setAttribute("oid", oid);
             session.removeAttribute("cars");
             req.getRequestDispatcher("order/order.jsp").forward(req, resp);
          }
         }    															
     }
  }
