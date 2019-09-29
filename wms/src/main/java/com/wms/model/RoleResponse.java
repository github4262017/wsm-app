package com.wms.model;

import java.io.Serializable;
import java.util.List;

public class RoleResponse implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String pmCount;
	private String faCount;
	private String dmCount;
	private String totalCount;
	private List<UserDetailsResponse> userDetailsResponse;
	public String getPmCount() {
		return pmCount;
	}
	public void setPmCount(String pmCount) {
		this.pmCount = pmCount;
	}
	public String getFaCount() {
		return faCount;
	}
	public void setFaCount(String faCount) {
		this.faCount = faCount;
	}
	public String getDmCount() {
		return dmCount;
	}
	public void setDmCount(String dmCount) {
		this.dmCount = dmCount;
	}
	public String getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}
	public List<UserDetailsResponse> getUserDetailsResponse() {
		return userDetailsResponse;
	}
	public void setUserDetailsResponse(List<UserDetailsResponse> userDetailsResponse) {
		this.userDetailsResponse = userDetailsResponse;
	}
	
	
}
