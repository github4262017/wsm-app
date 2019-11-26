package com.wms.dao.deallocateunassigned;

import java.io.Serializable;

public class DeallocationRequests implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String floor_id;
	private String request_id;
	private String workstation_no;
	

	public String getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(String floor_id) {
		this.floor_id = floor_id;
	}
	
	public String getWorkstation_no() {
		return workstation_no;
	}
	public void setWorkstation_no(String workstation_no) {
		this.workstation_no = workstation_no;
	}
	public String getRequest_id() {
		return request_id;
	}
	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}

	
}
