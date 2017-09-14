package com.woongjin.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.woongjin.login.vo.LoginVo;
import com.woongjin.util.BaseController;

@Controller
public class LoginController extends BaseController{
     
	
	@RequestMapping(value="/login/loginForm.do")
     public String loginForm() {
		return "/login/loginForm";
    	 
     }
     
     @RequestMapping(value="/login/login.do")
     public ModelAndView login(HttpServletRequest request, LoginVo loginVo) {
    	 setRequestAttribute("login",loginVo);
    	 ModelAndView view = new ModelAndView("redirect:/home/list.do");
    	 view.addObject("login",loginVo);
    	 return view;
     }
     
     
     @RequestMapping(value="/login/logout.do")
     public ModelAndView logout(HttpSession session) {
    	 session.invalidate();
    	 ModelAndView view = new ModelAndView("redirect:/login/loginForm.do");
    	 return view;
     }
}
