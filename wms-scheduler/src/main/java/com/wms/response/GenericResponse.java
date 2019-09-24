package com.wms.response;

import java.io.Serializable;

public class GenericResponse implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String errorMsg;
	private int errorCode;
	private String successMsg;
	private int successCode;
	
	public GenericResponse() {
		// TODO Auto-generated constructor stub
	}
	
	public GenericResponse(int errorCode,String errorMsg,int successCode,String successMsg) {
		this.errorCode=errorCode;
		this.errorMsg=errorMsg;
		this.successCode=successCode;
		this.successMsg=successMsg;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public int getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(int errorCode) {
		this.errorCode = errorCode;
	}

	public String getSuccessMsg() {
		return successMsg;
	}

	public void setSuccessMsg(String successMsg) {
		this.successMsg = successMsg;
	}

	public int getSuccessCode() {
		return successCode;
	}

	public void setSuccessCode(int successCode) {
		this.successCode = successCode;
	}
}
