package com.wms.model;

import java.io.Serializable;

public class FloorDetails  implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String floor_id;
	private String floor_name;
	private int floor_capacity;
	
	public String getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(String floor_id) {
		this.floor_id = floor_id;
	}
	public String getFloor_name() {
		return floor_name;
	}
	public void setFloor_name(String floor_name) {
		this.floor_name = floor_name;
	}
	public int getFloor_capacity() {
		return floor_capacity;
	}
	public void setFloor_capacity(int floor_capacity) {
		this.floor_capacity = floor_capacity;
	}
	
	
	

}
