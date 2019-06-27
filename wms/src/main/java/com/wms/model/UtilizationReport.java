package com.wms.model;

import java.io.Serializable;

public class UtilizationReport implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String location;
	private String building;
	private String floor;
	private String total_capacity;
	private String total_occupancy;
	private String total_current_utilization;
	private String utilization_vs_occupancy;
	private String utilzation_vs_capacity;
	private String utilization_date;
	
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getBuilding() {
		return building;
	}
	public void setBuilding(String building) {
		this.building = building;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getTotal_capacity() {
		return total_capacity;
	}
	public void setTotal_capacity(String total_capacity) {
		this.total_capacity = total_capacity;
	}
	public String getTotal_occupancy() {
		return total_occupancy;
	}
	public void setTotal_occupancy(String total_occupancy) {
		this.total_occupancy = total_occupancy;
	}
	public String getTotal_current_utilization() {
		return total_current_utilization;
	}
	public void setTotal_current_utilization(String total_current_utilization) {
		this.total_current_utilization = total_current_utilization;
	}
	public String getUtilization_vs_occupancy() {
		return utilization_vs_occupancy;
	}
	public void setUtilization_vs_occupancy(String utilization_vs_occupancy) {
		this.utilization_vs_occupancy = utilization_vs_occupancy;
	}
	public String getUtilzation_vs_capacity() {
		return utilzation_vs_capacity;
	}
	public void setUtilzation_vs_capacity(String utilzation_vs_capacity) {
		this.utilzation_vs_capacity = utilzation_vs_capacity;
	}
	public String getUtilization_date() {
		return utilization_date;
	}
	public void setUtilization_date(String utilization_date) {
		this.utilization_date = utilization_date;
	}
	
	
}
