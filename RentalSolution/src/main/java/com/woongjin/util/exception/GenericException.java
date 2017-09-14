package com.woongjin.util.exception;

public class GenericException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 541113112863485230L;

	private String exceptionCode;
	private String exceptionMsg;
	
	public GenericException(String exceptionCode, String exceptionMsg) {
		this.exceptionCode = exceptionCode;
		this.exceptionMsg = exceptionMsg;
	}

	public String getExceptionCode() {
		return exceptionCode;
	}

	public void setExceptionCode(String exceptionCode) {
		this.exceptionCode = exceptionCode;
	}

	public String getExceptionMsg() {
		return exceptionMsg;
	}

	public void setExceptionMsg(String exceptionMsg) {
		this.exceptionMsg = exceptionMsg;
	}
	
}
