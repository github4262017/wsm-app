package com.wms.dao.bulkupload;

import com.opencsv.bean.CsvBindByName;

public class EmployeeCSVDetails {

	@CsvBindByName
	private String status;
	@CsvBindByName
	private String subject;
	@CsvBindByName
	private String remarks;
	@CsvBindByName
	private String description;
	@CsvBindByName
	private String request_date;
	@CsvBindByName
	private String workstation_no;
	@CsvBindByName
	private String emp_name;
	@CsvBindByName
	private String reporting_manager;
	@CsvBindByName
	private String request_user_id;
	@CsvBindByName
	private String approval_user_id;
	@CsvBindByName
	private String division;
	@CsvBindByName
	private String project_name;
	@CsvBindByName
	private String project_id;
	@CsvBindByName
	private String no_resources;
	@CsvBindByName
	private String sno;
	@CsvBindByName
	private String floor;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRequest_date() {
		return request_date;
	}
	public void setRequest_date(String request_date) {
		this.request_date = request_date;
	}
	public String getWorkstation_no() {
		return workstation_no;
	}
	public void setWorkstation_no(String workstation_no) {
		this.workstation_no = workstation_no;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getReporting_manager() {
		return reporting_manager;
	}
	public void setReporting_manager(String reporting_manager) {
		this.reporting_manager = reporting_manager;
	}
	public String getRequest_user_id() {
		return request_user_id;
	}
	public void setRequest_user_id(String request_user_id) {
		this.request_user_id = request_user_id;
	}
	public String getApproval_user_id() {
		return approval_user_id;
	}
	public void setApproval_user_id(String approval_user_id) {
		this.approval_user_id = approval_user_id;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getNo_resources() {
		return no_resources;
	}
	public void setNo_resources(String no_resources) {
		this.no_resources = no_resources;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}

}
