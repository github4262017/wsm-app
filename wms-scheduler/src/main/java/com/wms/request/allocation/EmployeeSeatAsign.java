package com.wms.request.allocation;

import java.io.Serializable;
import java.util.List;

public class EmployeeSeatAsign implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String floor_id;
	private String wing;
	private String seat_number;
	private String emp_id;
	private String project_id;
	private String request_id;
	private String typeof_workspace;
	private String start_time;
	private String end_time; 
	private String status;
	
	private List<EmpFloorMapReq> floorMap;
	private String uploadType;
	private String file_path;
	private String approver_id;  // from_id
	private String pm_email_id; //pm email id
	private Integer flag;
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
	public String getTypeof_workspace() {
		return typeof_workspace;
	}
	public void setTypeof_workspace(String typeof_workspace) {
		this.typeof_workspace = typeof_workspace;
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
	public String getUploadType() {
		return uploadType;
	}
	public void setUploadType(String uploadType) {
		this.uploadType = uploadType;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public String getApprover_id() {
		return approver_id;
	}
	public void setApprover_id(String approver_id) {
		this.approver_id = approver_id;
	}
	public String getPm_email_id() {
		return pm_email_id;
	}
	public void setPm_email_id(String pm_email_id) {
		this.pm_email_id = pm_email_id;
	}
	public List<EmpFloorMapReq> getFloorMap() {
		return floorMap;
	}
	public void setFloorMap(List<EmpFloorMapReq> floorMap) {
		this.floorMap = floorMap;
	}
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	} 
	

	
}
