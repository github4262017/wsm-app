package com.wms.request.allocation;

import java.io.Serializable;

public class RequestID implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private String request_id;

public String getRequest_id() {
	return request_id;
}

public void setRequest_id(String request_id) {
	this.request_id = request_id;
}

}
