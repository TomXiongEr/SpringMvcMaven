package com.xm.springmvc.common.exception;

public class CustomException extends Exception{

	private static final long serialVersionUID = 1L;

   public CustomException() {
	   super();
   }

   
   public CustomException(String message) {
	super(message);
   }

   
   public CustomException(String message,Throwable cause) {
       super(message, cause);
   }

 
   public CustomException(Throwable cause) {
       super(cause);
   }
}
