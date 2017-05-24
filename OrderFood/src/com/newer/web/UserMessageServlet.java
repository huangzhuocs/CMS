package com.newer.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.dao.UserDAO;
import com.newer.dao.UserMessageDAO;
import com.newer.model.User;
import com.newer.model.UserMessage;

@WebServlet(name = "UserMessageServlet", urlPatterns = "/userMessage")
public class UserMessageServlet extends HttpServlet {

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
		User user = new User();
		UserDAO dao = new UserDAO();
		UserMessage um = new UserMessage();
		UserMessageDAO umdao = new UserMessageDAO();
		// 判断是否添加了用户信息
		if ("person".equals(action)) {
			int uid = Integer.parseInt(req.getParameter("uid"));
			um = umdao.findById(uid);
			if (um == null) {
				resp.sendRedirect("proscenium/addPerson.jsp");
			} else {
				req.setAttribute("userMessage", um);
				req.getRequestDispatcher("proscenium/showPerson.jsp").forward(
						req, resp);
			}
		}
		// 添加用户信息
		if ("add".equals(action)) {
			int uid = Integer.parseInt(req.getParameter("uid"));
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			String sex = req.getParameter("sex");
			String address = req.getParameter("address");
			String mobile = req.getParameter("mobile");
			String email = req.getParameter("email");
			String likefood = req.getParameter("likefood");
			user.setUid(uid);
			um.setUser(user);
			um.setName(name);
			um.setAge(age);
			um.setSex(sex);
			um.setAddress(address);
			um.setMobile(mobile);
			um.setEmail(email);
			um.setLikefood(likefood);
			boolean flag = umdao.insertUserMessage(um);
			if (flag) {
				resp.sendRedirect("userMessage?action=person&uid=" + uid);
			}
		}
		// 根据ID查找用户详细信息
		if ("show".equals(action)) {
			int uid = Integer.parseInt(req.getParameter("uid"));
			um = umdao.findById(uid);
			if (um == null) {
				resp.sendRedirect("proscenium/addPerson.jsp");
			} else{
			   req.setAttribute("userMessage", um);
			   req.getRequestDispatcher("proscenium/updatePerson.jsp").forward(
					req, resp);
			}
		}
		// 修改用户信息
		if ("update".equals(action)) {
			int uid = Integer.parseInt(req.getParameter("uid"));
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			String sex = req.getParameter("sex");
			String address = req.getParameter("address");
			String mobile = req.getParameter("mobile");
			String email = req.getParameter("email");
			String likefood = req.getParameter("likefood");
			user.setUid(uid);
			um.setUser(user);
			um.setName(name);
			um.setAge(age);
			um.setSex(sex);
			um.setAddress(address);
			um.setMobile(mobile);
			um.setEmail(email);
			um.setLikefood(likefood);
			boolean flag = umdao.updateById(um);
			if (flag) {
				req.setAttribute("userMessage", "um");
				req.getRequestDispatcher("userMessage?action=person&uid=" + uid)
						.forward(req, resp);
			}
		}
		// 修改密码
		if ("updatepwd".equals(action)) {
			String uid = req.getParameter("uid");
			String pwd1 = req.getParameter("pwd1");
			user.setUid(Integer.parseInt(uid));
			user.setUpwd(pwd1);
			boolean flag = dao.updateById(user);
			if (flag) {
				HttpSession session = req.getSession();
				session.removeAttribute("user");
				resp.sendRedirect("food");
			}
		}
	
	}
}
