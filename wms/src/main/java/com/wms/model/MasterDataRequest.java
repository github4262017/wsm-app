package com.wms.model;

public class MasterDataRequest {

	private static final long serialVersionUID = 1L;
	private String gid_manager;
	private String empid;
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getGid_manager() {
		return gid_manager;
	}
	public void setGid_manager(String gid_manager) {
		this.gid_manager = gid_manager;
	}

}
