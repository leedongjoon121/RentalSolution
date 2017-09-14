package com.woongjin.home.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.woongjin.home.search.HomeSearch;
import com.woongjin.home.service.HomeService;
import com.woongjin.home.vo.HomeVo;
import com.woongjin.util.exception.GenericException;

@Configuration
@ComponentScan("com.woongjin.home")
@Controller
public class HomeController {
   @Autowired
   private HomeService homeService;
   

   
// ------------------------------------------------------------------  
   
   
   @RequestMapping(value="/home/list.do")
   public ModelAndView list(HomeSearch search) {
	   
	   search.calculate(homeService.selectListCount(search));
	   ModelAndView view = new ModelAndView("home/list");
	   view.addObject("list",homeService.selectList(search));
	   view.addObject("search", search);
      return view;
   }
   
   // 이걸로 웹에 json 뿌림 
   @RequestMapping(value="/home/list.json")
   public @ResponseBody Map<String,Object> list2(HomeSearch search) {
	   
	   search.calculate(homeService.selectListCount(search));
	   Map<String,Object> resultMap = new HashMap<String,Object>();
       resultMap.put("list", homeService.selectList(search));
	   return resultMap;
   }
   
   // view는 각 list의 상세 값들 나타내는 것들 임
   @RequestMapping(value="/home/view.do")  
   public ModelAndView view(
		   @RequestParam(value="param1", required=true) String param1,
		   @RequestParam(value="param2", required=false) String param2,
		   @RequestParam(value="param3", required=false) String param3
		   ) {
	   
	   ModelAndView view = new ModelAndView("home/view");
	   view.addObject("obj",homeService.select(param1));
	   view.addObject("param2",param2);
	   view.addObject("param3",param3);
      return view;
   }
   
   
   @RequestMapping(value="/home/insertForm.do")
   public ModelAndView insertForm() {
	   
	   ModelAndView view = new ModelAndView("home/insertForm");   
      return view;
   }
   
   @RequestMapping(value="/home/signIn.do")
   public ModelAndView signInForm() {
	   
	   ModelAndView view = new ModelAndView("home/signIn");   
      return view;
   }
   
   @RequestMapping(value="/home/survey.do")
   public ModelAndView surveyForm() {
	   
	   ModelAndView view = new ModelAndView("home/survey");   
      return view;
   }

   
   @RequestMapping(value="/home/updateForm.do")
   public ModelAndView updateForm(
		   @RequestParam(value="param1", required=true) String param1
		   ) {
	   
	   ModelAndView view = new ModelAndView("home/updateForm");
	   view.addObject("obj",homeService.select(param1));
	   
      return view;
   }
   

   
   @RequestMapping(value="/home/insert.do")
   public ModelAndView insert(HomeVo vo) {
	   // vo 를 넘기는 이유는 param1 이라는 글자로 jsp 파일에서 똑같이 매핑 시켜줌
	   homeService.insert(vo);
	   
	   ModelAndView view = new ModelAndView("redirect:/home/view.do"); // 원래 값
	   
	   view.addObject("param1",vo.getParam1());
	   view.addObject("message","성공");
      return view;
   }

   
   
   @RequestMapping(value="/home/update.do")
   public ModelAndView update(HomeVo vo) {
	   homeService.update(vo);
	   
	   ModelAndView view = new ModelAndView("redirect:/home/view.do");
	   view.addObject("param1",vo.getParam1());
	   view.addObject("message","성공");
      return view;
   }
   
   
   @RequestMapping(value="/home/delete.do")
   public ModelAndView delete(
		   @RequestParam(value="param1", required=true) String param1
		   ) {
	   homeService.delete(param1);
	   
	   ModelAndView view = new ModelAndView("redirect:/home/list.do");
	   
      return view;
   }
     
   
   
   
// ------------------------------------------------------------------   

	
	@RequestMapping(value="/testIOException.do")
	public String testIOException() throws IOException {

		if(true)throw new IOException("this is an IO Exception");
		return "showMessage";
	}
	
	@RequestMapping(value="/testGenericException.do")
	public String testGenericException() throws GenericException {

		if(true)throw new GenericException("GenericException","this is an GenericException");
		return "showMessage";
	}
}
