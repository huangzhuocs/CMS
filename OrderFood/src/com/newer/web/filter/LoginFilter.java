package com.newer.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newer.model.User;

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain chain) throws IOException, ServletException {
		    HttpServletRequest req =(HttpServletRequest)arg0;
		    HttpServletResponse resp =(HttpServletResponse)arg1;
		    HttpSession session = req.getSession();
		    User user = (User)session.getAttribute("user");
		    if(user==null){
		    	resp.sendRedirect(req.getContextPath()+"/food");
		    }else{
		    	chain.doFilter(req, resp);
		    }
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
