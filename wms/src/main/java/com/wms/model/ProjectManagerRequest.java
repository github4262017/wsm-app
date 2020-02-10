package com.wms.model;

public class ProjectManagerRequest {
	private static final long serialVersionUID = 1L;
	private String gid;
	private String request_id;
	
	public String getRequest_id() {
		return request_id;
	}
	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}

}
