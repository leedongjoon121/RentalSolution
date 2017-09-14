package com.woongjin.util.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class SpringException {
    @ExceptionHandler(Exception.class)
    public ModelAndView allException(Exception e) {
    	ModelAndView modelAndView = new ModelAndView("error/allException");
    	modelAndView.addObject("error", e.getClass().getSimpleName());
    	modelAndView.addObject("message", e.getMessage());
    	return modelAndView;
    }
    
    @ExceptionHandler(GenericException.class)
    public ModelAndView genericException(GenericException e) {
    	ModelAndView modelAndView = new ModelAndView("error/genericException");
    	modelAndView.addObject("error", e.getClass().getSimpleName());
    	modelAndView.addObject("message", e.getExceptionCode()+" - "+e.getExceptionMsg());
    	return modelAndView;
    }
}
