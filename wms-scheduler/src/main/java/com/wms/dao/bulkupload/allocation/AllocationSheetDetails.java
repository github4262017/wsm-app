package com.wms.dao.bulkupload.allocation;

import com.opencsv.bean.CsvBindByName;

public class AllocationSheetDetails {
	private static final long serialVersionUID = 1L;

	@CsvBindByName
	private String request_id;
	@CsvBindByName
	private String floor_id;
	@CsvBindByName
	private String seat_number;
	@CsvBindByName
	private String project_id;
	@CsvBindByName
	private String start_time;
	@CsvBindByName
	private String end_time;
	@CsvBindByName
	private String emp_id;
	public String getRequest_id() {
		return request_id;
	}
	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}
	public String getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(String floor_id) {
		this.floor_id = floor_id;
	}
	public String getSeat_number() {
		return seat_number;
	}
	public void setSeat_number(String seat_number) {
		this.seat_number = seat_number;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
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
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	} 	

}
