package com.wms.model;

public class ProjectDetails {
	private String id;
	private String total;
	private String assigned;
	private String unassigned;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getAssigned() {
		return assigned;
	}
	public void setAssigned(String assigned) {
		this.assigned = assigned;
	}
	public String getUnassigned() {
		return unassigned;
	}
	public void setUnassigned(String unassigned) {
		this.unassigned = unassigned;
	}
	
}
