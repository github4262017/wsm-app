package com.wms.model;

import java.io.Serializable;

public class FloorMapDetails implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String floor_id;
	private String coordinates;
	private String workstation_no;
	private String[] employee_ID;
	private String isUtilized="N";
	
	public String getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(String floor_id) {
		this.floor_id = floor_id;
	}
	public String getCoordinates() {
		return coordinates;
	}
	public void setCoordinates(String coordinates) {
		this.coordinates = coordinates;
	}
	public String getWorkstation_no() {
		return workstation_no;
	}
	public void setWorkstation_no(String workstation_no) {
		this.workstation_no = workstation_no;
	}
	public String[] getEmployee_ID() {
		return employee_ID;
	}
	public void setEmployee_ID(String[] employee_ID) {
		this.employee_ID = employee_ID;
	}
	public String getIsUtilized() {
		return isUtilized;
	}
	public void setIsUtilized(String isUtilized) {
		this.isUtilized = isUtilized;
	}
}
