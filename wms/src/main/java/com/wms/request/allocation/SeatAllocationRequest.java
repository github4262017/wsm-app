package com.wms.request.allocation;

import java.io.Serializable;
import java.util.List;

import com.wms.model.FloorMapDetails;

public class SeatAllocationRequest implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String requestid;
	private List<FloorMapRequest> floorMap;
	private String project_id;
	private String star_time;
	private String end_time;
	private String uploadType;
	private String file_path;
	private String approver_id;  // from_id
	private String pm_email_id;  // prm email id 
	public String getRequestid() {
		return requestid;
	}
	public void setRequestid(String requestid) {
		this.requestid = requestid;
	}
	public List<FloorMapRequest> getFloorMap() {
		return floorMap;
	}
	public void setFloorMap(List<FloorMapRequest> floorMap) {
		this.floorMap = floorMap;
	}
	public String getStar_time() {
		return star_time;
	}
	public void setStar_time(String star_time) {
		this.star_time = star_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
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
	public String getProject_id() {
		return project_id;
	}
	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}
	
}
