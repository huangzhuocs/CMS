package com.newer.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.ManagerDao;
import com.newer.dao.UserDAO;
import com.newer.model.CarItem;
import com.newer.model.CarShow;
import com.newer.model.Cars;
import com.newer.model.Food;
import com.newer.model.User;

@WebServlet(name = "userServlet", urlPatterns = "/user")
public class UsersServlet extends HttpServlet {

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
		String userName = req.getParameter("userName");
		String userPwd = req.getParameter("userPwd");
		User user = new User();
		UserDAO dao = new UserDAO();
		// 用户注册
		if ("register".equals(action)) {
			  user = dao.findUserName(userName);
			if (user != null) {
				req.setAttribute("errorMsg", "用户名已存在");
				req.getRequestDispatcher("register.jsp").forward(req, resp);
			} else {
				User u = new User();
			    u.setUname(userName);
			    u.setUpwd(userPwd);
			 boolean flag = dao.insertUser(u);
			if (flag) {
				req.setAttribute("uname", userName);
				req.getRequestDispatcher("proscenium/registersuccess.jsp").forward(req, resp);
			}
		  }
		}
		// 用户登陆
		if ("login".equals(action)) {
			user = dao.findUser(userName, userPwd);
			if (user == null) {
				req.setAttribute("errorMsg", "用户名或者密码错误");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			} else {
				int type = user.getUtype();
				if (type == 0) {
					HttpSession session = req.getSession();
					int uid = user.getUid();					
					List<CarShow> list = dao.SelectCarUnOrder(uid);					
					// 用list的长度判断是否有未加入订单的购物车；
					// 若>0说明有将将传过来的餐品信息添加进此购物车list糅合的各对象转发到购物车页面,
					if (list.size() > 0) {
						double total = 0;
						for (CarShow c : list) {
						    Food food = new Food();
							food.setFid(c.getFood_id());
							food.setFname(c.getFood_name());
							food.setFprice(c.getFood_price());

							CarItem carItem = new CarItem();
							Cars car1 = new Cars();
							car1.setCar_id(c.getCar_id());
							carItem.setCar(car1);
							carItem.setFood(food);
							carItem.setNum(c.getCount());
                            
							Cars cars = new Cars();
							cars.setCar_id(c.getCar_id());
							cars.setUser(user);
							total += carItem.getSum();
							cars.setTotal(total);
							cars.addItem(food);
							session.setAttribute("cars", cars);
						    }						
 				      }
					     session.setAttribute("user", user);
					       resp.sendRedirect("food");
				}
				if (type == 1) {
				 HttpSession session = req.getSession();
           		 session.setAttribute("user", user);
           		 req.setAttribute("action", "listfood");
           		 resp.sendRedirect("listFoodServlet?action=listfood");
				}
			}
		}
		// 用户退出
		if ("quit".equals(action)) {
			HttpSession session = req.getSession();
			session.removeAttribute("user");
			session.removeAttribute("cars");
			resp.sendRedirect("food");
		}
		//查看商品详情
		if ("seefood".equals(action)) {
			ManagerDao da=new ManagerDao();
			int food_id=Integer.parseInt(req.getParameter("food_id"));
			Food food=da.selectFoodById(food_id);
			//System.out.println(food.toString());
			req.setAttribute("food",food );
			req.getRequestDispatcher("FoodsDetail.jsp").forward(req, resp);
		}
	}
}