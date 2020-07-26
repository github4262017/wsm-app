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
	private EmployeeNameUtility Ol0lloOI0;
	
	public FloorDetails getFloorMapDetails(String l1I0il0I,String Oi10ilOI0,String OOolOl0I1){
		String l1I0il0IO = WMSConstant.coordinatesSQL+" '"+l1I0il0I+"' " ;
						
		if(Oi10ilOI0!=null && !Oi10ilOI0.equalsIgnoreCase("All")) {
			l1I0il0IO = l1I0il0IO + " AND ws.project_id = '"+Oi10ilOI0+"' " ;
		}
		if(OOolOl0I1!=null) {
			l1I0il0IO = l1I0il0IO + " AND ws.request_id = '"+OOolOl0I1+"' " ;
		}
		FloorSummaryStatus I11lio0Io = new FloorSummaryStatus();
		Map<String,FloorMapInfo> I11lio0I = getJdbcTemplate().query(l1I0il0IO, (ResultSet rs) -> {
			Map<String,FloorMapInfo> olil0ooI0 = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("ws.workstation_no");
		    	FloorMapInfo Oo0loo1Io = new FloorMapInfo();
		    	Oo0loo1Io.setFloorid(rs.getString("ws.floor_id"));
		    	Oo0loo1Io.setCoordinates(rs.getString("wc.coordinates"));
		    	Oo0loo1Io.setProjectId(rs.getString("ws.project_id"));
		    	Oo0loo1Io.setEmployeeId(rs.getString("ws.employees"));
		    	int currentStatus = rs.getInt("ws.current_status");
		    	Oo0loo1Io.setStatus(String.valueOf(currentStatus));
		    	Oo0loo1Io.setWorkstation_no(workstationNo);
		    	Oo0loo1Io.setStatusColor(getStatusColor(currentStatus));
		    	olil0ooI0.put(workstationNo, Oo0loo1Io);
		    	setFloorSummary(I11lio0Io, currentStatus);
		    }
		    return olil0ooI0;
		});
		
		FloorDetails ii0l1oiIo = new FloorDetails();
		ii0l1oiIo.setFloorMapInfo(I11lio0I);
		ii0l1oiIo.setSummaryStatus(I11lio0Io);
		ii0l1oiIo.setFloorId(l1I0il0I);
		
		return ii0l1oiIo;
	}
	public FloorDetails getFloorMapDetailsStatus(FloormapRequest Ii0lIlII1){
		//String floorID=floormapRequest.getFloorname();
		//String floorID="F2";
		//String projectID= "All";
		String floorID=Ii0lIlII1.getFloorname();
		String projectID= Ii0lIlII1.getProject_id();
		String requestid=Ii0lIlII1.getRequest_id();  
		String oO1oiolIl = WMSConstant.floorStatus_coordinatesSQL+"'"+floorID+"'" ;
						
		if(projectID!=null && !projectID.equalsIgnoreCase("All")) {
			oO1oiolIl = oO1oiolIl + " AND ws.project_id = '"+projectID+"' " ;
		}
		if(requestid!=null) {
			oO1oiolIl = oO1oiolIl + " AND ws.request_id = '"+requestid+"' " ;
		}
		FloorSummaryStatus olil0ooI0 = new FloorSummaryStatus();
		Map<String,FloorMapInfo> O0olOo1Io = getJdbcTemplate().query(oO1oiolIl, (ResultSet rs) -> {
			Map<String,FloorMapInfo> I01lioiIo = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("ws.workstation_no");
		    	FloorMapInfo ii0l1oiIo = new FloorMapInfo();
		    	ii0l1oiIo.setFloorid(rs.getString("ws.floor_id"));
		    	ii0l1oiIo.setCoordinates(rs.getString("wc.coordinates"));
		    	ii0l1oiIo.setProjectId(rs.getString("ws.project_id"));
		    	ii0l1oiIo.setEmployeeId(rs.getString("ws.employees"));
		    	
		    	String[] gid= rs.getString("ws.employees").split(",");
		    	
		    	String emp=null;
		    	StringBuffer IIioIoII0 = new StringBuffer();
		    	for (int i = 0; i < gid.length; i++) {
					
		    		HashMap<String, EmpIDName> employeeAll=Ol0lloOI0.getName(gid[i]);
		    		if(employeeAll.containsKey(gid[i])) {
			    		emp=(String)employeeAll.get(gid[i]).getEmployee_name();
			    		
			    		if (i > 0) {
			    			IIioIoII0.append(",");  
			    		} 
			    		IIioIoII0.append(gid[i]);
			    		IIioIoII0.append(WMSConstant.HYPHEN);
			    		IIioIoII0.append(emp); 
			    		ii0l1oiIo.setEmployeeName(IIioIoII0.toString()); 
		    		}   
				}    
		    	                                                   
		    	int currentStatus = rs.getInt("ws.current_status");
		    	ii0l1oiIo.setStatus(String.valueOf(currentStatus));
		    	ii0l1oiIo.setWorkstation_no(workstationNo);
		    	ii0l1oiIo.setStatusColor(getStatusColor(currentStatus));
		    	I01lioiIo.put(workstationNo, ii0l1oiIo);
		    	setFloorSummary(olil0ooI0, currentStatus);
		    }
		    return I01lioiIo;
		});
		
		FloorDetails floorDetails = new FloorDetails();
		floorDetails.setFloorMapInfo(O0olOo1Io);
		floorDetails.setSummaryStatus(olil0ooI0);
		floorDetails.setFloorId(floorID);
		
		return floorDetails;
	}
	private void setFloorSummary(FloorSummaryStatus lI1o1o0Io, int currentStatus) {
		try {
		if(currentStatus==WMSConstant.SEAT_STATUS_VACANT) {
			if(lI1o1o0Io.getTotalVacant()==0) {
				lI1o1o0Io.setTotalVacant(1);
			}else {
				int totalVacant = lI1o1o0Io.getTotalVacant();
				totalVacant++;
				lI1o1o0Io.setTotalVacant(totalVacant);
			}
		}
		if(currentStatus==WMSConstant.SEAT_STATUS_ALLOCATED) {
			if(lI1o1o0Io.getTotalAllocated()==0) {
				lI1o1o0Io.setTotalAllocated(1);
			}else {
				int totalAllocated = lI1o1o0Io.getTotalAllocated();
				totalAllocated++;
				lI1o1o0Io.setTotalAllocated(totalAllocated);
			}
		}
		if(currentStatus==WMSConstant.SEAT_STATUS_ASSIGNED) {
			if(lI1o1o0Io.getTotalAssigned()==0) {
				lI1o1o0Io.setTotalAssigned(1);
			}else {
				int totalAssigned = lI1o1o0Io.getTotalAssigned();
				totalAssigned++;
				lI1o1o0Io.setTotalAssigned(totalAssigned);
			}
		}
		if(currentStatus==WMSConstant.SEAT_STATUS_UTILIZED) {
			if(lI1o1o0Io.getTotalUtilized()==0) {
				lI1o1o0Io.setTotalUtilized(1);
			}else {
				int totalUtilized = lI1o1o0Io.getTotalUtilized();
				totalUtilized++;
				lI1o1o0Io.setTotalUtilized(totalUtilized);
			}
		}
	}
	catch(Exception e) {
		LOGGER.error("setFloorSummary Excception :"+ e);
	}
		
	}
	
	public String getStatusColor(int ooilooOIi) {
		String colorStatus = ""; 
		switch (ooilooOIi) {
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
                    public void setValues(PreparedStatement ooilooOIi, SeatAllocation lIOlIIIIl) 
						throws SQLException {
                        ooilooOIi.setString(1, lIOlIIIIl.getRequest_id());
                        ooilooOIi.setString(2, lIOlIIIIl.getProject_id());
                        ooilooOIi.setInt(3, WMSConstant.SEAT_STATUS_ALLOCATED); 
                        ooilooOIi.setString(4, lIOlIIIIl.getSeat_number());  
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
                    public void setValues(PreparedStatement lIOlIIIIl, EmployeeSeatAsign OlOooolI1) 
						throws SQLException {                        
                        lIOlIIIIl.setString(1, OlOooolI1.getEmp_id()); 
                        lIOlIIIIl.setInt(2, WMSConstant.SEAT_STATUS_ASSIGNED);
                        lIOlIIIIl.setString(3, OlOooolI1.getSeat_number());
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
		
		Map<String,EmployeeSeatAsign> lI1o1o0Io = new HashMap<>();
		for (EmployeeSeatAsign iIIoioII1 : employeeAsignDetailsList) {
			String wStation = iIIoioII1.getSeat_number();
			if(lI1o1o0Io.containsKey(wStation)) {
				StringBuilder oI1o0o1II = new StringBuilder();     
				oI1o0o1II.append(lI1o1o0Io.get(wStation).getEmp_id());
				oI1o0o1II.append(",");
				oI1o0o1II.append(iIIoioII1.getEmp_id());
				lI1o1o0Io.get(wStation).setEmp_id(oI1o0o1II.toString());
			}else {
				lI1o1o0Io.put(wStation, iIIoioII1);    
			}
		}
		
		for (Map.Entry<String, EmployeeSeatAsign> workstationEntry : lI1o1o0Io.entrySet()) {
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
	public void batchUpdateDeAllocateWorkstationStatus(AllocationRequest ooilooOIi, int batchSize) {
		int updateStatus = 0;
		 String SQLDeAllocateWorkstationStatus = WMSConstant.SQLDeAllocateWorkstationStatus;
	      try {
	    	 updateStatus = getJdbcTemplate().update(SQLDeAllocateWorkstationStatus,ooilooOIi.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,ooilooOIi.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
    }
	
	/**
	 * To get the workstation status count
	 * @param IOIi0IoIO
	 * @param OiIoloiI0
	 * @param iO1o1o0Io
	 * @return
	 */
	public void getWorstationStatusCount(String IOIi0IoIO,String OiIoloiI0,String iO1o1o0Io){
		String statusCountSQL = WMSConstant.statusCountSQL +" '"+IOIi0IoIO+"' group by current_status " ;
		Map<String,FloorMapInfo> oI1o0o1II = getJdbcTemplate().query(statusCountSQL, (ResultSet rs) -> {
			Map<String,FloorMapInfo> oiOo0oII0 = new HashMap<>();
		    while (rs.next()) {
		    	String workstationNo = rs.getString("wscount");
		    }
		    return oiOo0oII0;
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
		    	int O1I1Il1II = rs.getInt("ws.current_status");
		    	String divisionKey = division.toLowerCase().trim();
		    	String projectidKey = projectid.toLowerCase().trim();
		    	
		    	if(floorMapD.containsKey(divisionKey)) {
		    		Map<String,DivisionInfo> innerMap = floorMapD.get(divisionKey);
		    		if(innerMap.containsKey(projectidKey)) {
		    			DivisionInfo i01oloiIi = innerMap.get(projectidKey);
		    			if(O1I1Il1II==0) {
		    				int vacant = i01oloiIi.getVacant();
		    				vacant++;  
			    			i01oloiIi.setVacant(vacant);
			    		}
			    		if(O1I1Il1II==1) {
			    			int allocated = i01oloiIi.getAllocated();
			    			allocated++;  
			    			i01oloiIi.setAllocated(allocated);
			    		}
			    		if(O1I1Il1II==2) {
			    			int assigned = i01oloiIi.getAssigned();
			    			assigned++; 
			    			i01oloiIi.setAssigned(assigned);
			    		}
			    		if(O1I1Il1II==3) {
			    			int utilized = i01oloiIi.getUtilized();
			    			utilized++; 
			    			i01oloiIi.setUtilized(utilized);
			    		}
		    		}else {
		    			DivisionInfo I1o1lloIi = new DivisionInfo();
			    		I1o1lloIi.setDivision(division);
			    		I1o1lloIi.setProjectName(projectid);
			    		I1o1lloIi.setFloorid(floorid);
			    		if(O1I1Il1II==0) {
			    			I1o1lloIi.setVacant(1);
			    		}
			    		if(O1I1Il1II==1) {
			    			I1o1lloIi.setAllocated(1);
			    		}
			    		if(O1I1Il1II==2) {
			    			I1o1lloIi.setAssigned(1);
			    		}
			    		if(O1I1Il1II==3) {
			    			I1o1lloIi.setUtilized(1);
			    		}
			    		innerMap.put(projectidKey, I1o1lloIi);
		    		}
		    	}else {
		    		DivisionInfo lo0l0I0I0 = new DivisionInfo();
		    		lo0l0I0I0.setDivision(division);
		    		lo0l0I0I0.setProjectName(projectid);
		    		lo0l0I0I0.setFloorid(floorid);
		    		if(O1I1Il1II==0) {
		    			lo0l0I0I0.setVacant(1);
		    		}
		    		if(O1I1Il1II==1) {
		    			lo0l0I0I0.setAllocated(1);
		    		}
		    		if(O1I1Il1II==2) {
		    			lo0l0I0I0.setAssigned(1);
		    		}
		    		if(O1I1Il1II==3) {
		    			lo0l0I0I0.setUtilized(1);
		    		}
		    		Map<String,DivisionInfo> I01IlliIO = new HashMap<>();
		    		I01IlliIO.put(projectidKey, lo0l0I0I0);
		    		floorMapD.put(divisionKey, I01IlliIO);
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
		    	String O1io0o1IO = rs.getString("sed.division");
		    	String ol1IllIIO = rs.getString("ws.project_id");
		    	String floorid = rs.getString("ws.floor_id");
		    	int o1i11loI0 = rs.getInt("ws.current_status");
		    	String I01IlliIO = O1io0o1IO.toLowerCase().trim();
		    	String projectidKey = ol1IllIIO.toLowerCase().trim();
		    	setDivisionTotalCount(tfloorMapD,O1io0o1IO,o1i11loI0);
		    	if(floorMapD.containsKey(I01IlliIO)) {
		    		Map<String,DivisionInfo> l1I1olIII = floorMapD.get(I01IlliIO);
		    		if(l1I1olIII.containsKey(projectidKey)) {
		    			DivisionInfo i01oloiIi = l1I1olIII.get(projectidKey);
		    			if(o1i11loI0==0) {
		    				int oOoi0o1IO = i01oloiIi.getVacant();
		    				oOoi0o1IO++;  
			    			i01oloiIi.setVacant(oOoi0o1IO);
			    		}
			    		if(o1i11loI0==1) {
			    			int allocated = i01oloiIi.getAllocated();
			    			allocated++;  
			    			i01oloiIi.setAllocated(allocated);
			    		}
			    		if(o1i11loI0==2) {
			    			int lI0iIooIo = i01oloiIi.getAssigned();
			    			lI0iIooIo++; 
			    			i01oloiIi.setAssigned(lI0iIooIo);
			    		}
			    		if(o1i11loI0==3) {
			    			int utilized = i01oloiIi.getUtilized();
			    			utilized++; 
			    			i01oloiIi.setUtilized(utilized);
			    		}
		    		}else {
		    			DivisionInfo IOIi0IoIO = new DivisionInfo();
			    		IOIi0IoIO.setDivision(O1io0o1IO);
			    		IOIi0IoIO.setProjectName(ol1IllIIO);
			    		IOIi0IoIO.setFloorid(floorid);
			    		if(o1i11loI0==0) {
			    			IOIi0IoIO.setVacant(1);
			    		}
			    		if(o1i11loI0==1) {
			    			IOIi0IoIO.setAllocated(1);
			    		}
			    		if(o1i11loI0==2) {
			    			IOIi0IoIO.setAssigned(1);
			    		}
			    		if(o1i11loI0==3) {
			    			IOIi0IoIO.setUtilized(1);
			    		}
			    		l1I1olIII.put(projectidKey, IOIi0IoIO);
		    		}
		    	}else {
		    		DivisionInfo OlIolllIO = new DivisionInfo();
		    		OlIolllIO.setDivision(O1io0o1IO);
		    		OlIolllIO.setProjectName(ol1IllIIO);
		    		OlIolllIO.setFloorid(floorid);
		    		if(o1i11loI0==0) {
		    			OlIolllIO.setVacant(1);
		    		}
		    		if(o1i11loI0==1) {
		    			OlIolllIO.setAllocated(1);
		    		}
		    		if(o1i11loI0==2) {
		    			OlIolllIO.setAssigned(1);
		    		}
		    		if(o1i11loI0==3) {
		    			OlIolllIO.setUtilized(1);
		    		}
		    		Map<String,DivisionInfo> innerMap = new HashMap<>();
		    		innerMap.put(projectidKey, OlIolllIO);
		    		floorMapD.put(I01IlliIO, innerMap);
		    	}
		    }
		    return floorMapD;
		});
		
		List<DivisionInfo> l1Ioio0IO = new ArrayList<DivisionInfo>();
		 for (Map.Entry<String,Map<String,DivisionInfo>> I01IlliIO : floorMap.entrySet())  {
	            DivisionInfo division1 = new DivisionInfo();
	            if(I01IlliIO.getKey().equalsIgnoreCase("isbl")) {
		            	l1Ioio0IO.add(tfloorMapD.get("isbl1"));
	            	}
	            	if(I01IlliIO.getKey().equalsIgnoreCase("infosec")) {
	            		l1Ioio0IO.add(tfloorMapD.get("infosec1"));
	            	}
	            	if(I01IlliIO.getKey().equalsIgnoreCase("sard")) {
		            	l1Ioio0IO.add(tfloorMapD.get("sard1"));
	            	}
	            	if(I01IlliIO.getKey().equalsIgnoreCase("p&c")) {
	            		l1Ioio0IO.add(tfloorMapD.get("p&c1"));
	            	}
	            Map<String,DivisionInfo> OlIolllIO = I01IlliIO.getValue();
	            for (Map.Entry<String,DivisionInfo> divisionMap : OlIolllIO.entrySet())  {
	            	DivisionInfo division = divisionMap.getValue();
	            	l1Ioio0IO.add(division);
	            }
	    } 
		
		UtilizationList lIOlIIIIl = new UtilizationList();
		lIOlIIIIl.setUtilizationReport(l1Ioio0IO);
		return lIOlIIIIl;
	}
	
	
	public UtilizationList getWorkstationReportList(String field){ 
		String divisionSQLWorkstationReportList = WMSConstant.divisionSQLWorkstationReportList ;
						
		Map<String,DivisionInfo> lI0iIooIo = new HashMap<>();
		Map<String,Map<String,DivisionInfo>> I01IlliIO = getJdbcTemplate().query(divisionSQLWorkstationReportList, (ResultSet rs) -> {
			Map<String,Map<String,DivisionInfo>> floorMapD = new HashMap<>();
		    while (rs.next()) {
		    	String lIOlIIIIl = rs.getString("sed.division");
		    	String OlIiooiI1 = rs.getString("ws.project_id");
		    	String floorid = rs.getString("ws.floor_id");
		    	int O11IIoIIo = rs.getInt("ws.current_status");
		    	String divisionKey = lIOlIIIIl.toLowerCase().trim();
		    	String projectidKey = OlIiooiI1.toLowerCase().trim();
		    	setDivisionTotalCount(lI0iIooIo,lIOlIIIIl,O11IIoIIo);
		    	if(floorMapD.containsKey(divisionKey)) {
		    		Map<String,DivisionInfo> innerMap = floorMapD.get(divisionKey);
		    		if(innerMap.containsKey(projectidKey)) {
		    			DivisionInfo lloiio1I1 = innerMap.get(projectidKey);
		    			if(O11IIoIIo==0) {
		    				int vacant = lloiio1I1.getVacant();
		    				vacant++;  
			    			lloiio1I1.setVacant(vacant);
			    		}
			    		if(O11IIoIIo==1) {
			    			int allocated = lloiio1I1.getAllocated();
			    			allocated++;  
			    			lloiio1I1.setAllocated(allocated);
			    		}
			    		if(O11IIoIIo==2) {
			    			int assigned = lloiio1I1.getAssigned();
			    			assigned++; 
			    			lloiio1I1.setAssigned(assigned);
			    		}
			    		if(O11IIoIIo==3) {
			    			int utilized = lloiio1I1.getUtilized();
			    			utilized++; 
			    			lloiio1I1.setUtilized(utilized);
			    		}
		    		}else {
		    			DivisionInfo lloiio1I1 = new DivisionInfo();
			    		lloiio1I1.setDivision(lIOlIIIIl);
			    		lloiio1I1.setProjectName(OlIiooiI1);
			    		lloiio1I1.setFloorid(floorid);
			    		if(O11IIoIIo==0) {
			    			lloiio1I1.setVacant(1);
			    		}
			    		if(O11IIoIIo==1) {
			    			lloiio1I1.setAllocated(1);
			    		}
			    		if(O11IIoIIo==2) {
			    			lloiio1I1.setAssigned(1);
			    		}
			    		if(O11IIoIIo==3) {
			    			lloiio1I1.setUtilized(1);
			    		}
			    		innerMap.put(projectidKey, lloiio1I1);
		    		}
		    	}else {
		    		DivisionInfo lloiio1I1 = new DivisionInfo();
		    		lloiio1I1.setDivision(lIOlIIIIl);
		    		lloiio1I1.setProjectName(OlIiooiI1);
		    		lloiio1I1.setFloorid(floorid);
		    		if(O11IIoIIo==0) {
		    			lloiio1I1.setVacant(1);
		    		}
		    		if(O11IIoIIo==1) {
		    			lloiio1I1.setAllocated(1);
		    		}
		    		if(O11IIoIIo==2) {
		    			lloiio1I1.setAssigned(1);
		    		}
		    		if(O11IIoIIo==3) {
		    			lloiio1I1.setUtilized(1);
		    		}
		    		Map<String,DivisionInfo> iIl1iI0I1 = new HashMap<>();
		    		iIl1iI0I1.put(projectidKey, lloiio1I1);
		    		floorMapD.put(divisionKey, iIl1iI0I1);
		    	}
		    }
		    return floorMapD;
		});
		
		List<DivisionInfo> divisionList = new ArrayList<DivisionInfo>();
		 for (Map.Entry<String,Map<String,DivisionInfo>> lI0l1l1Ii : I01IlliIO.entrySet())  {
	            DivisionInfo division1 = new DivisionInfo();   
	            if(lI0l1l1Ii.getKey().equalsIgnoreCase("isbl")) {
		            	divisionList.add(lI0iIooIo.get("isbl1"));
	            	}
	            	if(lI0l1l1Ii.getKey().equalsIgnoreCase("infosec")) {
	            		divisionList.add(lI0iIooIo.get("infosec1"));
	            	}
	            	if(lI0l1l1Ii.getKey().equalsIgnoreCase("sard")) {
		            	divisionList.add(lI0iIooIo.get("sard1"));
	            	}
	            	if(lI0l1l1Ii.getKey().equalsIgnoreCase("p&c")) {
	            		divisionList.add(lI0iIooIo.get("p&c1"));
	            	}
	            Map<String,DivisionInfo> innerMap = lI0l1l1Ii.getValue();
	            for (Map.Entry<String,DivisionInfo> divisionMap : innerMap.entrySet())  {
	            	DivisionInfo iool0o0IO = divisionMap.getValue();
	            	divisionList.add(iool0o0IO);
	            }
	    } 
		
		UtilizationList utilizationList = new UtilizationList();
		utilizationList.setUtilizationReport(divisionList);
		return utilizationList;
	}
	private void setDivisionTotalCount(Map<String, DivisionInfo> tfloorMapD, String division, int oloiIooI0) {
		
		if (tfloorMapD.containsKey(division.toLowerCase()+"1")) {
			DivisionInfo divisionInfo = tfloorMapD.get(division.toLowerCase()+"1");
			if (oloiIooI0 == 0) {
				int vacant = divisionInfo.getVacant();
				vacant++;
				divisionInfo.setVacant(vacant);
			}
			if (oloiIooI0 == 1) {
				int allocated = divisionInfo.getAllocated();
				allocated++;
				divisionInfo.setAllocated(allocated);
			}
			if (oloiIooI0 == 2) {
				int assigned = divisionInfo.getAssigned();
				assigned++;
				divisionInfo.setAssigned(assigned);
			}
			if (oloiIooI0 == 3) {
				int utilized = divisionInfo.getUtilized();
				utilized++;
				divisionInfo.setUtilized(utilized);
			}
		}else {
			DivisionInfo divisionInfo = new DivisionInfo();
			if (oloiIooI0 == 0) {
				int vacant = divisionInfo.getVacant();
				vacant++;
				divisionInfo.setVacant(vacant);
			}
			if (oloiIooI0 == 1) {
				int allocated = divisionInfo.getAllocated();
				allocated++;
				divisionInfo.setAllocated(allocated);
			}
			if (oloiIooI0 == 2) {
				int assigned = divisionInfo.getAssigned();
				assigned++;
				divisionInfo.setAssigned(assigned);
			}
			if (oloiIooI0 == 3) {
				int utilized = divisionInfo.getUtilized();
				utilized++;
				divisionInfo.setUtilized(utilized);
			}
			divisionInfo.setDivision(division.toLowerCase()+"1");
			tfloorMapD.put(division.toLowerCase()+"1", divisionInfo);
		}
		
		
	}

	
}
