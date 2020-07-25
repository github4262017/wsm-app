package com.wms.dao.floormap;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.controller.AllocationController;
import com.wms.controller.UtilizationRequest;
import com.wms.dao.WmsBaseDAO;
import com.wms.model.allocation.SeatAllocation;
import com.wms.model.floormap.FloorDetails;
import com.wms.model.floormap.FloorMapInfo;
import com.wms.model.floormap.FloorSummaryStatus;
import com.wms.model.report.DivisionInfo;
import com.wms.model.report.UtilizationInfo;
import com.wms.model.report.UtilizationList;
import com.wms.model.report.WorkstationType;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.request.floormap.FloormapRequest;
import com.wms.util.EmployeeNameUtility;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.ConditionalFormattingRule;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.PatternFormatting;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.SheetConditionalFormatting;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.wms.model.EmpIDName;

@Repository
public class FloorMapDAO extends WmsBaseDAO {
	private final static Logger LOGGER = LoggerFactory.getLogger(FloorMapDAO.class);
	
	@Autowired  
	private EmployeeNameUtility empName;
	
	public FloorDetails getFloorMapDetails(String floorID,String projectID,String requestid){
		String coordinatesSQL = WMSConstant.coordinatesSQL+" '"+floorID+"' " ;
						
		if(projectID!=null && !projectID.equalsIgnoreCase("All")) {
			coordinatesSQL = coordinatesSQL + " AND ws.project_id = '"+projectID+"' " ;
		}
		if(requestid!=null) {
			coordinatesSQL = coordinatesSQL + " AND ws.request_id = '"+requestid+"' " ;
		}
		FloorSummaryStatus floorSummaryStatus = new FloorSummaryStatus();
		Map<String,FloorMapInfo> floorMap = getJdbcTemplate().query(coordinatesSQL, (ResultSet rs) -> {
			Map<String,FloorMapInfo> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("ws.workstation_no");
		    	FloorMapInfo floorMapInfo = new FloorMapInfo();
		    	floorMapInfo.setFloorid(rs.getString("ws.floor_id"));
		    	floorMapInfo.setCoordinates(rs.getString("wc.coordinates"));
		    	floorMapInfo.setProjectId(rs.getString("ws.project_id"));
		    	floorMapInfo.setEmployeeId(rs.getString("ws.employees"));
		    	int currentStatus = rs.getInt("ws.current_status");
		    	floorMapInfo.setStatus(String.valueOf(currentStatus));
		    	floorMapInfo.setWorkstation_no(workstationNo);
		    	floorMapInfo.setStatusColor(getStatusColor(currentStatus));
		    	floorMapD.put(workstationNo, floorMapInfo);
		    	setFloorSummary(floorSummaryStatus, currentStatus);
		    }
		    return floorMapD;
		});
		
		FloorDetails floorDetails = new FloorDetails();
		floorDetails.setFloorMapInfo(floorMap);
		floorDetails.setSummaryStatus(floorSummaryStatus);
		floorDetails.setFloorId(floorID);
		
		return floorDetails;
	}
	public FloorDetails getFloorMapDetailsStatus(FloormapRequest floormapRequest){
		//String floorID=floormapRequest.getFloorname();
		//String floorID="F2";
		//String projectID= "All";
		String floorID=floormapRequest.getFloorname();
		String projectID= floormapRequest.getProject_id();
		String requestid=floormapRequest.getRequest_id();  
		String floorStatus_coordinatesSQL = WMSConstant.floorStatus_coordinatesSQL+"'"+floorID+"'" ;
						
		if(projectID!=null && !projectID.equalsIgnoreCase("All")) {
			floorStatus_coordinatesSQL = floorStatus_coordinatesSQL + " AND ws.project_id = '"+projectID+"' " ;
		}
		if(requestid!=null) {
			floorStatus_coordinatesSQL = floorStatus_coordinatesSQL + " AND ws.request_id = '"+requestid+"' " ;
		}
		FloorSummaryStatus floorSummaryStatus = new FloorSummaryStatus();
		Map<String,FloorMapInfo> floorMap = getJdbcTemplate().query(floorStatus_coordinatesSQL, (ResultSet rs) -> {
			Map<String,FloorMapInfo> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("ws.workstation_no");
		    	FloorMapInfo floorMapInfo = new FloorMapInfo();
		    	floorMapInfo.setFloorid(rs.getString("ws.floor_id"));
		    	floorMapInfo.setCoordinates(rs.getString("wc.coordinates"));
		    	floorMapInfo.setProjectId(rs.getString("ws.project_id"));
		    	floorMapInfo.setEmployeeId(rs.getString("ws.employees"));
		    	
		    	String[] gid= rs.getString("ws.employees").split(",");
		    	
		    	String emp=null;
		    	StringBuffer sb = new StringBuffer();
		    	for (int i = 0; i < gid.length; i++) {
					
		    		HashMap<String, EmpIDName> employeeAll=empName.getName(gid[i]);
		    		if(employeeAll.containsKey(gid[i])) {
			    		emp=(String)employeeAll.get(gid[i]).getEmployee_name();
			    		
			    		if (i > 0) {
			    			sb.append(",");  
			    		} 
			    		sb.append(gid[i]);
			    		sb.append(WMSConstant.HYPHEN);
			    		sb.append(emp); 
			    		floorMapInfo.setEmployeeName(sb.toString()); 
		    		}
				}    
		    	
		    	int currentStatus = rs.getInt("ws.current_status");
		    	floorMapInfo.setStatus(String.valueOf(currentStatus));
		    	floorMapInfo.setWorkstation_no(workstationNo);
		    	floorMapInfo.setStatusColor(getStatusColor(currentStatus));
		    	floorMapD.put(workstationNo, floorMapInfo);
		    	setFloorSummary(floorSummaryStatus, currentStatus);
		    }
		    return floorMapD;
		});
		
		FloorDetails floorDetails = new FloorDetails();
		floorDetails.setFloorMapInfo(floorMap);
		floorDetails.setSummaryStatus(floorSummaryStatus);
		floorDetails.setFloorId(floorID);
		
		return floorDetails;
	}
	private void setFloorSummary(FloorSummaryStatus floorSummaryStatus, int currentStatus) {
		try {
		if(currentStatus==WMSConstant.SEAT_STATUS_VACANT) {
			if(floorSummaryStatus.getTotalVacant()==0) {
				floorSummaryStatus.setTotalVacant(1);
			}else {
				int totalVacant = floorSummaryStatus.getTotalVacant();
				totalVacant++;
				floorSummaryStatus.setTotalVacant(totalVacant);
			}
		}
		if(currentStatus==WMSConstant.SEAT_STATUS_ALLOCATED) {
			if(floorSummaryStatus.getTotalAllocated()==0) {
				floorSummaryStatus.setTotalAllocated(1);
			}else {
				int totalAllocated = floorSummaryStatus.getTotalAllocated();
				totalAllocated++;
				floorSummaryStatus.setTotalAllocated(totalAllocated);
			}
		}
		if(currentStatus==WMSConstant.SEAT_STATUS_ASSIGNED) {
			if(floorSummaryStatus.getTotalAssigned()==0) {
				floorSummaryStatus.setTotalAssigned(1);
			}else {
				int totalAssigned = floorSummaryStatus.getTotalAssigned();
				totalAssigned++;
				floorSummaryStatus.setTotalAssigned(totalAssigned);
			}
		}
		if(currentStatus==WMSConstant.SEAT_STATUS_UTILIZED) {
			if(floorSummaryStatus.getTotalUtilized()==0) {
				floorSummaryStatus.setTotalUtilized(1);
			}else {
				int totalUtilized = floorSummaryStatus.getTotalUtilized();
				totalUtilized++;
				floorSummaryStatus.setTotalUtilized(totalUtilized);
			}
		}
	}
	catch(Exception e) {
		LOGGER.error("setFloorSummary Excception :"+ e);
	}
		
	}
	
	public String getStatusColor(int status) {
		String colorStatus = "";
		switch (status) {
			case WMSConstant.SEAT_STATUS_VACANT:
				colorStatus = WMSConstant.SEAT_STATUS_VACANT_COLOR;
			break;
			case WMSConstant.SEAT_STATUS_ALLOCATED:
				colorStatus = WMSConstant.SEAT_STATUS_ALLOCATED_COLOR;
				break;
			case WMSConstant.SEAT_STATUS_ASSIGNED:
				colorStatus = WMSConstant.SEAT_STATUS_ASSIGNED_COLOR;
				break;
			case WMSConstant.SEAT_STATUS_UTILIZED:
				colorStatus = WMSConstant.SEAT_STATUS_UTILIZED_COLOR;
				break;
		default:
			break;
		}
		return colorStatus;
		
	}
	
	/**
	 * This method is used to update the workstation status during Seat Allocation By Facility Admin
	 * @param detailsList
	 * @param batchSize
	 * @return
	 */
	public int[][] batchUpdateAllocateWorkstationStatus(List<SeatAllocation> detailsList, int batchSize) {
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
        		WMSConstant.batchUpdateAllocateWorkstationStatus,
                detailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<SeatAllocation>() {
                    public void setValues(PreparedStatement ps, SeatAllocation seatAllocation) 
						throws SQLException {
                        ps.setString(1, seatAllocation.getRequest_id());
                        ps.setString(2, seatAllocation.getProject_id());
                        ps.setInt(3, WMSConstant.SEAT_STATUS_ALLOCATED); 
                        ps.setString(4, seatAllocation.getSeat_number());  
                    }
                });
        return updateCounts;
    }
	
	/**
	 * This method is used to update the workstation status Seat Assignment by Project Manager
	 * @param employeeAsignDetailsList
	 * @param batchSize
	 * @return
	 */
	public int[][] batchUpdateWorkstationStatusAssign(List<EmployeeSeatAsign> employeeAsignDetailsList, int batchSize) {
		List<EmployeeSeatAsign>  mergedList = mergeEmployeeIds(employeeAsignDetailsList);
        int[][] updateCounts = getJdbcTemplate().batchUpdate( 
        		WMSConstant.batchUpdateWorkstationStatusAssign,
                mergedList,
                batchSize,
                new ParameterizedPreparedStatementSetter<EmployeeSeatAsign>() { 
                    public void setValues(PreparedStatement ps, EmployeeSeatAsign seatAssign) 
						throws SQLException {                        
                        ps.setString(1, seatAssign.getEmp_id()); 
                        ps.setInt(2, WMSConstant.SEAT_STATUS_ASSIGNED);
                        ps.setString(3, seatAssign.getSeat_number());
                    }
                });  
        return updateCounts;
    }
	
	/**
	 * This method is used to merge the employee ids before update the workstation status
	 * @param employeeAsignDetailsList
	 * @return
	 */
	public List<EmployeeSeatAsign>  mergeEmployeeIds(List<EmployeeSeatAsign> employeeAsignDetailsList){
		List<EmployeeSeatAsign> mergedList = new ArrayList<EmployeeSeatAsign>();
		
		Map<String,EmployeeSeatAsign> workstationMap = new HashMap<>();
		for (EmployeeSeatAsign employeeSeatAsign : employeeAsignDetailsList) {
			String wStation = employeeSeatAsign.getSeat_number();
			if(workstationMap.containsKey(wStation)) {
				StringBuilder employeeConcat = new StringBuilder();
				employeeConcat.append(workstationMap.get(wStation).getEmp_id());
				employeeConcat.append(",");
				employeeConcat.append(employeeSeatAsign.getEmp_id());
				workstationMap.get(wStation).setEmp_id(employeeConcat.toString());
			}else {
				workstationMap.put(wStation, employeeSeatAsign);
			}
		}
		
		for (Map.Entry<String, EmployeeSeatAsign> workstationEntry : workstationMap.entrySet()) {
			mergedList.add(workstationEntry.getValue());
		}
		return mergedList;
	}
	
	/**
	 * This method is used to update the workstation status during Seat Deallocation By Facility Admin
	 * @param detailsList
	 * @param batchSize
	 * @return
	 */
	public void batchUpdateDeAllocateWorkstationStatus(AllocationRequest allocationRequest, int batchSize) {
		int updateStatus = 0;
		 String SQLDeAllocateWorkstationStatus = WMSConstant.SQLDeAllocateWorkstationStatus;
	      try {
	    	 updateStatus = getJdbcTemplate().update(SQLDeAllocateWorkstationStatus,allocationRequest.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,allocationRequest.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
    }
	
	/**
	 * To get the workstation status count
	 * @param floorID
	 * @param projectID
	 * @param requestid
	 * @return
	 */
	public void getWorstationStatusCount(String floorID,String projectID,String requestid){
		String statusCountSQL = WMSConstant.statusCountSQL +" '"+floorID+"' group by current_status " ;
		Map<String,FloorMapInfo> floorMap = getJdbcTemplate().query(statusCountSQL, (ResultSet rs) -> {
			Map<String,FloorMapInfo> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("wscount");
		    }
		    return floorMapD;
		});
	}
	
	
	public UtilizationInfo getWorkstationReport(String field){
		String divisionSQLWorkstationReport = WMSConstant.divisionSQLWorkstationReport ;
						
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(divisionSQLWorkstationReport, (ResultSet rs) -> {
			Map<String,Map<String,DivisionInfo>> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String division = rs.getString("sed.division");
		    	String projectid = rs.getString("ws.project_id");
		    	String floorid = rs.getString("ws.floor_id");
		    	int currentStatus = rs.getInt("ws.current_status");
		    	String divisionKey = division.toLowerCase().trim();
		    	String projectidKey = projectid.toLowerCase().trim();
		    	
		    	if(floorMapD.containsKey(divisionKey)) {
		    		Map<String,DivisionInfo> innerMap = floorMapD.get(divisionKey);
		    		if(innerMap.containsKey(projectidKey)) {
		    			DivisionInfo divisionInfo = innerMap.get(projectidKey);
		    			if(currentStatus==0) {
		    				int vacant = divisionInfo.getVacant();
		    				vacant++;  
			    			divisionInfo.setVacant(vacant);
			    		}
			    		if(currentStatus==1) {
			    			int allocated = divisionInfo.getAllocated();
			    			allocated++;  
			    			divisionInfo.setAllocated(allocated);
			    		}
			    		if(currentStatus==2) {
			    			int assigned = divisionInfo.getAssigned();
			    			assigned++; 
			    			divisionInfo.setAssigned(assigned);
			    		}
			    		if(currentStatus==3) {
			    			int utilized = divisionInfo.getUtilized();
			    			utilized++; 
			    			divisionInfo.setUtilized(utilized);
			    		}
		    		}else {
		    			DivisionInfo divisionInfo = new DivisionInfo();
			    		divisionInfo.setDivision(division);
			    		divisionInfo.setProjectName(projectid);
			    		divisionInfo.setFloorid(floorid);
			    		if(currentStatus==0) {
			    			divisionInfo.setVacant(1);
			    		}
			    		if(currentStatus==1) {
			    			divisionInfo.setAllocated(1);
			    		}
			    		if(currentStatus==2) {
			    			divisionInfo.setAssigned(1);
			    		}
			    		if(currentStatus==3) {
			    			divisionInfo.setUtilized(1);
			    		}
			    		innerMap.put(projectidKey, divisionInfo);
		    		}
		    	}else {
		    		DivisionInfo divisionInfo = new DivisionInfo();
		    		divisionInfo.setDivision(division);
		    		divisionInfo.setProjectName(projectid);
		    		divisionInfo.setFloorid(floorid);
		    		if(currentStatus==0) {
		    			divisionInfo.setVacant(1);
		    		}
		    		if(currentStatus==1) {
		    			divisionInfo.setAllocated(1);
		    		}
		    		if(currentStatus==2) {
		    			divisionInfo.setAssigned(1);
		    		}
		    		if(currentStatus==3) {
		    			divisionInfo.setUtilized(1);
		    		}
		    		Map<String,DivisionInfo> innerMap = new HashMap<>();
		    		innerMap.put(projectidKey, divisionInfo);
		    		floorMapD.put(divisionKey, innerMap);
		    	}
		    }
		    return floorMapD;
		});
		
		UtilizationInfo utilizationInfo = new UtilizationInfo();
		utilizationInfo.setFloorMap(floorMap);
		return utilizationInfo;
	}

	
	public UtilizationList getWorkstationReportList(UtilizationRequest utilizationRequest){
		String fa_reportList =WMSConstant.fa_reportList;
						
		Map<String,DivisionInfo> tfloorMapD = new HashMap<>();
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(fa_reportList, (ResultSet rs) -> {
			Map<String,Map<String,DivisionInfo>> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String division = rs.getString("sed.division");
		    	String projectid = rs.getString("ws.project_id");
		    	String floorid = rs.getString("ws.floor_id");
		    	int currentStatus = rs.getInt("ws.current_status");
		    	String divisionKey = division.toLowerCase().trim();
		    	String projectidKey = projectid.toLowerCase().trim();
		    	setDivisionTotalCount(tfloorMapD,division,currentStatus);
		    	if(floorMapD.containsKey(divisionKey)) {
		    		Map<String,DivisionInfo> innerMap = floorMapD.get(divisionKey);
		    		if(innerMap.containsKey(projectidKey)) {
		    			DivisionInfo divisionInfo = innerMap.get(projectidKey);
		    			if(currentStatus==0) {
		    				int vacant = divisionInfo.getVacant();
		    				vacant++;  
			    			divisionInfo.setVacant(vacant);
			    		}
			    		if(currentStatus==1) {
			    			int allocated = divisionInfo.getAllocated();
			    			allocated++;  
			    			divisionInfo.setAllocated(allocated);
			    		}
			    		if(currentStatus==2) {
			    			int assigned = divisionInfo.getAssigned();
			    			assigned++; 
			    			divisionInfo.setAssigned(assigned);
			    		}
			    		if(currentStatus==3) {
			    			int utilized = divisionInfo.getUtilized();
			    			utilized++; 
			    			divisionInfo.setUtilized(utilized);
			    		}
		    		}else {
		    			DivisionInfo divisionInfo = new DivisionInfo();
			    		divisionInfo.setDivision(division);
			    		divisionInfo.setProjectName(projectid);
			    		divisionInfo.setFloorid(floorid);
			    		if(currentStatus==0) {
			    			divisionInfo.setVacant(1);
			    		}
			    		if(currentStatus==1) {
			    			divisionInfo.setAllocated(1);
			    		}
			    		if(currentStatus==2) {
			    			divisionInfo.setAssigned(1);
			    		}
			    		if(currentStatus==3) {
			    			divisionInfo.setUtilized(1);
			    		}
			    		innerMap.put(projectidKey, divisionInfo);
		    		}
		    	}else {
		    		DivisionInfo divisionInfo = new DivisionInfo();
		    		divisionInfo.setDivision(division);
		    		divisionInfo.setProjectName(projectid);
		    		divisionInfo.setFloorid(floorid);
		    		if(currentStatus==0) {
		    			divisionInfo.setVacant(1);
		    		}
		    		if(currentStatus==1) {
		    			divisionInfo.setAllocated(1);
		    		}
		    		if(currentStatus==2) {
		    			divisionInfo.setAssigned(1);
		    		}
		    		if(currentStatus==3) {
		    			divisionInfo.setUtilized(1);
		    		}
		    		Map<String,DivisionInfo> innerMap = new HashMap<>();
		    		innerMap.put(projectidKey, divisionInfo);
		    		floorMapD.put(divisionKey, innerMap);
		    	}
		    }
		    return floorMapD;
		});
		
		List<DivisionInfo> divisionList = new ArrayList<DivisionInfo>();
		 for (Map.Entry<String,Map<String,DivisionInfo>> utilizationMap : floorMap.entrySet())  {
	            DivisionInfo division1 = new DivisionInfo();
	            if(utilizationMap.getKey().equalsIgnoreCase("isbl")) {
		            	divisionList.add(tfloorMapD.get("isbl1"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("infosec")) {
	            		divisionList.add(tfloorMapD.get("infosec1"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("sard")) {
		            	divisionList.add(tfloorMapD.get("sard1"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("p&c")) {
	            		divisionList.add(tfloorMapD.get("p&c1"));
	            	}
	            Map<String,DivisionInfo> innerMap = utilizationMap.getValue();
	            for (Map.Entry<String,DivisionInfo> divisionMap : innerMap.entrySet())  {
	            	DivisionInfo division = divisionMap.getValue();
	            	divisionList.add(division);
	            }
	    } 
		
		UtilizationList utilizationList = new UtilizationList();
		utilizationList.setUtilizationReport(divisionList);
		return utilizationList;
	}
	
	
	public UtilizationList getWorkstationReportList(String field){ 
		String divisionSQLWorkstationReportList = WMSConstant.divisionSQLWorkstationReportList ;
						
		Map<String,DivisionInfo> tfloorMapD = new HashMap<>();
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(divisionSQLWorkstationReportList, (ResultSet rs) -> {
			Map<String,Map<String,DivisionInfo>> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String division = rs.getString("sed.division");
		    	String projectid = rs.getString("ws.project_id");
		    	String floorid = rs.getString("ws.floor_id");
		    	int currentStatus = rs.getInt("ws.current_status");
		    	String divisionKey = division.toLowerCase().trim();
		    	String projectidKey = projectid.toLowerCase().trim();
		    	setDivisionTotalCount(tfloorMapD,division,currentStatus);
		    	if(floorMapD.containsKey(divisionKey)) {
		    		Map<String,DivisionInfo> innerMap = floorMapD.get(divisionKey);
		    		if(innerMap.containsKey(projectidKey)) {
		    			DivisionInfo divisionInfo = innerMap.get(projectidKey);
		    			if(currentStatus==0) {
		    				int vacant = divisionInfo.getVacant();
		    				vacant++;  
			    			divisionInfo.setVacant(vacant);
			    		}
			    		if(currentStatus==1) {
			    			int allocated = divisionInfo.getAllocated();
			    			allocated++;  
			    			divisionInfo.setAllocated(allocated);
			    		}
			    		if(currentStatus==2) {
			    			int assigned = divisionInfo.getAssigned();
			    			assigned++; 
			    			divisionInfo.setAssigned(assigned);
			    		}
			    		if(currentStatus==3) {
			    			int utilized = divisionInfo.getUtilized();
			    			utilized++; 
			    			divisionInfo.setUtilized(utilized);
			    		}
		    		}else {
		    			DivisionInfo divisionInfo = new DivisionInfo();
			    		divisionInfo.setDivision(division);
			    		divisionInfo.setProjectName(projectid);
			    		divisionInfo.setFloorid(floorid);
			    		if(currentStatus==0) {
			    			divisionInfo.setVacant(1);
			    		}
			    		if(currentStatus==1) {
			    			divisionInfo.setAllocated(1);
			    		}
			    		if(currentStatus==2) {
			    			divisionInfo.setAssigned(1);
			    		}
			    		if(currentStatus==3) {
			    			divisionInfo.setUtilized(1);
			    		}
			    		innerMap.put(projectidKey, divisionInfo);
		    		}
		    	}else {
		    		DivisionInfo divisionInfo = new DivisionInfo();
		    		divisionInfo.setDivision(division);
		    		divisionInfo.setProjectName(projectid);
		    		divisionInfo.setFloorid(floorid);
		    		if(currentStatus==0) {
		    			divisionInfo.setVacant(1);
		    		}
		    		if(currentStatus==1) {
		    			divisionInfo.setAllocated(1);
		    		}
		    		if(currentStatus==2) {
		    			divisionInfo.setAssigned(1);
		    		}
		    		if(currentStatus==3) {
		    			divisionInfo.setUtilized(1);
		    		}
		    		Map<String,DivisionInfo> innerMap = new HashMap<>();
		    		innerMap.put(projectidKey, divisionInfo);
		    		floorMapD.put(divisionKey, innerMap);
		    	}
		    }
		    return floorMapD;
		});
		
		List<DivisionInfo> divisionList = new ArrayList<DivisionInfo>();
		 for (Map.Entry<String,Map<String,DivisionInfo>> utilizationMap : floorMap.entrySet())  {
	            DivisionInfo division1 = new DivisionInfo();
	            if(utilizationMap.getKey().equalsIgnoreCase("isbl")) {
		            	divisionList.add(tfloorMapD.get("isbl1"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("infosec")) {
	            		divisionList.add(tfloorMapD.get("infosec1"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("sard")) {
		            	divisionList.add(tfloorMapD.get("sard1"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("p&c")) {
	            		divisionList.add(tfloorMapD.get("p&c1"));
	            	}
	            Map<String,DivisionInfo> innerMap = utilizationMap.getValue();
	            for (Map.Entry<String,DivisionInfo> divisionMap : innerMap.entrySet())  {
	            	DivisionInfo division = divisionMap.getValue();
	            	divisionList.add(division);
	            }
	    } 
		
		UtilizationList utilizationList = new UtilizationList();
		utilizationList.setUtilizationReport(divisionList);
		return utilizationList;
	}
	private void setDivisionTotalCount(Map<String, DivisionInfo> tfloorMapD, String division, int currentStatus) {
		
		if (tfloorMapD.containsKey(division.toLowerCase()+"1")) {
			DivisionInfo divisionInfo = tfloorMapD.get(division.toLowerCase()+"1");
			if (currentStatus == 0) {
				int vacant = divisionInfo.getVacant();
				vacant++;
				divisionInfo.setVacant(vacant);
			}
			if (currentStatus == 1) {
				int allocated = divisionInfo.getAllocated();
				allocated++;
				divisionInfo.setAllocated(allocated);
			}
			if (currentStatus == 2) {
				int assigned = divisionInfo.getAssigned();
				assigned++;
				divisionInfo.setAssigned(assigned);
			}
			if (currentStatus == 3) {
				int utilized = divisionInfo.getUtilized();
				utilized++;
				divisionInfo.setUtilized(utilized);
			}
		}else {
			DivisionInfo divisionInfo = new DivisionInfo();
			if (currentStatus == 0) {
				int vacant = divisionInfo.getVacant();
				vacant++;
				divisionInfo.setVacant(vacant);
			}
			if (currentStatus == 1) {
				int allocated = divisionInfo.getAllocated();
				allocated++;
				divisionInfo.setAllocated(allocated);
			}
			if (currentStatus == 2) {
				int assigned = divisionInfo.getAssigned();
				assigned++;
				divisionInfo.setAssigned(assigned);
			}
			if (currentStatus == 3) {
				int utilized = divisionInfo.getUtilized();
				utilized++;
				divisionInfo.setUtilized(utilized);
			}
			divisionInfo.setDivision(division.toLowerCase()+"1");
			tfloorMapD.put(division.toLowerCase()+"1", divisionInfo);
		}
		
		
	}

	
}
