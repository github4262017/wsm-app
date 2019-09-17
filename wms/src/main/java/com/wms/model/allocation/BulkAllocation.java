package com.wms.model.allocation;

public class BulkAllocation {
	
	private String request_id;
	private String floor_id;
	private String workstation_id;
	private String status;
	private String file_path;
	
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
	public String getWorkstation_id() {
		return workstation_id;
	}
	public void setWorkstation_id(String workstation_id) {
		this.workstation_id = workstation_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	
	
	
}
