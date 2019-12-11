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
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.controller.AllocationController;
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

@Repository
public class FloorMapDAO extends WmsBaseDAO {
	private final static Logger LOGGER = LoggerFactory.getLogger(FloorMapDAO.class);	 
	public FloorDetails getFloorMapDetails(String floorID,String projectID,String requestid){
		String coordinatesSQL = 
				"SELECT wc.coordinates, ws.floor_id, ws.workstation_no, ws.request_id, 	ws.employees, ws.current_status, ws.project_id "
						+ "	FROM " 
						+ " wms_coordinates wc, "
						+ " wms_workstation_status ws"
						+"	WHERE " 
						+ " ws.workstation_no = wc.workstation_no "
						+ " AND ws.floor_id = '"+floorID+"' " ;
						
		if(projectID!=null && !projectID.equalsIgnoreCase("All")) {
			coordinatesSQL = coordinatesSQL + " AND ws.project_id = '"+projectID+"' " ;
		}
		if(requestid!=null) {
			coordinatesSQL = coordinatesSQL + " AND ws.request_id = '"+requestid+"' " ;
		}
		System.out.println("coordinatesSQL"+coordinatesSQL);
		FloorSummaryStatus floorSummaryStatus = new FloorSummaryStatus();
		Map<String,FloorMapInfo> floorMap = getJdbcTemplate().query(coordinatesSQL, (ResultSet rs) -> {
			Map<String,FloorMapInfo> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("ws.workstation_no");
		    	System.out.println("workstationNo"+workstationNo);
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
		System.out.println("Batch Allocation Process into workstation_status");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "update wms_workstation_status set request_id=?, project_id=?, current_status=? where workstation_no = ? ",
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
        System.out.println("No.of records updated in workstation_status Allocation"+ updateCounts);
        return updateCounts;
    }
	
	/**
	 * This method is used to update the workstation status Seat Assignment by Project Manager
	 * @param employeeAsignDetailsList
	 * @param batchSize
	 * @return
	 */
	public int[][] batchUpdateWorkstationStatusAssign(List<EmployeeSeatAsign> employeeAsignDetailsList, int batchSize) {
		System.out.println("Batch seat Assign in into workstation_status");
		List<EmployeeSeatAsign>  mergedList = mergeEmployeeIds(employeeAsignDetailsList);
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "update wms_workstation_status set employees=?, current_status=? where workstation_no = ?",
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
        System.out.println("No.of records updated in workstation_status Assignment"+ updateCounts);
        return updateCounts;
    }
	
	/**
	 * This method is used to merge the employee ids before update the workstation status
	 * @param employeeAsignDetailsList
	 * @return
	 */
	public List<EmployeeSeatAsign>  mergeEmployeeIds(List<EmployeeSeatAsign> employeeAsignDetailsList){
		List<EmployeeSeatAsign> mergedList = new ArrayList<EmployeeSeatAsign>();
		System.out.println("Size Before Merge"+ employeeAsignDetailsList.size());
		
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
		
		System.out.println("Size After Merge"+ workstationMap.size());
		for (Map.Entry<String, EmployeeSeatAsign> workstationEntry : workstationMap.entrySet()) {
			System.out.println("Merged List" + workstationEntry.getKey() + "Employee id" + workstationEntry.getValue().getEmp_id());
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
		 String SQL = "update wms_workstation_status set request_id=?, project_id=?, employees=?, current_status=? where request_id = ?";
	      try {
	    	 updateStatus = getJdbcTemplate().update(SQL,allocationRequest.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,allocationRequest.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
        System.out.println("No.of records updated in workstation_status Deallaction"+ updateStatus);
    }
	
	/**
	 * To get the workstation status count
	 * @param floorID
	 * @param projectID
	 * @param requestid
	 * @return
	 */
	public void getWorstationStatusCount(String floorID,String projectID,String requestid){
		String statusCountSQL = 
				"SELECT " + 
				" count(workstation_no) as wscount, current_status  " + 
				" FROM  " + 
				" wms_workstation_status  " + 
				" where floor_id = '"+floorID+"' " +
				" group by current_status " ;
		System.out.println("statusCountSQL"+statusCountSQL);
		Map<String,FloorMapInfo> floorMap = getJdbcTemplate().query(statusCountSQL, (ResultSet rs) -> {
			Map<String,FloorMapInfo> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("wscount");
		    }
		    return floorMapD;
		});
	}
	
	
	public UtilizationInfo getWorkstationReport(String field){
		String divisionSQL = 
				" select  " + 
				"sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status  " + 
				"from  " + 
				"wms_workstation_status ws  " + 
				"join wms_sony_emp_details sed on ws.workstation_no = sed.workstation_no and ws.project_id = sed.project_name group by ws.workstation_no  " + 
				"order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
						
		System.out.println("divisionSQL"+divisionSQL);
		
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(divisionSQL, (ResultSet rs) -> {
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
			    			System.out.println("Division" + division + "Project" + projectid + "Assigned" + assigned);
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

	
	public UtilizationList getWorkstationReportList(String field){
		String divisionSQL = 
				" select  " + 
				"sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status  " + 
				"from  " + 
				"wms_workstation_status ws  " + 
				"join wms_sony_emp_details sed on ws.workstation_no = sed.workstation_no and ws.project_id = sed.project_name group by ws.workstation_no  " + 
				"order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
						
		System.out.println("divisionSQL"+divisionSQL);
		
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(divisionSQL, (ResultSet rs) -> {
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
			    			System.out.println("Division" + division + "Project" + projectid + "Assigned" + assigned);
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
	            System.out.println("Key = " + utilizationMap.getKey() + ", Value = " + utilizationMap.getValue()); 
	            DivisionInfo division1 = new DivisionInfo();
	            if(utilizationMap.getKey().equals("isbl")) {
	            	division1.setDivision("isbl1");
	            	division1.setAllocated(1261);
            		division1.setAssigned(122);
            		division1.setVacant(122); 
            		division1.setUtilized(111);; 
            		divisionList.add(division1);
            		System.out.println("Test div:"+division1.getAssigned());
            	}
	            if(utilizationMap.getKey().equals("infosec")) {
	            	division1.setDivision("infosec1");
	            	division1.setAllocated(212);  
	            	division1.setAssigned(122);  
	            	division1.setVacant(122); 
            		division1.setUtilized(111);; 
            		//System.out.println("Test div:"+division.getAssigned());
	            	divisionList.add(division1);
            	}
	            if(utilizationMap.getKey().equals("sard")) {
	            	division1.setDivision("sard1");
	            	division1.setAllocated(473);  
	            	division1.setAssigned(122);  
	            	division1.setVacant(122); 
            		division1.setUtilized(111);; 
	            	divisionList.add(division1);
            		//System.out.println("Test div:"+division.getAssigned());
            	}
	            if(utilizationMap.getKey().equals("p&c")) {
	            	division1.setDivision("p&c1");
	            	division1.setAllocated(89);  
	            	division1.setAssigned(122);  
	            	division1.setVacant(122); 
            		division1.setUtilized(111);; 
	            	divisionList.add(division1);
            		//System.out.println("Test div:"+division.getAssigned());
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
	public WorkstationType getFloorWiseReport() {
    
		String sardSQL = "select * from  wms_workstation_status ws where"
				+ " workstation_no in (select workstation_no from wms_sony_emp_details where division = 'SARD')";
		//ws.current_status=2
		System.out.println("sardSQL" + sardSQL);
		String floor = null;
		
		//createExcelHeaders();
		
		WorkstationType workstationType = new WorkstationType();
		// workstationType.setFloorMap(floorMap);
		return workstationType;
	}
	
	public WorkstationType getReportList(){ 
		String divisionSQL = 
				"select wc.bench_type,sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status " + 
				"from  " + 
				"wms_workstation_status ws  " + 
				"join wms_sony_emp_details sed on ws.workstation_no = sed.workstation_no and ws.project_id = sed.project_name " + 
				"inner join wms_coordinates wc on ws.workstation_no = wc.workstation_no group by ws.workstation_no "+
				"order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
		
		System.out.println("divisionSQLtest"+divisionSQL); //group by ws.workstation_no
	    
		Map<String, WorkstationType> totalCountMap = new HashMap<>();
		Map<String, WorkstationType> vacantCountMap = new HashMap<>();
			Map<String, Map<String,WorkstationType>> floorWiseMap = getJdbcTemplate().query(divisionSQL, (ResultSet rs) -> {
				Map<String, Map<String,WorkstationType>> floorMapsard = new HashMap<>();
				while (rs.next()) {
					//System.out.println("workstationNo" + workstationNo);
					String division = rs.getString("sed.division");
			    	String projectid = rs.getString("ws.project_id");
			    	String floorid = rs.getString("ws.floor_id");
			    	int currentStatus = rs.getInt("ws.current_status");
			    	String divisionKey = division.toLowerCase().trim();
			    	String projectidKey = projectid.toLowerCase().trim();
			    	String benchType = rs.getString("wc.bench_type");
			    	
			    	if(totalCountMap.containsKey(floorid)) {
			    		WorkstationType totalWSInfo = totalCountMap.get(floorid);	
			    		if(benchType.equalsIgnoreCase("ODC")) {
							long ODC_Count = totalWSInfo.getODC_Count();
							ODC_Count++;
							totalWSInfo.setODC_Count(ODC_Count);
						}else if(benchType.equalsIgnoreCase("Workstation")) {
							long WS_Count = totalWSInfo.getWS_Count();
							WS_Count++;
							totalWSInfo.setWS_Count(WS_Count);
						}else if(benchType.equalsIgnoreCase("Cabin")) {
							long Cabin_Count = totalWSInfo.getCabin_Count();
							Cabin_Count++;
							totalWSInfo.setCabin_Count(Cabin_Count);
						}
			    		// Sub Total Building Seats Count in Reports
						                                                  
			    	}else {
			    		WorkstationType wsInfo = new WorkstationType();
						wsInfo.setFloor_id(floorid);
						wsInfo.setBenchType(benchType);
						wsInfo.setDivision(division);
						long WS_Count =0;
						long Cabin_Count =0;
						long ODC_Count =0;
						long Total_Count =0;
						long Head_Count =0; 
						if(benchType.equalsIgnoreCase("ODC")) {
							ODC_Count++;
							wsInfo.setODC_Count(ODC_Count);
						}else if(benchType.equalsIgnoreCase("Workstation")) {
							WS_Count++;
							wsInfo.setWS_Count(WS_Count);
						}else if(benchType.equalsIgnoreCase("Cabin")) {
							Cabin_Count++;
							wsInfo.setCabin_Count(Cabin_Count);
						}
						Total_Count++;
						wsInfo.setTotal_Count(Total_Count);
						totalCountMap.put(floorid, wsInfo);
						
						
			    	}
			    	//Vacant 
			    	if(vacantCountMap.containsKey(currentStatus)) {
			    		WorkstationType totalWSInfo = vacantCountMap.get(floorid);	
			    		if(benchType.equalsIgnoreCase("ODC") && currentStatus==0) {
							long ODC_Count = totalWSInfo.getODC_Count();
							ODC_Count++;
							totalWSInfo.setODC_Count(ODC_Count);
						}else if(benchType.equalsIgnoreCase("Workstation")&& currentStatus==0) {
							long WS_Count = totalWSInfo.getWS_Count();
							WS_Count++;
							totalWSInfo.setWS_Count(WS_Count);
						}else if(benchType.equalsIgnoreCase("Cabin")&& currentStatus==0) {
							long Cabin_Count = totalWSInfo.getCabin_Count();
							Cabin_Count++;
							totalWSInfo.setCabin_Count(Cabin_Count);
						}
						long Total_Count = totalWSInfo.getTotal_Count();
						Total_Count++;
						totalWSInfo.setTotal_Count(Total_Count);
			    	}else {
			    		WorkstationType wsInfo = new WorkstationType();
						wsInfo.setFloor_id(floorid);
						wsInfo.setBenchType(benchType);
						wsInfo.setDivision(division);
						long WS_Count =0;
						long Cabin_Count =0;
						long ODC_Count =0;
						long Total_Count =0;
						long Head_Count =0; 
						if(benchType.equalsIgnoreCase("ODC")&& currentStatus==0) {
							ODC_Count++;
							wsInfo.setODC_Count(ODC_Count);
						}else if(benchType.equalsIgnoreCase("Workstation")&& currentStatus==0) {
							WS_Count++;
							wsInfo.setWS_Count(WS_Count);
						}else if(benchType.equalsIgnoreCase("Cabin")&& currentStatus==0) { 
							Cabin_Count++;
							wsInfo.setCabin_Count(Cabin_Count);
						}
						Total_Count++;
						wsInfo.setTotal_Count(Total_Count);
						vacantCountMap.put(floorid, wsInfo);
			    	}
			    	
			    	System.out.println("floorid"+ floorid + "division" + division);
			    	
			    	
					if(floorMapsard.containsKey(floorid)){
						Map<String,WorkstationType> innerMap = floorMapsard.get(floorid);
						if(innerMap.containsKey(division)) {
							WorkstationType wsInfo = innerMap.get(division);
							if(benchType.equalsIgnoreCase("ODC")) {
								long ODC_Count = wsInfo.getODC_Count();
								ODC_Count++;
								wsInfo.setODC_Count(ODC_Count);
							}else if(benchType.equalsIgnoreCase("Workstation")) {
								long WS_Count = wsInfo.getWS_Count();
								WS_Count++;
								wsInfo.setWS_Count(WS_Count);
							}else if(benchType.equalsIgnoreCase("Cabin")) {
								long Cabin_Count = wsInfo.getCabin_Count();
								Cabin_Count++;
								wsInfo.setCabin_Count(Cabin_Count);
							}
							long Total_Count = wsInfo.getTotal_Count();
							Total_Count++;
							wsInfo.setTotal_Count(Total_Count);
						}else {
							Map<String,WorkstationType> innerMap1 = new HashMap<>();
							
							WorkstationType wsInfo = new WorkstationType();
							wsInfo.setFloor_id(floorid);
							wsInfo.setBenchType(benchType);
							wsInfo.setDivision(division);
							long WS_Count =0;
							long Cabin_Count =0;
							long ODC_Count =0;
							long Total_Count =0;
							long Head_Count =0; 
							
							if(benchType.equalsIgnoreCase("ODC")) {
								ODC_Count++;
								wsInfo.setODC_Count(ODC_Count);
							}else if(benchType.equalsIgnoreCase("Workstation")) {
								WS_Count++;
								wsInfo.setWS_Count(WS_Count);
							}else if(benchType.equalsIgnoreCase("Cabin")) {
								Cabin_Count++;
								wsInfo.setCabin_Count(Cabin_Count);
							}
							Total_Count++;
							wsInfo.setTotal_Count(Total_Count);
							//innerMap1.put(division, wsInfo);
							floorMapsard.get(floorid).put(division, wsInfo);
						}
					}else {
						Map<String,WorkstationType> innerMap = new HashMap<>();
						
						WorkstationType wsInfo = new WorkstationType();
						wsInfo.setFloor_id(floorid);
						wsInfo.setBenchType(benchType);
						wsInfo.setDivision(division);
						long WS_Count =0;
						long Cabin_Count =0;
						long ODC_Count =0;
						long Total_Count =0;
						long Head_Count =0; 
						
						if(benchType.equalsIgnoreCase("ODC")) {
							ODC_Count++;
							wsInfo.setODC_Count(ODC_Count);
						}else if(benchType.equalsIgnoreCase("Workstation")) {
							WS_Count++;
							wsInfo.setWS_Count(WS_Count);
						}else if(benchType.equalsIgnoreCase("Cabin")) {
							Cabin_Count++;
							wsInfo.setCabin_Count(Cabin_Count);
						}
						Total_Count++;
						wsInfo.setTotal_Count(Total_Count);
						innerMap.put(division, wsInfo);
						floorMapsard.put(floorid, innerMap);
					}
				}
				return floorMapsard;
			});  
			System.out.println("Division Map" + floorWiseMap);
			System.out.println("totalCountMap"+ totalCountMap);
			System.out.println("vacantCountMap"+ vacantCountMap); 
			
			// Moved to create Excel
			
				//}
				
			//}
			     		
			/* ------starts----------------
			Map<String,WorkstationType> Map2 = floorWiseMap.get("F2");
			WorkstationType workstation2=Map2.get("P&C"); 
			String division=workstation2.getDivision();
			WorkstationType wsInfo = Map2.get(division);
			//System.out.println("WS:"+Map2.get("P&C").getWS_Count()); 
		    
		    System.out.println("workstation :"+wsInfo.getDivision());
		    System.out.println("ODC :"+wsInfo.getODC_Count());
		    System.out.println("WS :"+wsInfo.getWS_Count());
		    System.out.println("Total :"+wsInfo.getTotal_Count());
		    
            Map<String,WorkstationType> Map3 = floorWiseMap.get("F3");
            
			-----------endds-----------
			for (Map.Entry<String,Map<String,WorkstationType>> utilizationMap : floorWiseMap.entrySet())  {
	            System.out.println("Key = = " + utilizationMap.getKey() + ", Value = " + utilizationMap.getValue()); 
	            WorkstationType wsType = new WorkstationType();
	            if(utilizationMap.getKey().equalsIgnoreCase("F2")) {
	            	Map<String,WorkstationType> ws = utilizationMap.getValue();
	            	//System.out.println("WS:"+ws.get("F2").getFloor_id()); 	 
	            	//System.out.println("WS:"+ws.get("F7").getFloor_id()); 	 
	            }
	        
	            Map<String,WorkstationType> Map2 = floorWiseMap.get("F2");
	            
	            WorkstationType workstation = Map2.getValue();
	            
	            Map<String,WorkstationType> Map1 = floorWiseMap.get("F2");
	            
	            WorkstationType workstation1=Map2.get("P&C");
	            workstation1.getCabin_Count();
	            WorkstationType wsInfo = innerMap.get(division);
	            
	            
	            for (Map.Entry<String,WorkstationType> wsMap : innerMap.entrySet())  {
	            	WorkstationType workstation = wsMap.getValue();
	            	if(workstation.getFloor_id().equalsIgnoreCase("F2")) {
	            		System.out.println("workstation :"+workstation.getCabin_Count()); 
		            	System.out.println("ODC :"+workstation.getODC_Count());
		            	System.out.println("WS :"+workstation.getWS_Count());
		            	System.out.println("Total :"+workstation.getTotal_Count());
	            	}else {
	            		System.out.println("Else Count");  
	            	}
	            	
	            } 
	    }//*/
		createExcelHeaders(floorWiseMap,totalCountMap,vacantCountMap);  
		return null; 
	}
	public void createExcelHeaders(Map<String, Map<String,WorkstationType>> floorWiseMap,Map<String, WorkstationType> totalCountMap,Map<String, WorkstationType>  vacantCountMap) {
		XSSFWorkbook workbook = new XSSFWorkbook();
		XSSFSheet sheet = workbook.createSheet("Report");
        
		Row header = sheet.createRow(0);
		header.createCell(0).setCellValue("Table");
		// header.createCell(1).setCellValue("RoI");
		// header.createCell(2).setCellValue("T");
		// header.createCell(3).setCellValue("Interest (P r t)");
		
		Row dataRow = sheet.createRow(1);
		dataRow.createCell(0).setCellValue("Seat Capacity");
		sheet.addMergedRegion(new CellRangeAddress(1, 3, 0, 1));// CellRangeAddress(startRowIndx, endRowIndx,
																// startColIndx,endColIndx)
		dataRow.createCell(3).setCellValue("Total Building Seats");
		// sheet.addMergedRegion(new CellRangeAddress(1,2,2,5));
		//dataRow.createCell(23).setCellValue("Occupied seats");
		// sheet.addMergedRegion(new CellRangeAddress(5,5,5,10));
		dataRow.createCell(28).setCellValue("Occupied seats");
		dataRow.createCell(32).setCellValue("Total Vacant Seats");
		// dataRow.createCell(3).setCellFormula("Total Vacant Seats");

		Row dataRow02 = sheet.createRow(2);
		dataRow02.createCell(7).setCellValue("Occupied by SARD");
		dataRow02.createCell(13).setCellValue("Occupied by ISBL");
		dataRow02.createCell(18).setCellValue("Occupied by Infosec");
		dataRow02.createCell(23).setCellValue("Occupied by P&C"); 

		Row dataRow2 = sheet.createRow(3);
		dataRow2.createCell(2).setCellValue("WS");
		// sheet.addMergedRegion(new CellRangeAddress(2,3,0,2));
		dataRow2.createCell(3).setCellValue("Cabins");
		dataRow2.createCell(4).setCellValue("ODC");
		dataRow2.createCell(5).setCellValue("Total");

		dataRow2.createCell(6).setCellValue("WS");
		dataRow2.createCell(7).setCellValue("Cabins");
		dataRow2.createCell(8).setCellValue("ODC");
		dataRow2.createCell(9).setCellValue("Total");
		dataRow2.createCell(10).setCellValue("Head Count");

		dataRow2.createCell(11).setCellValue("WS");
		dataRow2.createCell(12).setCellValue("Cabins");
		dataRow2.createCell(13).setCellValue("ODC");
		dataRow2.createCell(14).setCellValue("Total");
		dataRow2.createCell(15).setCellValue("Head Count");

		dataRow2.createCell(16).setCellValue("WS");
		dataRow2.createCell(17).setCellValue("Cabins");
		dataRow2.createCell(18).setCellValue("ODC");
		dataRow2.createCell(19).setCellValue("Total");
		dataRow2.createCell(20).setCellValue("Head Count");
		
		dataRow2.createCell(21).setCellValue("WS");
		dataRow2.createCell(22).setCellValue("Cabins");
		dataRow2.createCell(23).setCellValue("ODC");
		dataRow2.createCell(24).setCellValue("Total");
		dataRow2.createCell(25).setCellValue("Head Count"); 
	
		dataRow2.createCell(26).setCellValue("WS");
		dataRow2.createCell(27).setCellValue("Cabins");
		dataRow2.createCell(28).setCellValue("ODC");
		dataRow2.createCell(29).setCellValue("Total");
		dataRow2.createCell(30).setCellValue("Total");
		
		dataRow2.createCell(31).setCellValue("WS");
		dataRow2.createCell(32).setCellValue("Cabins");
		dataRow2.createCell(33).setCellValue("ODC");
		dataRow2.createCell(34).setCellValue("Total");  
		  
		// Start
		
			//String[] floorid = { "F2", "F3P1", "F3P2", "F4", "F5","F7" }; 
			//for (int i = 0; i < floorid.length; i++) {
				
				//if(floorWiseMap.containsKey(floorid)) { 
			//}  
		
			Map<String,WorkstationType> innerMapAll = floorWiseMap.get("F2");
			WorkstationType innerMapTotal = totalCountMap.get("F2");
			WorkstationType innerMapVacant = vacantCountMap.get("F2");
			try {    
				Row dataRow1 = sheet.createRow(4);
				dataRow1.createCell(0).setCellValue("ETV 2nd F");
				dataRow1.createCell(1).setCellValue("SEZ");
				System.out.println("F2");
				System.out.println("TotalCount:"+innerMapTotal.getWS_Count()); 
				dataRow1.createCell(2).setCellValue(innerMapTotal.getWS_Count());
				dataRow1.createCell(3).setCellValue(innerMapTotal.getCabin_Count());
				dataRow1.createCell(4).setCellValue(innerMapTotal.getODC_Count());
				dataRow1.createCell(5).setCellValue(innerMapTotal.getTotal_Count()); 
				 
				       
				if(innerMapAll.get("SARD")!=null) {
					System.out.println("SARD");    
					WorkstationType wsInfo = innerMapAll.get("SARD");   
					
					System.out.println("WS wsInfoTotal:"+wsInfo.getWS_Count());
					System.out.println("Cabin wsInfoTotal:"+wsInfo.getCabin_Count());
					System.out.println("ODC wsInfoTotal:"+wsInfo.getODC_Count());
					System.out.println("Total wsInfoTotal:"+wsInfo.getTotal_Count());
					
					dataRow1.createCell(6).setCellValue(wsInfo.getWS_Count());
					dataRow1.createCell(7).setCellValue(wsInfo.getCabin_Count());
					dataRow1.createCell(8).setCellValue(wsInfo.getODC_Count());
					dataRow1.createCell(9).setCellValue(wsInfo.getTotal_Count());
					dataRow1.createCell(10).setCellValue(wsInfo.getTotal_Count());
				}
				if(innerMapAll.get("ISBL")!=null) {  
					System.out.println("ISBL");
					WorkstationType wsInfo = innerMapAll.get("ISBL");
					System.out.println("WS :"+wsInfo.getWS_Count());
					System.out.println("Cabin :"+wsInfo.getCabin_Count());
					System.out.println("ODC :"+wsInfo.getODC_Count());
					System.out.println("Total :"+wsInfo.getTotal_Count());  
					// 2nd Floor details---------------------------------------
					dataRow1.createCell(11).setCellValue(wsInfo.getWS_Count());
					dataRow1.createCell(12).setCellValue(wsInfo.getCabin_Count());
					dataRow1.createCell(13).setCellValue(wsInfo.getODC_Count());
					dataRow1.createCell(14).setCellValue(wsInfo.getTotal_Count());
					dataRow1.createCell(15).setCellValue(wsInfo.getTotal_Count());
				}
				if(innerMapAll.get("Infosec")!=null) { 
					System.out.println("Infosec");
					WorkstationType wsInfo = innerMapAll.get("Infosec");   
					System.out.println("WS :"+wsInfo.getWS_Count());
					System.out.println("Cabin :"+wsInfo.getCabin_Count());
					System.out.println("ODC :"+wsInfo.getODC_Count());
					System.out.println("Total :"+wsInfo.getTotal_Count());
					
					dataRow1.createCell(16).setCellValue(wsInfo.getWS_Count());
					dataRow1.createCell(17).setCellValue(wsInfo.getCabin_Count());
					dataRow1.createCell(18).setCellValue(wsInfo.getODC_Count());
					dataRow1.createCell(19).setCellValue(wsInfo.getTotal_Count());
					dataRow1.createCell(20).setCellValue(wsInfo.getTotal_Count());
				}//*/
				if(innerMapAll.get("P&C")!=null) {
					System.out.println("P&C");
					WorkstationType wsInfo = innerMapAll.get("P&C");   
					System.out.println("WS :"+wsInfo.getWS_Count());
					System.out.println("Cabin :"+wsInfo.getCabin_Count());
					System.out.println("ODC :"+wsInfo.getODC_Count());
					System.out.println("Total :"+wsInfo.getTotal_Count());
					dataRow1.createCell(21).setCellValue(wsInfo.getWS_Count());
					dataRow1.createCell(22).setCellValue(wsInfo.getCabin_Count());
					dataRow1.createCell(23).setCellValue(wsInfo.getODC_Count());
					dataRow1.createCell(24).setCellValue(wsInfo.getTotal_Count());
					dataRow1.createCell(25).setCellValue(wsInfo.getTotal_Count()); 
	
				} //  
				dataRow1.createCell(26).setCellValue(0);
				dataRow1.createCell(27).setCellValue(0);
				dataRow1.createCell(28).setCellValue(0);
				dataRow1.createCell(29).setCellValue(0);
				dataRow1.createCell(30).setCellValue(0);  
				
				dataRow1.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow1.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow1.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow1.createCell(34).setCellValue(innerMapVacant.getTotal_Count()); 
			} catch (Exception ex1) {
				System.out.println("Error reading file");
				ex1.printStackTrace();
			}
			//F3P1
			Map<String,WorkstationType> innerMap31 = floorWiseMap.get("F3P1");
			WorkstationType innerMapTotal31 = totalCountMap.get("F3P1");
				try {  
					System.out.println("F3P1");
					Row dataRow13 = sheet.createRow(5);
					dataRow13.createCell(0).setCellValue("ETV 3rd F");
					dataRow13.createCell(1).setCellValue("SEZ");
					
					dataRow13.createCell(2).setCellValue(innerMapTotal31.getWS_Count());
					dataRow13.createCell(3).setCellValue(innerMapTotal31.getCabin_Count());
					dataRow13.createCell(4).setCellValue(innerMapTotal31.getODC_Count());
					dataRow13.createCell(5).setCellValue(innerMapTotal31.getTotal_Count()); 
					
					if(innerMap31.get("SARD")!=null) {
						System.out.println("SARD");
						WorkstationType wsInfo = innerMap31.get("SARD");   
						System.out.println("WS :"+wsInfo.getWS_Count());
						System.out.println("Cabin :"+wsInfo.getCabin_Count());
						System.out.println("ODC :"+wsInfo.getODC_Count());
						System.out.println("Total :"+wsInfo.getTotal_Count());
						
						/*dataRow13.createCell(2).setCellValue(wsInfo.getWS_Count());
						dataRow13.createCell(3).setCellValue(wsInfo.getCabin_Count());
						dataRow13.createCell(4).setCellValue(wsInfo.getODC_Count());
						dataRow13.createCell(5).setCellValue(wsInfo.getTotal_Count()); */
						
						dataRow13.createCell(6).setCellValue(wsInfo.getWS_Count());
						dataRow13.createCell(7).setCellValue(wsInfo.getCabin_Count());
						dataRow13.createCell(8).setCellValue(wsInfo.getODC_Count());
						dataRow13.createCell(9).setCellValue(wsInfo.getTotal_Count());
						dataRow13.createCell(10).setCellValue(wsInfo.getTotal_Count());
					}
					if(innerMap31.get("ISBL")!=null) {  
						System.out.println("ISBL");
						WorkstationType wsInfo = innerMap31.get("ISBL");
						System.out.println("WS :"+wsInfo.getWS_Count());
						System.out.println("Cabin :"+wsInfo.getCabin_Count());
						System.out.println("ODC :"+wsInfo.getODC_Count());
						System.out.println("Total :"+wsInfo.getTotal_Count()); 
						
						dataRow13.createCell(11).setCellValue(wsInfo.getWS_Count());
						dataRow13.createCell(12).setCellValue(wsInfo.getCabin_Count());
						dataRow13.createCell(13).setCellValue(wsInfo.getODC_Count());
						dataRow13.createCell(14).setCellValue(wsInfo.getTotal_Count());
						dataRow13.createCell(15).setCellValue(wsInfo.getTotal_Count());

					}
					if(innerMap31.get("Infosec")!=null) { 
						System.out.println("Infosec");
						WorkstationType wsInfo = innerMap31.get("Infosec");   
						System.out.println("WS :"+wsInfo.getWS_Count());
						System.out.println("Cabin :"+wsInfo.getCabin_Count());
						System.out.println("ODC :"+wsInfo.getODC_Count());
						System.out.println("Total :"+wsInfo.getTotal_Count());
						
						dataRow13.createCell(16).setCellValue(wsInfo.getWS_Count());
						dataRow13.createCell(17).setCellValue(wsInfo.getCabin_Count());
						dataRow13.createCell(18).setCellValue(wsInfo.getODC_Count());
						dataRow13.createCell(19).setCellValue(wsInfo.getTotal_Count());
						dataRow13.createCell(20).setCellValue(wsInfo.getTotal_Count());
					}//*/
					if(innerMap31.get("P&C")!=null) {
						System.out.println("P&C");
						WorkstationType wsInfo = innerMap31.get("P&C");   
						System.out.println("WS :"+wsInfo.getWS_Count());
						System.out.println("Cabin :"+wsInfo.getCabin_Count());
						System.out.println("ODC :"+wsInfo.getODC_Count());
						System.out.println("Total :"+wsInfo.getTotal_Count());
						
						dataRow13.createCell(21).setCellValue(wsInfo.getWS_Count());
						dataRow13.createCell(22).setCellValue(wsInfo.getCabin_Count());
						dataRow13.createCell(23).setCellValue(wsInfo.getODC_Count());
						dataRow13.createCell(24).setCellValue(wsInfo.getTotal_Count());
						dataRow13.createCell(25).setCellValue(wsInfo.getTotal_Count());
						
					} //  
					dataRow13.createCell(26).setCellValue(0);
					dataRow13.createCell(27).setCellValue(0);
					dataRow13.createCell(28).setCellValue(0);
					dataRow13.createCell(29).setCellValue(0);
					dataRow13.createCell(30).setCellValue(0); 
					
					dataRow13.createCell(31).setCellValue(innerMapVacant.getWS_Count());
					dataRow13.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
					dataRow13.createCell(33).setCellValue(innerMapVacant.getODC_Count());
					dataRow13.createCell(34).setCellValue(innerMapVacant.getTotal_Count()); 
				} catch (Exception ex1) {
					System.out.println("Error reading file");
					ex1.printStackTrace();
				}
				//F32
				Map<String,WorkstationType> innerMap32 = floorWiseMap.get("F3P2");
				WorkstationType innerMapTotal32 = totalCountMap.get("F3P2");
					try {  
						System.out.println("F3P2");
						// 4th Floor details---------------------------------------
						Row dataRow3 = sheet.createRow(6);
						dataRow3.createCell(0).setCellValue("ETV 3rd F");
						dataRow3.createCell(1).setCellValue("SEZ");
						dataRow3.createCell(2).setCellValue(innerMapTotal32.getWS_Count());
						dataRow3.createCell(3).setCellValue(innerMapTotal32.getCabin_Count());
						dataRow3.createCell(4).setCellValue(innerMapTotal32.getODC_Count());
						dataRow3.createCell(5).setCellValue(innerMapTotal32.getTotal_Count());  
						if(innerMap32.get("SARD")!=null) {
							System.out.println("SARD");
							WorkstationType wsInfo = innerMap32.get("SARD");   
							System.out.println("WS :"+wsInfo.getWS_Count());
							System.out.println("Cabin :"+wsInfo.getCabin_Count());
							System.out.println("ODC :"+wsInfo.getODC_Count());
							System.out.println("Total :"+wsInfo.getTotal_Count());
						
							dataRow3.createCell(6).setCellValue(wsInfo.getWS_Count());
							dataRow3.createCell(7).setCellValue(wsInfo.getCabin_Count());
							dataRow3.createCell(8).setCellValue(wsInfo.getODC_Count());
							dataRow3.createCell(9).setCellValue(wsInfo.getTotal_Count());
							dataRow3.createCell(10).setCellValue(wsInfo.getTotal_Count());
							
						}
						if(innerMap32.get("ISBL")!=null) {  
							System.out.println("ISBL");
							WorkstationType wsInfo = innerMap32.get("ISBL");
							System.out.println("WS :"+wsInfo.getWS_Count());
							System.out.println("Cabin :"+wsInfo.getCabin_Count());
							System.out.println("ODC :"+wsInfo.getODC_Count());
							System.out.println("Total :"+wsInfo.getTotal_Count()); 

							dataRow3.createCell(11).setCellValue(wsInfo.getWS_Count());
							dataRow3.createCell(12).setCellValue(wsInfo.getCabin_Count());
							dataRow3.createCell(13).setCellValue(wsInfo.getODC_Count());
							dataRow3.createCell(14).setCellValue(wsInfo.getTotal_Count());
							dataRow3.createCell(15).setCellValue(wsInfo.getTotal_Count());

						}
						if(innerMap32.get("Infosec")!=null) { 
							System.out.println("Infosec");
							WorkstationType wsInfo = innerMap32.get("Infosec");   
							System.out.println("WS :"+wsInfo.getWS_Count());
							System.out.println("Cabin :"+wsInfo.getCabin_Count());
							System.out.println("ODC :"+wsInfo.getODC_Count());
							System.out.println("Total :"+wsInfo.getTotal_Count());
							dataRow3.createCell(16).setCellValue(wsInfo.getWS_Count());
							dataRow3.createCell(17).setCellValue(wsInfo.getCabin_Count());
							dataRow3.createCell(18).setCellValue(wsInfo.getODC_Count());
							dataRow3.createCell(19).setCellValue(wsInfo.getTotal_Count());
							dataRow3.createCell(20).setCellValue(wsInfo.getTotal_Count());

						}//*/
						if(innerMap32.get("P&C")!=null) {
							System.out.println("P&C");
							WorkstationType wsInfo = innerMap32.get("P&C");   
							System.out.println("WS :"+wsInfo.getWS_Count());
							System.out.println("Cabin :"+wsInfo.getCabin_Count());
							System.out.println("ODC :"+wsInfo.getODC_Count());
							System.out.println("Total :"+wsInfo.getTotal_Count());
							dataRow3.createCell(21).setCellValue(wsInfo.getWS_Count());
							dataRow3.createCell(22).setCellValue(wsInfo.getCabin_Count());
							dataRow3.createCell(23).setCellValue(wsInfo.getODC_Count());
							dataRow3.createCell(24).setCellValue(wsInfo.getTotal_Count());
							dataRow3.createCell(25).setCellValue(wsInfo.getTotal_Count());

						} //  
						dataRow3.createCell(26).setCellValue(0);
						dataRow3.createCell(27).setCellValue(0);
						dataRow3.createCell(28).setCellValue(0);
						dataRow3.createCell(29).setCellValue(0);
						dataRow3.createCell(30).setCellValue(0); 
						
						dataRow3.createCell(31).setCellValue(innerMapVacant.getWS_Count());
						dataRow3.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
						dataRow3.createCell(33).setCellValue(innerMapVacant.getODC_Count());
						dataRow3.createCell(34).setCellValue(innerMapVacant.getTotal_Count()); 
					} catch (Exception ex1) {
						System.out.println("Error reading file");
						ex1.printStackTrace();
					}
					//F4
					Map<String,WorkstationType> innerMap4 = floorWiseMap.get("F4");
					WorkstationType innerMapTotal4 = totalCountMap.get("F4");
						try {  
							System.out.println("F4");
							// 5th Floor details ---------------------------------------
							Row dataRow4 = sheet.createRow(7);
							dataRow4.createCell(0).setCellValue("ETV 4th floor (New)");
							dataRow4.createCell(1).setCellValue("SEZ");
							
							dataRow4.createCell(2).setCellValue(innerMapTotal4.getWS_Count());
							dataRow4.createCell(3).setCellValue(innerMapTotal4.getCabin_Count());
							dataRow4.createCell(4).setCellValue(innerMapTotal4.getODC_Count());
							dataRow4.createCell(5).setCellValue(innerMapTotal4.getTotal_Count());  

							if(innerMap4.get("SARD")!=null) {
								System.out.println("SARD");
								WorkstationType wsInfo = innerMap4.get("SARD");   
								System.out.println("WS :"+wsInfo.getWS_Count());
								System.out.println("Cabin :"+wsInfo.getCabin_Count());
								System.out.println("ODC :"+wsInfo.getODC_Count());
								System.out.println("Total :"+wsInfo.getTotal_Count());

								dataRow4.createCell(6).setCellValue(wsInfo.getWS_Count());
								dataRow4.createCell(7).setCellValue(wsInfo.getCabin_Count());
								dataRow4.createCell(8).setCellValue(wsInfo.getODC_Count());
								dataRow4.createCell(9).setCellValue(wsInfo.getTotal_Count());
								dataRow4.createCell(10).setCellValue(wsInfo.getTotal_Count());

							}
							if(innerMap4.get("ISBL")!=null) {  
								System.out.println("ISBL");
								WorkstationType wsInfo = innerMap4.get("ISBL");
								System.out.println("WS :"+wsInfo.getWS_Count());
								System.out.println("Cabin :"+wsInfo.getCabin_Count());
								System.out.println("ODC :"+wsInfo.getODC_Count());
								System.out.println("Total :"+wsInfo.getTotal_Count()); 

								dataRow4.createCell(11).setCellValue(wsInfo.getWS_Count());
								dataRow4.createCell(12).setCellValue(wsInfo.getCabin_Count());
								dataRow4.createCell(13).setCellValue(wsInfo.getODC_Count());
								dataRow4.createCell(14).setCellValue(wsInfo.getTotal_Count());
								dataRow4.createCell(15).setCellValue(wsInfo.getTotal_Count());

							}
							if(innerMap4.get("Infosec")!=null) { 
								System.out.println("Infosec");
								WorkstationType wsInfo = innerMap4.get("Infosec");   
								System.out.println("WS :"+wsInfo.getWS_Count());
								System.out.println("Cabin :"+wsInfo.getCabin_Count());
								System.out.println("ODC :"+wsInfo.getODC_Count());
								System.out.println("Total :"+wsInfo.getTotal_Count());
								dataRow4.createCell(16).setCellValue(wsInfo.getWS_Count());
								dataRow4.createCell(17).setCellValue(wsInfo.getCabin_Count());
								dataRow4.createCell(18).setCellValue(wsInfo.getODC_Count());
								dataRow4.createCell(19).setCellValue(wsInfo.getTotal_Count());
								dataRow4.createCell(20).setCellValue(wsInfo.getTotal_Count());

							}//*/
							if(innerMap4.get("P&C")!=null) {
								System.out.println("P&C");
								WorkstationType wsInfo = innerMap4.get("P&C");   
								System.out.println("WS :"+wsInfo.getWS_Count());
								System.out.println("Cabin :"+wsInfo.getCabin_Count());
								System.out.println("ODC :"+wsInfo.getODC_Count());
								System.out.println("Total :"+wsInfo.getTotal_Count());
								dataRow4.createCell(21).setCellValue(wsInfo.getWS_Count());
								dataRow4.createCell(22).setCellValue(wsInfo.getCabin_Count());
								dataRow4.createCell(23).setCellValue(wsInfo.getODC_Count());
								dataRow4.createCell(24).setCellValue(wsInfo.getTotal_Count());
								dataRow4.createCell(25).setCellValue(wsInfo.getTotal_Count());

							} //  
							dataRow4.createCell(26).setCellValue(0);
							dataRow4.createCell(27).setCellValue(0);
							dataRow4.createCell(28).setCellValue(0);
							dataRow4.createCell(29).setCellValue(0);
							dataRow4.createCell(30).setCellValue(0);
							
							dataRow4.createCell(31).setCellValue(innerMapVacant.getWS_Count());
							dataRow4.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
							dataRow4.createCell(33).setCellValue(innerMapVacant.getODC_Count());
							dataRow4.createCell(34).setCellValue(innerMapVacant.getTotal_Count()); 
						} catch (Exception ex1) {
							System.out.println("Error reading file");
							ex1.printStackTrace();
						}
						//F5
						Map<String,WorkstationType> innerMap5 = floorWiseMap.get("F5");
						WorkstationType innerMapTotal5 = totalCountMap.get("F5");
						//floorWiseMap.get("floors").get("infosec");
						//System.out.println("innemap info"+innerMap.get("Infosec").getCabin_Count());
							try {  
								System.out.println("F5");
								// 7th Floor details ---------------------------------------
								Row dataRow5 = sheet.createRow(8);
								dataRow5.createCell(0).setCellValue("ETV 5th F");
								dataRow5.createCell(1).setCellValue("SEZ");
								
								dataRow5.createCell(2).setCellValue(innerMapTotal5.getWS_Count());
								dataRow5.createCell(3).setCellValue(innerMapTotal5.getCabin_Count());
								dataRow5.createCell(4).setCellValue(innerMapTotal5.getODC_Count());
								dataRow5.createCell(5).setCellValue(innerMapTotal5.getTotal_Count());  
								
								if(innerMap5.get("SARD")!=null) {
									System.out.println("SARD");
									WorkstationType wsInfo = innerMap5.get("SARD");   
									System.out.println("WS :"+wsInfo.getWS_Count());
									System.out.println("Cabin :"+wsInfo.getCabin_Count());
									System.out.println("ODC :"+wsInfo.getODC_Count());
									System.out.println("Total :"+wsInfo.getTotal_Count());
									
									dataRow5.createCell(6).setCellValue(wsInfo.getWS_Count());
									dataRow5.createCell(7).setCellValue(wsInfo.getCabin_Count());
									dataRow5.createCell(8).setCellValue(wsInfo.getODC_Count());
									dataRow5.createCell(9).setCellValue(wsInfo.getTotal_Count());
									dataRow5.createCell(10).setCellValue(wsInfo.getTotal_Count());
									
								}
								if(innerMap5.get("ISBL")!=null) {  
									System.out.println("ISBL");
									WorkstationType wsInfo = innerMap5.get("ISBL");
									System.out.println("WS :"+wsInfo.getWS_Count());
									System.out.println("Cabin :"+wsInfo.getCabin_Count());
									System.out.println("ODC :"+wsInfo.getODC_Count());
									System.out.println("Total :"+wsInfo.getTotal_Count()); 
									
									dataRow5.createCell(11).setCellValue(wsInfo.getWS_Count());
									dataRow5.createCell(12).setCellValue(wsInfo.getCabin_Count());
									dataRow5.createCell(13).setCellValue(wsInfo.getODC_Count());
									dataRow5.createCell(14).setCellValue(wsInfo.getTotal_Count());
									dataRow5.createCell(15).setCellValue(wsInfo.getTotal_Count());
								}
								if(innerMap5.get("Infosec")!=null) { 
									System.out.println("Infosec");
									WorkstationType wsInfo = innerMap5.get("Infosec");   
									System.out.println("WS :"+wsInfo.getWS_Count());
									System.out.println("Cabin :"+wsInfo.getCabin_Count());
									System.out.println("ODC :"+wsInfo.getODC_Count());
									System.out.println("Total :"+wsInfo.getTotal_Count());
									
									dataRow5.createCell(16).setCellValue(wsInfo.getWS_Count());
									dataRow5.createCell(17).setCellValue(wsInfo.getCabin_Count());
									dataRow5.createCell(18).setCellValue(wsInfo.getODC_Count());
									dataRow5.createCell(19).setCellValue(wsInfo.getTotal_Count());
									dataRow5.createCell(20).setCellValue(wsInfo.getTotal_Count());

									
								}//*/
								if(innerMap5.get("P&C")!=null) {
									System.out.println("P&C");
									WorkstationType wsInfo = innerMap5.get("P&C");   
									System.out.println("WS :"+wsInfo.getWS_Count());
									System.out.println("Cabin :"+wsInfo.getCabin_Count());
									System.out.println("ODC :"+wsInfo.getODC_Count());
									System.out.println("Total :"+wsInfo.getTotal_Count());

									dataRow5.createCell(21).setCellValue(wsInfo.getWS_Count());
									dataRow5.createCell(22).setCellValue(wsInfo.getCabin_Count());
									dataRow5.createCell(23).setCellValue(wsInfo.getODC_Count());
									dataRow5.createCell(24).setCellValue(wsInfo.getTotal_Count());  
									
								} // 
								dataRow5.createCell(26).setCellValue(0);
								dataRow5.createCell(27).setCellValue(0);
								dataRow5.createCell(28).setCellValue(0);
								dataRow5.createCell(29).setCellValue(0);
								dataRow5.createCell(30).setCellValue(0);
								
								dataRow5.createCell(31).setCellValue(innerMapVacant.getWS_Count());
								dataRow5.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
								dataRow5.createCell(33).setCellValue(innerMapVacant.getODC_Count());
								dataRow5.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
							} catch (Exception ex1) {
								System.out.println("Error reading file");
								ex1.printStackTrace(); 
							}
							//F7
							Map<String,WorkstationType> innerMap7 = floorWiseMap.get("F7");
							WorkstationType innerMapTotal7 = totalCountMap.get("F7");
								try {  
									System.out.println("F7");
									// 7th Floor details ---------------------------------------
									Row dataRow7 = sheet.createRow(9);
									dataRow7.createCell(0).setCellValue("ETV 7th F");
									dataRow7.createCell(1).setCellValue("SEZ");
									
									dataRow7.createCell(2).setCellValue(innerMapTotal7.getWS_Count());
									dataRow7.createCell(3).setCellValue(innerMapTotal7.getCabin_Count());
									dataRow7.createCell(4).setCellValue(innerMapTotal7.getODC_Count());
									dataRow7.createCell(5).setCellValue(innerMapTotal7.getTotal_Count());   
									
									if(innerMap7.get("SARD")!=null) {
										System.out.println("SARD");
										WorkstationType wsInfo = innerMap7.get("SARD");   
										System.out.println("WS :"+wsInfo.getWS_Count());
										System.out.println("Cabin :"+wsInfo.getCabin_Count());
										System.out.println("ODC :"+wsInfo.getODC_Count());
										System.out.println("Total :"+wsInfo.getTotal_Count());
										
										dataRow7.createCell(6).setCellValue(wsInfo.getWS_Count());
										dataRow7.createCell(7).setCellValue(wsInfo.getCabin_Count());
										dataRow7.createCell(8).setCellValue(wsInfo.getODC_Count());
										dataRow7.createCell(9).setCellValue(wsInfo.getTotal_Count());
										dataRow7.createCell(10).setCellValue(wsInfo.getTotal_Count());
										
									}
									if(innerMap7.get("ISBL")!=null) {  
										System.out.println("ISBL");
										WorkstationType wsInfo = innerMap7.get("ISBL");
										System.out.println("WS :"+wsInfo.getWS_Count());
										System.out.println("Cabin :"+wsInfo.getCabin_Count());
										System.out.println("ODC :"+wsInfo.getODC_Count());
										System.out.println("Total :"+wsInfo.getTotal_Count()); 
										dataRow7.createCell(11).setCellValue(wsInfo.getWS_Count());
										dataRow7.createCell(12).setCellValue(wsInfo.getCabin_Count());
										dataRow7.createCell(13).setCellValue(wsInfo.getODC_Count());
										dataRow7.createCell(14).setCellValue(wsInfo.getTotal_Count());
										dataRow7.createCell(15).setCellValue(wsInfo.getTotal_Count());
									}
									if(innerMap7.get("Infosec")!=null) { 
										System.out.println("Infosec");
										WorkstationType wsInfo = innerMap7.get("Infosec");   
										System.out.println("WS :"+wsInfo.getWS_Count());
										System.out.println("Cabin :"+wsInfo.getCabin_Count());
										System.out.println("ODC :"+wsInfo.getODC_Count());
										System.out.println("Total :"+wsInfo.getTotal_Count());
										dataRow7.createCell(16).setCellValue(wsInfo.getWS_Count());
										dataRow7.createCell(17).setCellValue(wsInfo.getCabin_Count());
										dataRow7.createCell(18).setCellValue(wsInfo.getODC_Count());
										dataRow7.createCell(19).setCellValue(wsInfo.getTotal_Count());
										dataRow7.createCell(20).setCellValue(wsInfo.getTotal_Count());
										        
									}//*/
									if(innerMap7.get("P&C")!=null) {
										System.out.println("P&C");
										WorkstationType wsInfo = innerMap7.get("P&C");   
										System.out.println("WS :"+wsInfo.getWS_Count());
										System.out.println("Cabin :"+wsInfo.getCabin_Count());
										System.out.println("ODC :"+wsInfo.getODC_Count());
										System.out.println("Total :"+wsInfo.getTotal_Count());
										
										dataRow7.createCell(21).setCellValue(wsInfo.getWS_Count());
										dataRow7.createCell(22).setCellValue(wsInfo.getCabin_Count());
										dataRow7.createCell(23).setCellValue(wsInfo.getODC_Count());
										dataRow7.createCell(24).setCellValue(wsInfo.getTotal_Count());
										dataRow7.createCell(25).setCellValue(wsInfo.getTotal_Count()); 
										
									} //  
									dataRow7.createCell(26).setCellValue(0);
									dataRow7.createCell(27).setCellValue(0);
									dataRow7.createCell(28).setCellValue(0);
									dataRow7.createCell(29).setCellValue(0);
									dataRow7.createCell(30).setCellValue(0);
									
									dataRow7.createCell(31).setCellValue(innerMapVacant.getWS_Count());
									dataRow7.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
									dataRow7.createCell(33).setCellValue(innerMapVacant.getODC_Count());
									dataRow7.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
								} catch (Exception ex1) {
									System.out.println("Error reading file");
									ex1.printStackTrace();
								}
						Row dataRow8 = sheet.createRow(10);
						dataRow8.createCell(0).setCellValue("");
						dataRow8.createCell(1).setCellValue("");
						 
						Row row = sheet.createRow(10);
					    Cell cellTotal = row.createCell(0);
					    cellTotal.setCellValue("Sub Total");
						 
					    Cell cell = row.createCell(3);
					    //cell.setCellFormula("SUM(C5:C11)");
					    cell.setCellFormula("SUM(D5:D11)"); 
					    cell.setCellType(Cell.CELL_TYPE_FORMULA);
					    
					    //cell.setCellType(XSSFCell.CELL_TYPE_FORMULA);
					    					    
					    cell = row.createCell(4);  
					    
					    cell.setCellFormula("SUM(D5:D11)"); 
					    cell.setCellType(Cell.CELL_TYPE_FORMULA);
					    cell = row.createCell(5); 
					    
					    cell.setCellFormula("SUM(E5:E11)"); 
					    cell.setCellType(Cell.CELL_TYPE_FORMULA);
					    cell = row.createCell(6);					    
					    cell.setCellFormula("SUM(F5:F11)"); 
						
						//dataRow8.createCell(2).setCellFormula("SUM(C5:C11)");
						//dataRow8.createCell(3).setCellFormula("SUM(D5:D11)");
						//dataRow8.createCell(4).setCellFormula("SUM(E5:E11)");
						//dataRow8.createCell(5).setCellFormula("SUM(F5:F11)");  
						
					// End
						 
						SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

						ConditionalFormattingRule rule1 = sheetCF.createConditionalFormattingRule("MOD(ROW(),2)");
						PatternFormatting fill1 = rule1.createPatternFormatting();
						fill1.setFillBackgroundColor(IndexedColors.LIGHT_GREEN.index);
						fill1.setFillPattern(PatternFormatting.SOLID_FOREGROUND);

						/*
						 * CellRangeAddress[] regions = { CellRangeAddress.valueOf("A2:A4") };
						 * 
						 * sheetCF.addConditionalFormatting(regions, rule1);
						 */

						try {
							FileOutputStream out = new FileOutputStream(new File("reportfloorwise.xlsx"));
							workbook.write(out);
							out.close();
							System.out.println("Excel with cells written successfully");

						} catch (FileNotFoundException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						}

	}
}
