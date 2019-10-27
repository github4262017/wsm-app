package com.wms.model.report;

import java.io.Serializable;
import java.util.Map;

public class UtilizationInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	Map<String,Map<String,DivisionInfo>> floorMap;

	public Map<String, Map<String, DivisionInfo>> getFloorMap() {
		return floorMap;
	}

	public void setFloorMap(Map<String, Map<String, DivisionInfo>> floorMap) {
		this.floorMap = floorMap;
	}
	
	
	
}
