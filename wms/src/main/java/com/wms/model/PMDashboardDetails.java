package com.wms.model;

import java.io.Serializable;

public class PMDashboardDetails implements Serializable{
	
	private String allRequest;
	private String todayRequest;
	private String thisMonth;
	
	private String pending;
	private String allocated;
	private String rejected;
	private String assigned;
	private String accepted;
	
	public String getAllocated() {
		return allocated;
	}
	public void setAllocated(String allocated) {
		this.allocated = allocated;
	}
	public String getRejected() {
		return rejected;
	}
	public void setRejected(String rejected) {
		this.rejected = rejected;
	}
	public String getAssigned() {
		return assigned;
	}
	public void setAssigned(String assigned) {
		this.assigned = assigned;
	}
	public String getPending() {
		return pending;
	}
	public void setPending(String pending) {
		this.pending = pending;
	}
	public String getAccepted() {
		return accepted;
	}
	public void setAccepted(String accepted) {
		this.accepted = accepted;
	}
	public String getThisMonth() {
		return thisMonth;
	}
	public void setThisMonth(String thisMonth) {
		this.thisMonth = thisMonth;
	}
	public String getTodayRequest() {
		return todayRequest;
	}
	public void setTodayRequest(String todayRequest) {
		this.todayRequest = todayRequest;
	}
	public String getAllRequest() {
		return allRequest;
	}
	public void setAllRequest(String allRequest) {
		this.allRequest = allRequest;
	}
	
}
