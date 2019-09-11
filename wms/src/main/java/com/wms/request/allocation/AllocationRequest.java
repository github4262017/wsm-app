package com.wms.request.allocation;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

public class AllocationRequest implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String department;
	private String projectname;
	private String desktype;
	private String noofresources;
	private String status;
	private String remarks;
	//@NotBlank
	private String starttime;
	//@NotBlank
	private String endtime;
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getDesktype() {
		return desktype;
	}
	public void setDesktype(String desktype) {
		this.desktype = desktype;
	}
	public String getNoofresources() {
		return noofresources;
	}
	public void setNoofresources(String noofresources) {
		this.noofresources = noofresources;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
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
	
}
