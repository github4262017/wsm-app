package com.wms.consumingrest;

  
import java.io.Serializable;

public class SonyEmployeeDetailsREST implements Serializable {
     
	/**
	 * 
	 */
	private String gid;
	private String employee_name;
	private String email;
	private String division_name;
	private String reporting_manager_gid;
	private String reporting_manager_name;
	private String reporting_manager_email;
	private String project_name;	
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDivision_name() {
		return division_name;
	}
	public void setDivision_name(String division_name) {
		this.division_name = division_name;
	}
	public String getReporting_manager_gid() {
		return reporting_manager_gid;
	}
	public void setReporting_manager_gid(String reporting_manager_gid) {
		this.reporting_manager_gid = reporting_manager_gid;
	}
	public String getReporting_manager_name() {
		return reporting_manager_name;
	}
	public void setReporting_manager_name(String reporting_manager_name) {
		this.reporting_manager_name = reporting_manager_name;
	}
	public String getReporting_manager_email() {
		return reporting_manager_email;
	}
	public void setReporting_manager_email(String reporting_manager_email) {
		this.reporting_manager_email = reporting_manager_email;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_manager_gid() {
		return project_manager_gid;
	}
	public void setProject_manager_gid(String project_manager_gid) {
		this.project_manager_gid = project_manager_gid;
	}
	public String getProject_manager_name() {
		return project_manager_name;
	}
	public void setProject_manager_name(String project_manager_name) {
		this.project_manager_name = project_manager_name;
	}
	public String getProject_manager_email() {
		return project_manager_email;
	}
	public void setProject_manager_email(String project_manager_email) {
		this.project_manager_email = project_manager_email;
	}
	private String project_manager_gid;
	private String project_manager_name;
	private String project_manager_email;
    	
}

