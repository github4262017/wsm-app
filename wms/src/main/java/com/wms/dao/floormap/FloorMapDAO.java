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
	public FloorDetails getFloorMapDetailsStatus(FloormapRequest floormapRequest){
		//String floorID=floormapRequest.getFloorname();
		//String floorID="F2";
		//String projectID= "All";
		String floorID=floormapRequest.getFloorname();
		String projectID= floormapRequest.getProject_id();
		String requestid=floormapRequest.getRequest_id();  
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
		    	
		    	System.out.println("Employees :"+rs.getString("ws.employees"));
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
		    	System.out.println("sb"+sb.toString());
		    	
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

	
	public UtilizationList getWorkstationReportList(UtilizationRequest utilizationRequest){
		String divisionSQL = 
				" select  " + 
				"sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status,ws.headcount,ws.employees  " + 
				"from  " + 
				"wms_workstation_status ws  " + 
				"join wms_sony_emp_details sed on ws.project_id = sed.project_name group by ws.workstation_no  " + 
				"order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
						
		System.out.println("divisionSQL"+divisionSQL);
		Map<String,DivisionInfo> tfloorMapD = new HashMap<>();
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(divisionSQL, (ResultSet rs) -> {
			Map<String,Map<String,DivisionInfo>> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String division = rs.getString("sed.division");
		    	String projectid = rs.getString("ws.project_id");
		    	String floorid = rs.getString("ws.floor_id");
		    	int currentStatus = rs.getInt("ws.current_status");
		    	
		    	int headcount = rs.getInt("ws.headcount");
		    	//System.out.println("emp:"+rs.getString("ws.employees"));  
		    	int employeesheadcount=0;
		    	String divisionKey = division.toLowerCase().trim();
		    	String projectidKey = projectid.toLowerCase().trim();
		    	
		    	setDivisionTotalCount(tfloorMapD,division,currentStatus,headcount);
		    	if(floorMapD.containsKey(divisionKey)) {
		    		Map<String,DivisionInfo> innerMap = floorMapD.get(divisionKey);
		    		if(innerMap.containsKey(projectidKey)) {
		    			DivisionInfo divisionInfo = innerMap.get(projectidKey);
		    			//System.out.println("headcount db:"+headcount+"headcount set"+divisionInfo.getHeadcount());
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
			    			//System.out.println("Division" + division + "Project" + projectid + "Assigned" + assigned);
			    			divisionInfo.setAssigned(assigned);
			    			int divisionheadcount = divisionInfo.getHeadcount();
			    			//System.out.println("hc db-hc set:"+headcount+"-"+divisionInfo.getHeadcount()); 
			    			int totalhc=divisionheadcount+headcount;
			    			divisionInfo.setHeadcount(totalhc);   
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
			    			int divheadcount=divisionInfo.getHeadcount();
			    			//System.out.println("get hc-hc db"+divheadcount+"-"+headcount);
			    			int totalhc=divheadcount+headcount;
			    			divisionInfo.setHeadcount(totalhc);//-1
			    		}
			    		if(currentStatus==3) {
			    			divisionInfo.setUtilized(1);
			    		}
			    		//System.out.println("Proj: "+divisionInfo.getProjectName());
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
		    			int divheadcount=divisionInfo.getHeadcount();
		    			int totalhc=divheadcount+headcount;
		    			//divisionInfo.setHeadcount(totalhc);
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
	            //System.out.println("Key = " + utilizationMap.getKey() + ", Value = " + utilizationMap.getValue()); 
	            DivisionInfo division1 = new DivisionInfo();
	            if(utilizationMap.getKey().equalsIgnoreCase("isbl")) {
		            	divisionList.add(tfloorMapD.get("isblTotal")); 
		            	System.out.println("Test div:"+tfloorMapD.get("isblTotal").getHeadcount());
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("infosec")) {
	            		divisionList.add(tfloorMapD.get("infosecTotal"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("sard")) {
		            	divisionList.add(tfloorMapD.get("sardTotal"));
	            	}
	            	if(utilizationMap.getKey().equalsIgnoreCase("p&c")) {
	            		divisionList.add(tfloorMapD.get("p&cTotal"));
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
	
	
	
	private void setDivisionTotalCount(Map<String, DivisionInfo> tfloorMapD, String division, int currentStatus,int headcount) {
		
		/*
		int divisionheadcount=0 ;  
		String[] employees=headcount.split(",");    
		for (int i = 0; i < employees.length; i++) {
			headcount=employees[i];
			divisionheadcount=employees.length;
		}*/
		//System.out.println("div hc"+headcount+"-"+divisionheadcount);
		if (tfloorMapD.containsKey(division.toLowerCase()+"Total")) {
			DivisionInfo divisionInfo = tfloorMapD.get(division.toLowerCase()+"Total");
			//int divisionheadcount = divisionInfo.getHeadcount();
			//System.out.println(divisionInfo.getHeadcount());  
			//System.out.println("Proj: "+divisionInfo.getProjectName());
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
				int divisionheadcount = divisionInfo.getHeadcount(); int c=divisionheadcount+headcount;
				//System.out.println("hc1:"+c+"divvision "+divisionInfo.getDivision());
				//System.out.println("hc1:"+c+"Pro "+divisionInfo.getProjectName());
				//divisionheadcount++;
				divisionInfo.setHeadcount(divisionheadcount+headcount);
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
				
				int divisionheadcount = divisionInfo.getHeadcount();
				//System.out.println("hc"+divisionheadcount+headcount);
				//divisionheadcount++;
				divisionInfo.setHeadcount(divisionheadcount+headcount);
			}
			if (currentStatus == 3) {
				int utilized = divisionInfo.getUtilized();
				utilized++;
				divisionInfo.setUtilized(utilized);
			}
             			
			
			divisionInfo.setDivision(division.toLowerCase()+"Total");
			tfloorMapD.put(division.toLowerCase()+"Total", divisionInfo);
		}
		
		
	}
	
	public UtilizationList getWorkstationReportList(String field){
		String divisionSQL = 
				" select  " + 
				"sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status  " + 
				"from  " + 
				"wms_workstation_status ws  " + 
				"join wms_sony_emp_details sed on ws.project_id = sed.project_name group by ws.workstation_no  " + 
				"order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
						
		System.out.println("divisionSQL"+divisionSQL);
		Map<String,DivisionInfo> tfloorMapD = new HashMap<>();
		Map<String,Map<String,DivisionInfo>> floorMap = getJdbcTemplate().query(divisionSQL, (ResultSet rs) -> {
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
	            if(utilizationMap.getKey().equalsIgnoreCase("isbl")) {
		            	divisionList.add(tfloorMapD.get("isbl1"));
		            	System.out.println("Test div:"+division1.getAssigned());
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
		//createExcelHeaders(floorWiseMap,totalCountMap,vacantCountMap);  
		return null; 
	}
}
