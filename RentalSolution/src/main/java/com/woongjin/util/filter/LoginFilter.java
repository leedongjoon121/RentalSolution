package com.woongjin.util.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.woongjin.login.vo.LoginVo;

public class LoginFilter implements Filter {

	private static final String LOGIN_FORM_URI = "/login/loginForm.do";
	private List<String> urlList;

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
         this.urlList = new ArrayList<String>();
         this.urlList.add("/login/loginForm.do");
         this.urlList.add("/login/login.do");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
	    try {
	    	HttpServletRequest req = (HttpServletRequest) request;
	    	HttpServletResponse res = (HttpServletResponse) response;
	    	HttpSession session = ((HttpServletRequest)request).getSession();
	    	String url = req.getServletPath();
	    	if(urlList.contains(url)) {
	    		chain.doFilter(request, response);
	    		return;
	    	}else {
	    		LoginVo login = (LoginVo)session.getAttribute("login");
	    		if(login!=null) {
	    			chain.doFilter(request, response);
	    			return;
	    		}else {
	    			res.sendRedirect(req.getContextPath()+LOGIN_FORM_URI);
	    		}
	    	}
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }	
	}
	
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	


	

}
