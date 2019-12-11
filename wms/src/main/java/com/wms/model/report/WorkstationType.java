package com.wms.model.report;

import java.util.Map;

public class WorkstationType {

	private long sard_WS_Count; 
	private long sard_Cabin_Count;
	private long sard_ODC_Count;
	private long sard_Total_Count;
    private long sard_Head_Count;
	
	private long isbl_WS_Count;   
	private long isbl_Cabin_Count;
	private long isbl_ODC_Count;  
	private long isbl_Total_Count;
    private long isbl_Head_Count;
    
    private long infosec_WS_Count ;   
	private long infosec_Cabin_Count;
	private long infosec_ODC_Count; 
	private long infosec_Total_Count;
    private long infosec_Head_Count; 
		
	private long pandc_WS_Count;
	private long pandc_Cabin_Count;
	private long pandc_ODC_Count; 
	private long pandc_Total_Count;
	private long pandc_Head_Count;	
	
	private String division;
	private String projectName;
	private String floor_id;
	private String benchType;
	
	private long WS_Count; 
	private long Cabin_Count;
	private long ODC_Count;
	private long Total_Count;
    private long Head_Count;
    
    private long total_WS_Count; 
	private long total_Cabin_Count;
	private long total_ODC_Count;
	private long total_Total_Count;
    private long total_Head_Count;
    
    
	
	public long getWS_Count() {
		return WS_Count;
	}
	public void setWS_Count(long wS_Count) {
		WS_Count = wS_Count;
	}
	public long getCabin_Count() {
		return Cabin_Count;
	}
	public void setCabin_Count(long cabin_Count) {
		Cabin_Count = cabin_Count;
	}
	public long getODC_Count() {
		return ODC_Count;
	}
	public void setODC_Count(long oDC_Count) {
		ODC_Count = oDC_Count;
	}
	public long getTotal_Count() {
		return Total_Count;
	}
	public void setTotal_Count(long total_Count) {
		Total_Count = total_Count;
	}
	public long getHead_Count() {
		return Head_Count;
	}
	public void setHead_Count(long head_Count) {
		Head_Count = head_Count;
	}
	public long getSard_WS_Count() {
		return sard_WS_Count;
	}
	public void setSard_WS_Count(long sard_WS_Count) {
		this.sard_WS_Count = sard_WS_Count;
	}
	public long getSard_Cabin_Count() {
		return sard_Cabin_Count;
	}
	public void setSard_Cabin_Count(long sard_Cabin_Count) {
		this.sard_Cabin_Count = sard_Cabin_Count;
	}
	public long getSard_ODC_Count() {
		return sard_ODC_Count;
	}
	public void setSard_ODC_Count(long sard_ODC_Count) {
		this.sard_ODC_Count = sard_ODC_Count;
	}
	public long getSard_Total_Count() {
		return sard_Total_Count;
	}
	public void setSard_Total_Count(long sard_Total_Count) {
		this.sard_Total_Count = sard_Total_Count;
	}
	public long getSard_Head_Count() {
		return sard_Head_Count;
	}
	public void setSard_Head_Count(long sard_Head_Count) {
		this.sard_Head_Count = sard_Head_Count;
	}
	public long getIsbl_WS_Count() {
		return isbl_WS_Count;
	}
	public void setIsbl_WS_Count(long isbl_WS_Count) {
		this.isbl_WS_Count = isbl_WS_Count;
	}
	public long getIsbl_Cabin_Count() {
		return isbl_Cabin_Count;
	}
	public void setIsbl_Cabin_Count(long isbl_Cabin_Count) {
		this.isbl_Cabin_Count = isbl_Cabin_Count;
	}
	public long getIsbl_ODC_Count() {
		return isbl_ODC_Count;
	}
	public void setIsbl_ODC_Count(long isbl_ODC_Count) {
		this.isbl_ODC_Count = isbl_ODC_Count;
	}
	public long getIsbl_Total_Count() {
		return isbl_Total_Count;
	}
	public void setIsbl_Total_Count(long isbl_Total_Count) {
		this.isbl_Total_Count = isbl_Total_Count;
	}
	public long getIsbl_Head_Count() {
		return isbl_Head_Count;
	}
	public void setIsbl_Head_Count(long isbl_Head_Count) {
		this.isbl_Head_Count = isbl_Head_Count;
	}
	public long getInfosec_WS_Count() {
		return infosec_WS_Count;
	}
	public void setInfosec_WS_Count(long infosec_WS_Count) {
		this.infosec_WS_Count = infosec_WS_Count;
	}
	public long getInfosec_Cabin_Count() {
		return infosec_Cabin_Count;
	}
	public void setInfosec_Cabin_Count(long infosec_Cabin_Count) {
		this.infosec_Cabin_Count = infosec_Cabin_Count;
	}
	public long getInfosec_ODC_Count() {
		return infosec_ODC_Count;
	}
	public void setInfosec_ODC_Count(long infosec_ODC_Count) {
		this.infosec_ODC_Count = infosec_ODC_Count;
	}
	public long getInfosec_Total_Count() {
		return infosec_Total_Count;
	}
	public void setInfosec_Total_Count(long infosec_Total_Count) {
		this.infosec_Total_Count = infosec_Total_Count;
	}
	public long getInfosec_Head_Count() {
		return infosec_Head_Count;
	}
	public void setInfosec_Head_Count(long infosec_Head_Count) {
		this.infosec_Head_Count = infosec_Head_Count;
	}
	public long getPandc_WS_Count() {
		return pandc_WS_Count;
	}
	public void setPandc_WS_Count(long pandc_WS_Count) {
		this.pandc_WS_Count = pandc_WS_Count;
	}
	public long getPandc_Cabin_Count() {
		return pandc_Cabin_Count;
	}
	public void setPandc_Cabin_Count(long pandc_Cabin_Count) {
		this.pandc_Cabin_Count = pandc_Cabin_Count;
	}
	public long getPandc_ODC_Count() {
		return pandc_ODC_Count;
	}
	public void setPandc_ODC_Count(long pandc_ODC_Count) {
		this.pandc_ODC_Count = pandc_ODC_Count;
	}
	public long getPandc_Total_Count() {
		return pandc_Total_Count;
	}
	public void setPandc_Total_Count(long pandc_Total_Count) {
		this.pandc_Total_Count = pandc_Total_Count;
	}
	public long getPandc_Head_Count() {
		return pandc_Head_Count;
	}
	public void setPandc_Head_Count(long pandc_Head_Count) {
		this.pandc_Head_Count = pandc_Head_Count;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	public String getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(String floor_id) {
		this.floor_id = floor_id;
	}
	public String getBenchType() {
		return benchType;
	}
	public void setBenchType(String benchType) {
		this.benchType = benchType;
	}
	public long getTotal_WS_Count() {
		return total_WS_Count;
	}
	public void setTotal_WS_Count(long total_WS_Count) {
		this.total_WS_Count = total_WS_Count;
	}
	public long getTotal_Cabin_Count() {
		return total_Cabin_Count;
	}
	public void setTotal_Cabin_Count(long total_Cabin_Count) {
		this.total_Cabin_Count = total_Cabin_Count;
	}
	public long getTotal_ODC_Count() {
		return total_ODC_Count;
	}
	public void setTotal_ODC_Count(long total_ODC_Count) {
		this.total_ODC_Count = total_ODC_Count;
	}
	public long getTotal_Total_Count() {
		return total_Total_Count;
	}
	public void setTotal_Total_Count(long total_Total_Count) {
		this.total_Total_Count = total_Total_Count;
	}
	public long getTotal_Head_Count() {
		return total_Head_Count;
	}
	public void setTotal_Head_Count(long total_Head_Count) {
		this.total_Head_Count = total_Head_Count;
	}
	
	  
}
