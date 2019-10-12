package com.wms.model.floormap;

import java.io.Serializable;

public class FloorSummaryStatus implements Serializable {
	private static final long serialVersionUID = 1L;
	private int totalVacant = 0;
	private int totalAllocated = 0;
	private int totalAssigned= 0;
	private int totalUtilized= 0;
	
	public int getTotalVacant() {
		return totalVacant;
	}
	public void setTotalVacant(int totalVacant) {
		this.totalVacant = totalVacant;
	}
	public int getTotalAllocated() {
		return totalAllocated;
	}
	public void setTotalAllocated(int totalAllocated) {
		this.totalAllocated = totalAllocated;
	}
	public int getTotalAssigned() {
		return totalAssigned;
	}
	public void setTotalAssigned(int totalAssigned) {
		this.totalAssigned = totalAssigned;
	}
	public int getTotalUtilized() {
		return totalUtilized;
	}
	public void setTotalUtilized(int totalUtilized) {
		this.totalUtilized = totalUtilized;
	}
	
	
}
