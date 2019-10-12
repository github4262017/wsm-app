package com.wms.request.allocation;

import java.io.Serializable;

public class AssignEmpInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String empid;
	private String shifttime;

	public String getEmpid() {
		return empid;
	}

	public void setEmpid(String empid) {
		this.empid = empid;
	}

	public String getShifttime() {
		return shifttime;
	}

	public void setShifttime(String shifttime) {
		this.shifttime = shifttime;
	}

}
