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
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.model.Coordinates;
import com.wms.model.FloorMapDetails;
import com.wms.model.RunningNumberRequest_id;
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
		String unallocated = "SELECT * from wms_pm_requests order by insert_timestamp desc ";
		RowMapper<AllocationDetails> rowMapper = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(unallocated,rowMapper);
	}
	
	public List<AllocationDetails> getAllocationApprovalList(){
		String unallocated = "SELECT * from wms_fa_requests order by insert_timestamp desc ";
		RowMapper<AllocationDetails> rowMapper = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(unallocated,rowMapper);
	}
	
	public  List<RunningNumberRequest_id> getRuuningNumberReqidList(){
		String unallocated = "SELECT * from wms_request_id";
		System.out.println("RunningRequestidNumb :" + unallocated);
		RowMapper<RunningNumberRequest_id> rowMapper = new BeanPropertyRowMapper<RunningNumberRequest_id>(RunningNumberRequest_id.class);
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
		String unallocated = "SELECT * from wms_request_id";
		//System.out.println(getRuuningNumberReqidList);
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
		System.out.println("Insert this value into table " +allocationRequest.getDepartment_id()+ allocationRequest.getTypeofdesk());
		addPMRequest(allocationRequest);
		addFMRequest(allocationRequest);
		addHistorydetails(allocationRequest);
		addEmailRequest(allocationRequest);  
		
		GenericResponse genericResponse = new GenericResponse(0, null,1,"success");
		return genericResponse;
	}
	
	public void addPMRequest(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_pm_requests(request_id,pm_id,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,remarks) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, "REQALC-2019-000001");
                statement.setString(2, "SONYEMP01" );
                statement.setString(3, allocationRequest.getDepartment_id());
                statement.setString(4, allocationRequest.getProject_id());
                statement.setString(5, allocationRequest.getNo_of_resource());
                statement.setString(6, allocationRequest.getTypeofdesk());
                statement.setDate(7, WMSDateUtil.getDateFormat(allocationRequest.getStart_time()));
                statement.setDate(8, WMSDateUtil.getDateFormat(allocationRequest.getEnd_time()));
                statement.setString(9, "Pending");
                statement.setString(10, "No remarks");
               // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                return statement;
        }
        });
	}
	public void addFMRequest(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_fa_requests(request_id,pm_id,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,remarks) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, "REQALC-2019-000001");
                statement.setString(2, "SONYEMP01" );
                statement.setString(3, allocationRequest.getDepartment_id());
                statement.setString(4, allocationRequest.getProject_id());
                statement.setString(5, allocationRequest.getNo_of_resource());
                statement.setString(6, allocationRequest.getTypeofdesk());
                statement.setDate(7, WMSDateUtil.getDateFormat(allocationRequest.getStart_time()));
                statement.setDate(8, WMSDateUtil.getDateFormat(allocationRequest.getEnd_time()));
                statement.setString(9, "Pending");
                statement.setString(10, "No remarks");
               // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                return statement;
        }
        });
	}
	
	public void addHistorydetails(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_history(request_id, remarks_description) "
				+ "VALUES (?,?),(?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, "REQALC-2019-000001");
                statement.setString(2, "Requested by PM" );
                statement.setString(3, "REQALC-2019-000001");
                statement.setString(4, "Pending by FA" );
                return statement;
        }
        });
	}
	public void addEmailRequest(AllocationRequest allocationRequest) {
		try {
			String sql = "INSERT INTO "
					+ "wms_email_jobs(subject, from_id ,to_id, attachment, status, request_id, request_status) "
					+ "VALUES (?,?,?,?,?,?,?)";  
			System.out.println("addEmailRequest"+sql.toString());
			getJdbcTemplate().update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			        PreparedStatement statement = connection.prepareStatement(sql.toString(),
			                        Statement.RETURN_GENERATED_KEYS);
			        statement.setString(1, "Seat allocation date has Ended Today");
			        statement.setString(2, "thiruvasagam.k@gmail.com");
			        statement.setString(3, "thiruvasagam.k@gmail.com" );    
			        statement.setString(4, "Image.png");  
			        statement.setString(5, "P");  
			        statement.setString(6, "WMS000123");
			        statement.setString(7, "Approved");  
			        //statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());  
			        //statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
			        System.out.println("addEmailRequest end"+sql.toString()+statement);  
			        return statement;
			}
			});
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	}
	

	

}
