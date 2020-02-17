package com.wms.model;

import java.io.Serializable;

public class DivisionDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String division_id ;
	private String division_name ;
	private String division_location ;
	
	public String getDivision_id() {
		return division_id;
	}
	public void setDivision_id(String division_id) {
		this.division_id = division_id;
	}
	public String getDivision_name() {
		return division_name;
	}
	public void setDivision_name(String division_name) {
		this.division_name = division_name;
	}
	public String getDivision_location() {
		return division_location;
	}
	public void setDivision_location(String division_location) {
		this.division_location = division_location;
	}
	

	
}
