package com.wms.dao.allocation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.model.Coordinates;
import com.wms.model.FloorMapDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.response.GenericResponse;
import com.wms.util.WMSDateUtil;

@Repository
public class AllocationDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
	
	public List<AllocationDetails> getAllocationList(){
		String unallocated = "SELECT * from wms_allocation";
		RowMapper<AllocationDetails> rowMapper = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(unallocated,rowMapper);
	}
	

	private String executeQuery(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		int count = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(count);
	}
	
	private List<Map<String, Object>> executeQueryList(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		List<Map<String, Object>> utilization = getJdbcTemplate().queryForList(sql);
		return utilization;
	}
	
	public Map<String,FloorMapDetails> getCoordinates(String floorID,String projectID){
		//Get Coordinates from master table
		String coordinatesSQL = "SELECT * from wms_coordinates where floor_id = '"+floorID+"'";
		RowMapper<Coordinates> rowMapper = new BeanPropertyRowMapper<Coordinates>(Coordinates.class);
		List<Coordinates> coordinateList = getJdbcTemplate().query(coordinatesSQL,rowMapper);
		Map<String,FloorMapDetails> floorMap = new HashMap<>();
		for (Coordinates coordinates : coordinateList) {
			String workstation = coordinates.getWorkstation_no();
			FloorMapDetails floorMapDetails = new FloorMapDetails();
			floorMapDetails.setCoordinates(coordinates.getCoordinates());
			floorMapDetails.setFloor_id(coordinates.getFloor_id());
			floorMapDetails.setWorkstation_no(coordinates.getWorkstation_no());
			//Get Employee Details from allocation Table
			String allocationSQL = "SELECT * FROM emp_allocation where workstation_no = '"+workstation+"' and project_name = '"+projectID+"' ";
			if(projectID.equals("All")) {
				allocationSQL = "SELECT * FROM emp_allocation where workstation_no = '"+workstation+"'";
			}
			List<Map<String, Object>> allocationList = executeQueryList(allocationSQL);
			if(allocationList==null || allocationList.size()==0) {
				continue;
			}
			String[] employee_ID = new String[allocationList.size()];
			int i = 0;
			for(Map<String, Object> row:allocationList){
				String emp_id = String.valueOf(row.get("request_user_id"));
				System.out.println("emp_id"+emp_id);
				employee_ID[i]= emp_id;
				i++;
			}
			floorMapDetails.setEmployee_ID(employee_ID);
			
			//Get Employee/Workstation Utilized from attendance table
			String currentDate = "2019-07-22";
			String empAttendanceSQL = "SELECT * FROM attendance where emp_id in ("+getListByCommaSeparated(employee_ID)+") and presence_date = '"+currentDate+"'";
			System.out.println("empAttendanceSQL"+empAttendanceSQL);
			List<Map<String, Object>> empAttendanceList = executeQueryList(empAttendanceSQL);
			if(empAttendanceList!=null && empAttendanceList.size()>0) {
				floorMapDetails.setIsUtilized("Y");
			}
			
			floorMap.put(workstation, floorMapDetails);
		}
		return floorMap;
	}
	
	public static void main(String[] args) {
		String[] employees = new String[3];
		employees[0]="One";
		employees[1]="Two";
		employees[2]="Three";
		System.out.println(Arrays.toString(employees));
		String empAttendanceSQL = "SELECT * FROM attendance where emp_id in ("+getListByCommaSeparated(employees)+")";
		System.out.println(empAttendanceSQL);
	}
	
	public static String getListByCommaSeparated(String[] employees) {
		StringBuilder strB = new StringBuilder();
		for(int i=0;i<employees.length;i++) {
			strB.append("'");
			strB.append(employees[i]);
			strB.append("'");
			if(i!=employees.length-1)
				strB.append(",");
		}
		System.out.println(strB.toString());
		return strB.toString();
	}

	public GenericResponse setPMRequest(AllocationRequest allocationRequest) {
		System.out.println("Insert this value into table " +allocationRequest.getDepartment() + allocationRequest.getDesktype());
		addPMRequest(allocationRequest);
		GenericResponse genericResponse = new GenericResponse(0, null,1,"success");
		return genericResponse;
	}
	
	public void addPMRequest(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_project_manager(department_id, project_id, project_name, no_of_resource, typeofdesk, start_time, end_time, insert_timestamp) "
				+ "VALUES (?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, allocationRequest.getDepartment());
                statement.setString(2, allocationRequest.getProjectname() );
                statement.setString(3, allocationRequest.getProjectname());
                statement.setString(4, allocationRequest.getNoofresources());
                statement.setString(5, allocationRequest.getDesktype());
                statement.setDate(6, WMSDateUtil.getDateFormat(allocationRequest.getStarttime()));
                statement.setDate(7, WMSDateUtil.getDateFormat(allocationRequest.getEndtime()));
                statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                return statement;
        }
        });
	}
	
}
