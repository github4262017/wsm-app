package com.wms.model.allocation;

import java.io.Serializable;

public class PMReqRespDetails implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String department;
	private String request_id;
	private String pm_id;
	private String project_id;
	private String no_of_resource;
	private String typeofdesk;
	private String start_time;
	private String end_time;
	private String status;
	private String remarks;
	private String floorid;
	
	public String getRequest_id() {
		return request_id;
	}
	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}
	public String getPm_id() {
		return pm_id;
	}
	public void setPm_id(String pm_id) {
		this.pm_id = pm_id;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getNo_of_resource() {
		return no_of_resource;
	}
	public void setNo_of_resource(String no_of_resource) {
		this.no_of_resource = no_of_resource;
	}
	public String getTypeofdesk() {
		return typeofdesk;
	}
	public void setTypeofdesk(String typeofdesk) {
		this.typeofdesk = typeofdesk;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getFloorid() {
		return floorid;
	}
	public void setFloorid(String floorid) {
		this.floorid = floorid;
	}
	

}
