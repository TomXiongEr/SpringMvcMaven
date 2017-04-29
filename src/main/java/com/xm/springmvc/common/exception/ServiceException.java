package com.xm.springmvc.common.exception;

import org.apache.log4j.Logger;

public class ServiceException extends CustomException{

	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = Logger.getLogger(ServiceException.class);

	 public ServiceException() {
		super();
	 }

	   
	 public ServiceException(String message) {
		super(message);
	 }

	   
	 public ServiceException(String message,Throwable cause) {
	    super(message, cause);
	 }

	 
	 public ServiceException(Throwable cause) {
	    super(cause);
	    logger.info("Service层出现异常,异常信息如下:");
	 }
}
