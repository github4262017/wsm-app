package com.wms.model;

/**
 * 
 * @author ation
 *
 */
import java.io.Serializable;

public class Coordinates implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String floor_id;
	private String coordinates;
	private String workstation_no;
	

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

	
}
