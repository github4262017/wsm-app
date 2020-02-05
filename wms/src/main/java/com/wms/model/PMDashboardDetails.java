package com.wms.model;

import java.io.Serializable;

public class PMDashboardDetails implements Serializable{
	
	private int allRequest;
	private int todayRequest;
	private int thisMonth;     
	
	private int pending;
	private int allocated;
	private int rejected;
	private int assigned;
	private int accepted;
	
	public int getAllRequest() {
		return allRequest;
	}
	public void setAllRequest(int allRequest) {
		this.allRequest = allRequest;
	}
	public int getTodayRequest() {
		return todayRequest;
	}
	public void setTodayRequest(int todayRequest) {
		this.todayRequest = todayRequest;
	}
	public int getThisMonth() {
		return thisMonth;
	}
	public void setThisMonth(int thisMonth) {
		this.thisMonth = thisMonth;
	}
	public int getPending() {
		return pending;
	}
	public void setPending(int pending) {
		this.pending = pending;
	}
	public int getAllocated() {
		return allocated;
	}
	public void setAllocated(int allocated) {
		this.allocated = allocated;
	}
	public int getRejected() {
		return rejected;
	}
	public void setRejected(int rejected) {
		this.rejected = rejected;
	}
	public int getAssigned() {
		return assigned;
	}
	public void setAssigned(int assigned) {
		this.assigned = assigned;
	}
	public int getAccepted() {
		return accepted;
	}
	public void setAccepted(int accepted) {
		this.accepted = accepted;
	}  
	
	
	
}
