package com.wms.dao.floormap;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.model.FloorMapDetails;
import com.wms.model.floormap.FloorMapInfo;

@Repository
public class FloorMapDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
	
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
		 
	public Map<String,FloorMapInfo> getFloorMapDetails(String floorID,String projectID,String requestid){
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
		    	floorMapInfo.setStatus(String.valueOf(rs.getInt("ws.current_status")));
		    	floorMapInfo.setWorkstation_no(workstationNo);
		    	floorMapInfo.setStatusColor(getStatusColor(rs.getInt("ws.current_status")));
		    	floorMapD.put(workstationNo, floorMapInfo);
		    }
		    return floorMapD;
		});
		
		return floorMap;
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
	
	
}
