package com.wms.request.allocation;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

public class AllocationRequest implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String request_id;
	private String pm_id;
	private String department_id;
	private String project_id;
	private String typeofdesk;
	private String no_of_resource;
	private String status;
	private int    flag;
	private String remarks;
	//@NotBlank
	private String start_time;
	//@NotBlank
	private String end_time;
	private String gid;
	
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
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	public String getTypeofdesk() {
		return typeofdesk;
	}
	public void setTypeofdesk(String typeofdesk) {
		this.typeofdesk = typeofdesk;
	}
	public String getNo_of_resource() {
		return no_of_resource;
	}
	public void setNo_of_resource(String no_of_resource) {
		this.no_of_resource = no_of_resource;
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
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	
}
