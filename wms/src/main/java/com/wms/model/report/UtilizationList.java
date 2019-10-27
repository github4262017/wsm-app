package com.wms.model.report;

import java.io.Serializable;
import java.util.List;

public class UtilizationList implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DivisionInfo> utilizationReport;

	public List<DivisionInfo> getUtilizationReport() {
		return utilizationReport;
	}

	public void setUtilizationReport(List<DivisionInfo> utilizationReport) {
		this.utilizationReport = utilizationReport;
	}
	
}
