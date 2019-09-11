package com.wms.model.allocation;

/**
 * 
 * @author ation
 *
 */
import java.io.Serializable;

public class AllocationDetails implements Serializable {
	
	/*private static final long serialVersionUID = 1L;
	private String status;
	private String subject;
	private String remarks;
	private String description;
	private String request_date;
	private String request_user_id;
	private String approval_user_id;
	private String project_name;
	private String project_id;
	private String insert_timestamp;
	private String no_resources;
	private String sno;
	private String modified_timestamp;
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
	public String getInsert_timestamp() {
		return insert_timestamp;
	}
	public void setInsert_timestamp(String insert_timestamp) {
		this.insert_timestamp = insert_timestamp;
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
	public String getModified_timestamp() {
		return modified_timestamp;
	}
	public void setModified_timestamp(String modified_timestamp) {
		this.modified_timestamp = modified_timestamp;
	}
*/
	private static final long serialVersionUID = 1L;
	private String department_id;
	private String project_id;
	private String project_name;
	private String no_of_resource;
	private String typeofdesk;
	private String start_time;
	private String end_time;
	private String insert_timestamp;
	private String status;
	private String remarks;
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
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
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
	public String getInsert_timestamp() {
		return insert_timestamp;
	}
	public void setInsert_timestamp(String insert_timestamp) {
		this.insert_timestamp = insert_timestamp;
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
