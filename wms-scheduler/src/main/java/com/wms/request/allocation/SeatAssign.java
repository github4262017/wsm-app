package com.wms.request.allocation;

import java.util.List;

public class SeatAssign {

	private String seatno;
	private  List<String> empid;
	public String getSeatno() {
		return seatno;
	}
	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}
	public List<String> getEmpid() {
		return empid;
	}
	public void setEmpid(List<String> empid) {
		this.empid = empid;
	}
	
	
	
}
