package com.wms.dao.floormap;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.dao.WmsBaseDAO;
import com.wms.model.allocation.SeatAllocation;
import com.wms.model.floormap.FloorDetails;
import com.wms.model.floormap.FloorMapInfo;
import com.wms.model.floormap.FloorSummaryStatus;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmployeeSeatAsign;

@Repository
public class FloorMapDAO extends WmsBaseDAO {
		 
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
	
	
}
