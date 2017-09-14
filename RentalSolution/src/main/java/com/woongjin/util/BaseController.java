package com.woongjin.util;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

public abstract class BaseController {

	public Object getRequestAttribute(String name) {
		return RequestContextHolder.currentRequestAttributes().getAttribute(name, RequestAttributes.SCOPE_SESSION);
	
	}
	
	
	
	public void  setRequestAttribute(String name, Object value) {
		 RequestContextHolder.currentRequestAttributes().setAttribute(name, value, RequestAttributes.SCOPE_SESSION);
	
	}
	
	
	public void  removeRequestAttribute(String name) {
		 RequestContextHolder.currentRequestAttributes().removeAttribute(name, RequestAttributes.SCOPE_SESSION);
	
	}
	  
}
