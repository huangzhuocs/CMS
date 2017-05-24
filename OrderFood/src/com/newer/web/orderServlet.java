package com.newer.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.OrderDAO;
import com.newer.dao.UserDAO;
import com.newer.model.CarItem;
import com.newer.model.CarShow;
import com.newer.model.Cars;
import com.newer.model.Food;
import com.newer.model.Item;
import com.newer.model.Order;
import com.newer.model.User;

@WebServlet(name = "orderServlet", urlPatterns = "/order")
public class orderServlet extends HttpServlet {
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
            //System.out.println(action);
		    String uid = req.getParameter("uid");
		    String cid = req.getParameter("cid");
		    String oid = req.getParameter("oid");			
			String name = req.getParameter("name");
			String addr = req.getParameter("addr");
			String tel = req.getParameter("tel");
			String payradio = req.getParameter("payradio");
			String bz = req.getParameter("bz");
			OrderDAO dao = new OrderDAO();
			//System.out.println(oid);
		 if("submit".equals(action)){		   			
			boolean flag= dao.insertCarItem(name, addr, tel, payradio, bz,Integer.parseInt(oid));
			if(flag){
				resp.sendRedirect("order/success.jsp");
			}
	      }
		 if("compelet".equals(action)){
			 List<Order> list = dao.findCompleteOrder(Integer.parseInt(uid));		
			
			 HttpSession session= req.getSession();
			 session.setAttribute("list1", list);
			 resp.sendRedirect("order/userOrder1.jsp");
		 }
		 if("unCompelet".equals(action)){
			 List<Order> list = dao.findNoCompleteOrder(Integer.parseInt(uid));			 
			 HttpSession session= req.getSession();
			 session.setAttribute("list", list);
			 resp.sendRedirect("order/userOrder.jsp");
		 }
		 if("delete".equals(action)){
			 boolean flag = dao.updateOrderType(Integer.parseInt(oid));
			 if(flag){
				 resp.sendRedirect("food");
			 }
		 }
		 /*if("payeds".equals(action)){
			List<Item> list = dao.findAllByOrder(Integer.parseInt(oid));
			System.out.println(list.size());
			HttpSession session= req.getSession();
			session.setAttribute("list2", list);
			resp.sendRedirect("order/order1.jsp");
		} */
		 if("payeds".equals(action)){
				List<Item> list = dao.findAllByOrder(Integer.parseInt(cid));			
				int o_id = dao.findoid(Integer.parseInt(cid));
				 double totle=0;
				 for(Item i:list){
					 totle += i.getTotle();
				 }
				 req.setAttribute("totle", totle);
				req.setAttribute("o_id", o_id);
				req.setAttribute("order1",list);
				req.getRequestDispatcher("order/order1.jsp").forward(req, resp);
			} 
		 
		 if("select".equals(action)){
			 List<Item> list = dao.findAllByOrder(Integer.parseInt(cid));
			 double totle=0;
			 for(Item i:list){
				 totle += i.getTotle();
			 }
			 //System.out.println(totle);
			 req.setAttribute("totle", totle);
			 req.setAttribute("list",list);
			 req.getRequestDispatcher("order/showFood.jsp").forward(req, resp);
		 }
	}
}