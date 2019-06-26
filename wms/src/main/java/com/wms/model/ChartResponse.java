package com.wms.model;

import java.util.List;

public class ChartResponse {

	private List<ProjectDetails> projectDetails;
	private TotalAllocated total_allocated;
	private TotalAssigned total_assigned;
	
	public List<ProjectDetails> getProjectDetails() {
		return projectDetails;
	}
	public void setProjectDetails(List<ProjectDetails> projectDetails) {
		this.projectDetails = projectDetails;
	}
	public TotalAllocated getTotal_allocated() {
		return total_allocated;
	}
	public void setTotal_allocated(TotalAllocated total_allocated) {
		this.total_allocated = total_allocated;
	}
	public TotalAssigned getTotal_assigned() {
		return total_assigned;
	}
	public void setTotal_assigned(TotalAssigned total_assigned) {
		this.total_assigned = total_assigned;
	}
	
	
}

class TotalAllocated{
	private String allocated;
	private String unallocated;
	
	public String getAllocated() {
		return allocated;
	}
	public void setAllocated(String allocated) {
		this.allocated = allocated;
	}
	public String getUnallocated() {
		return unallocated;
	}
	public void setUnallocated(String unallocated) {
		this.unallocated = unallocated;
	}
	
}

class TotalAssigned{
	private String assigned;
	private String unassigned;
	
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



