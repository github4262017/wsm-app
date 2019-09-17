package com.wms.request.allocation;

import java.io.Serializable;
import java.util.List;

import com.wms.model.FloorMapDetails;

public class SeatAllocationRequest implements Serializable{
	private String requestid;
	private List<FloorMapRequest> floorMap;
	private String star_time;
	private String end_time;
	private String uploadType;
	private String file_path;
	public String getRequestid() {
		return requestid;
	}
	public void setRequestid(String requestid) {
		this.requestid = requestid;
	}
	public List<FloorMapRequest> getFloorMap() {
		return floorMap;
	}
	public void setFloorMap(List<FloorMapRequest> floorMap) {
		this.floorMap = floorMap;
	}
	public String getStar_time() {
		return star_time;
	}
	public void setStar_time(String star_time) {
		this.star_time = star_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getUploadType() {
		return uploadType;
	}
	public void setUploadType(String uploadType) {
		this.uploadType = uploadType;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	
	
	
	
	/*
	 * {requestid:1223,floorMap: [  {floorid:123,seats[1,2,3]},  {floorid:123,seats[1,2,3]} ],startime:2019-01-02,endTime:2019-01-02 ,file_path : 'D:\Bulk',uploadType:'Image' }
	 * 
	 * 
	 */
	
}
