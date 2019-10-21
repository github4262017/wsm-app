package com.wms.model;

public class UtilizationReportWorkstation {
	private String floor_id;
	private String workstation_no;
	private String request_id;
	private String project_id;
	private String employees;
	private String current_status;
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
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getEmployees() {
		return employees;
	}
	public void setEmployees(String employees) {
		this.employees = employees;
	}
	public String getCurrent_status() {
		return current_status;
	}
	public void setCurrent_status(String current_status) {
		this.current_status = current_status;
	}  
	
}
