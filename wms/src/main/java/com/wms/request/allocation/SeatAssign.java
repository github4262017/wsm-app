package com.wms.request.allocation;

import java.io.Serializable;
import java.util.List;

public class SeatAssign implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String seatno;
	private  List<AssignEmpInfo> empDetails;
	
	public String getSeatno() {
		return seatno;
	}
	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}
	public List<AssignEmpInfo> getEmpDetails() {
		return empDetails;
	}
	public void setEmpDetails(List<AssignEmpInfo> empDetails) {
		this.empDetails = empDetails;
	}
	
	
	
	
}
