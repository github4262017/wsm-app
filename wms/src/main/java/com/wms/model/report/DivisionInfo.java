package com.wms.model.report;

import java.io.Serializable;

public class DivisionInfo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String division;
	private String projectName;
	private String floorid;
	private int vacant=0;
	private int allocated=0;
	private int assigned=0;
	private int utilized=0;
	
	private int headcount=0;
	
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	public String getFloorid() {
		return floorid;
	}
	public void setFloorid(String floorid) {
		this.floorid = floorid;
	}
	public int getVacant() {
		return vacant;
	}
	public void setVacant(int vacant) {
		this.vacant = vacant;
	}
	public int getAllocated() {
		return allocated;
	}
	public void setAllocated(int allocated) {
		this.allocated = allocated;
	}
	public int getAssigned() {
		return assigned;
	}
	public void setAssigned(int assigned) {
		this.assigned = assigned;
	}
	public int getUtilized() {
		return utilized;
	}
	public void setUtilized(int utilized) {
		this.utilized = utilized;
	}
	public int getHeadcount() {
		return headcount;
	}
	public void setHeadcount(int headcount) {
		this.headcount = headcount;
	}
	
}
