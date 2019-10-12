package com.wms.model.floormap;

import java.io.Serializable;
import java.util.Map;

public class FloorDetails implements Serializable {
	private static final long serialVersionUID = 1L;

	private String floorId;
	private Map<String,FloorMapInfo> floorMapInfo;
	private FloorSummaryStatus summaryStatus;
	
	public String getFloorId() {
		return floorId;
	}
	public void setFloorId(String floorId) {
		this.floorId = floorId;
	}
	public Map<String, FloorMapInfo> getFloorMapInfo() {
		return floorMapInfo;
	}
	public void setFloorMapInfo(Map<String, FloorMapInfo> floorMapInfo) {
		this.floorMapInfo = floorMapInfo;
	}
	public FloorSummaryStatus getSummaryStatus() {
		return summaryStatus;
	}
	public void setSummaryStatus(FloorSummaryStatus summaryStatus) {
		this.summaryStatus = summaryStatus;
	}
	
}
