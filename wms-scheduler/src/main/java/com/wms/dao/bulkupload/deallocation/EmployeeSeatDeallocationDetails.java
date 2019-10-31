package com.wms.dao.bulkupload.deallocation;

import com.opencsv.bean.CsvBindByName;     

public class EmployeeSeatDeallocationDetails { 

	@CsvBindByName
	private String floor_id;
	@CsvBindByName
	private String wing;
	@CsvBindByName
	private String seat_number;
	@CsvBindByName
	private String emp_id;
	@CsvBindByName
	private String project_id;
	@CsvBindByName
	private String request_id;
	
	public String getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(String floor_id) {
		this.floor_id = floor_id;
	}
	public String getWing() {
		return wing;
	}
	public void setWing(String wing) {
		this.wing = wing;
	}
	public String getSeat_number() {
		return seat_number;
	}
	public void setSeat_number(String seat_number) {
		this.seat_number = seat_number;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getRequest_id() {
		return request_id;
	}
	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}	
	
}
