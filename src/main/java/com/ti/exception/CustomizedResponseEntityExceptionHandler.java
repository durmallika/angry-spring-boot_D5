package com.ti.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Date;

@RestControllerAdvice
public class CustomizedResponseEntityExceptionHandler  extends  ResponseEntityExceptionHandler{
	
	@ExceptionHandler(AccountNotFoundException.class)
	  public final ResponseEntity<ErrorDetails> handleAccountNotFoundException(AccountNotFoundException ex, WebRequest request) {
	    ErrorDetails errorDetails = new ErrorDetails(new Date(), ex.getMessage(),
	        request.getDescription(false));
	    return new ResponseEntity<>(errorDetails, HttpStatus.NOT_FOUND);
	  }
	
	@ExceptionHandler(RuntimeException.class)
	  public final ResponseEntity<ErrorDetails> handleRuntimeException(RuntimeException ex, WebRequest request) {
	    ErrorDetails errorDetails = new ErrorDetails(new Date(), ex.getMessage(),
	        request.getDescription(true));
	    return new ResponseEntity<>(errorDetails, HttpStatus.INTERNAL_SERVER_ERROR);
	  }
	
	@ExceptionHandler(Exception.class)
	  public final ResponseEntity<Object> handleGeneralException(Exception ex, WebRequest request) throws Exception {
	    return super.handleException(ex, request);
	  }

}
