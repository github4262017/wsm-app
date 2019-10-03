package com.wms.dao.allocation;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.dao.WmsBaseDAO;
import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.Coordinates;
import com.wms.model.EmailModel;
import com.wms.model.FloorMapDetails;
import com.wms.model.RunningNumberRequest_id;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.BulkAllocation;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.model.allocation.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmpBulkAssign;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.response.GenericResponse;
import com.wms.util.WMSDateUtil;
import com.wms.util.WMSRNumberUtil;

@Repository
public class AllocationDAO extends WmsBaseDAO {
	
	@Autowired
	private FloorMapDAO floorMapDAO;
	
	@Value("${wms.server.fileupload.path:D://Bulkupload//}")
    private String fileUploadPath;
	
	@Value("${wms.batchupdate.size}")
	private int batchupdateSize;
	
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
	//PM Request Response Details
	public List<PMReqRespDetails> pmReqAllDetails(String requestid){ 
		String unallocated = "SELECT * from wms_pm_requests where request_id='"+requestid+"'"; 
		RowMapper<PMReqRespDetails> rowMapper = new BeanPropertyRowMapper<PMReqRespDetails>(PMReqRespDetails.class);
		System.out.println("PMReqRespDetails :"+unallocated);
		List<PMReqRespDetails> listrequest =getJdbcTemplate().query(unallocated,rowMapper);
		return listrequest; 
		
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

	public GenericResponse setPMRequest(AllocationRequest allocationRequest,EmailModel emailModel) {
		System.out.println("setPMRequest Insert this value into table " +allocationRequest.getDepartment_id()+ allocationRequest.getTypeofdesk());
		allocationRequest.setRequest_id(getRequestID());
		addPMRequest(allocationRequest);
		addFMRequest(allocationRequest);
		addHistorydetails(allocationRequest);
		emailModel.setRequestId(allocationRequest.getRequest_id());
		addEmailRequest(emailModel);  
		
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}
	public GenericResponse updatePMRequestTble(AllocationRequest allocationRequest) {
		System.out.println("updatePMRequestTble");
		updatePMRequestReject(allocationRequest);
		updateFARequestReject(allocationRequest);
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}
	
/// De Allocation Seats
	public GenericResponse setDeallocationSeats(AllocationRequest allocationRequest) {
	System.out.println("updatePMRequestTble");
	updateDeallocationSeat(allocationRequest);
	updateUnAssignedSeat(allocationRequest);
	updateFAallocatedStatus(allocationRequest);
	updatePMallocatedStatus(allocationRequest);
	floorMapDAO.batchUpdateDeAllocateWorkstationStatus(allocationRequest, batchupdateSize);
	GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
	return genericResponse;
}
	
	public void addPMRequest(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_pm_requests(request_id,pm_id,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,flag,remarks) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, allocationRequest.getRequest_id());
                //statement.setString(1, "REQALC-2019-000001");
                statement.setString(2, "SONYEMP01" );
                statement.setString(3, allocationRequest.getDepartment_id());
                statement.setString(4, allocationRequest.getProject_id());
                statement.setString(5, allocationRequest.getNo_of_resource());
                statement.setString(6, allocationRequest.getTypeofdesk());
                statement.setDate(7, WMSDateUtil.getDateFormat(allocationRequest.getStart_time()));
                statement.setDate(8, WMSDateUtil.getDateFormat(allocationRequest.getEnd_time()));
                statement.setString(9, WMSConstant.PM_P_STATUS);
                statement.setInt(10, 0);//flag
                statement.setString(11, "No remarks");
               // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                return statement;
        }
        });
	}
	public void addFMRequest(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_fa_requests(request_id,pm_id,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,flag,remarks) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, allocationRequest.getRequest_id());
               // statement.setString(1, "REQALC-2019-000001");
                statement.setString(2, "SONYEMP01" );
                statement.setString(3, allocationRequest.getDepartment_id());
                statement.setString(4, allocationRequest.getProject_id());
                statement.setString(5, allocationRequest.getNo_of_resource());
                statement.setString(6, allocationRequest.getTypeofdesk());
                statement.setDate(7, WMSDateUtil.getDateFormat(allocationRequest.getStart_time()));
                statement.setDate(8, WMSDateUtil.getDateFormat(allocationRequest.getEnd_time()));
                statement.setString(9, WMSConstant.FA_P_STATUS);
                statement.setInt(10, 0);//flag
                statement.setString(11, "No remarks");
               // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                return statement;
        }
        });
	}
	
	public void addHistorydetails(AllocationRequest allocationRequest) {
		String sql = "INSERT INTO "
				+ "wms_history(request_id, remarks,status) "
				+ "VALUES (?,?,?),(?,?,?)";
        getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(sql.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                statement.setString(1, allocationRequest.getRequest_id()); // REQALC-2019-0000001 
                statement.setString(2, "Requested by PM" );
                statement.setString(3, "Requested" );
                statement.setString(4, allocationRequest.getRequest_id());
                statement.setString(5, "Pending by FA" );
                statement.setString(6, "Pending" );
                return statement;
        }
        });
	}
	public void addEmailRequest(EmailModel emailModel) {
		try {
			String sql = "INSERT INTO "
					+ "wms_email_jobs(subject, from_id ,to_id, attachment, status, request_id, request_status) "
					+ "VALUES (?,?,?,?,?,?,?)";  
			System.out.println("addEmailRequest"+sql.toString());
			getJdbcTemplate().update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			        PreparedStatement statement = connection.prepareStatement(sql.toString(),
			                        Statement.RETURN_GENERATED_KEYS);
			        statement.setString(1, emailModel.getRequestId() + "|" + emailModel.getRequestStatus());
			        statement.setString(2, "thiruvasagam.k@gmail.com");
			        statement.setString(3, "thiruvasagam.k@gmail.com" );    
			        statement.setString(4, "");  //attachment
			        statement.setString(5,  WMSConstant.EMAIL_P_STATUS);  
			        statement.setString(6, emailModel.getRequestId());
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
	
	//PM : Update for Reject Page Status
	   public void updatePMRequestReject(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_pm_requests SET status = 'Rejected' ,flag=2,remarks= ?  where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,allocationRequest.getRemarks(),allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("Updated Record with ID = " + SQL );
		      return;
		   }
	 //FA : Update for Reject Page Status
	   public void updateFARequestReject(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_fa_requests SET status = 'Rejected',flag=2, remarks= ?  where request_id = ? ";
		      try {
		    	  System.out.println("Reject update in FA :"+allocationRequest.getRequest_id());
		    	  getJdbcTemplate().update(SQL,allocationRequest.getRemarks(),allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("Updated Record with ID = " + SQL );
		      return;
		   }
	   
	   // PM : Update for Allocation Page Status
	   public void updatePMRequestStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_pm_requests SET status = ?,flag=1 where request_id = ?";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
	// FA : Update for Allocation Page Status
	   public void updateFARequestStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_fa_requests SET status = ?,flag=1 where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
	// Hist : Update for Allocation Page Status
	   public void updateHistoryRequestStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_history SET status = ? where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
	   
		// Hist : Update for Allocation Page Status
	   public void updateAllocationSeats(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_allocation_seats SET status = ?,flag= ? where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.As_STATUS,"2",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
	   public void updatePMRequestSeatsAssign(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_pm_requests SET status = ?,flag= ? where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.As_STATUS,"2",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
	   public void updateFARequestSeatsAssign(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_fa_requests SET status = ?,flag= ? where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.As_STATUS,"2",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
	   // This for image based
	   public GenericResponse imageBasedSeatAllocation(List<SeatAllocation> seatAllocationList,AllocationRequest allocationRequest,EmailModel emailModel){
		   insertAllocationSeats(seatAllocationList);
		   updatePMRequestStatus(allocationRequest);
		   updateFARequestStatus(allocationRequest);
		   floorMapDAO.batchUpdateAllocateWorkstationStatus(seatAllocationList,batchupdateSize); //Update the current status of the seats
		   updateHistoryRequestStatus(allocationRequest);
		   addEmailRequest(emailModel);  
		   GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		   return genericResponse;
	   }
	   
	   //this is for bulk
	   public GenericResponse bulkUploadSeatAllocation(BulkAllocation bulkAllocation,AllocationRequest allocationRequest,EmailModel emailModel){
		   insertBulkAllocation(bulkAllocation);
		   updatePMRequestStatus(allocationRequest);
		   updateFARequestStatus(allocationRequest);
		   updateHistoryRequestStatus(allocationRequest);
		   addEmailRequest(emailModel);  
		  //TODO history insert is pending :done  now
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
	   }
	   
	   //Employee Seat Assignment 
		public GenericResponse empSeatAssigns(List<EmployeeSeatAsign> empseatasign,AllocationRequest allocationRequest,EmailModel emailModel) {
			System.out.println("updatePMRequestTble");
			insertEmpSeatAsign(empseatasign);	
			updateAllocationSeats(allocationRequest);
			updatePMRequestSeatsAssign(allocationRequest);
			updateFARequestSeatsAssign(allocationRequest);
			floorMapDAO.batchUpdateWorkstationStatusAssign(empseatasign, batchupdateSize); //Update Current Status of the seats
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
		}
		
		//Bulk Emp Assign
		public GenericResponse bulkUploadEmpSeatAssigns(EmpBulkAssign empbulkassign,AllocationRequest allocationRequest,EmailModel emailModel) {
			System.out.println("updatePMRequestTble");
			insertEmpBulkAssign(empbulkassign);	
			updateAllocationSeats(allocationRequest);
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
		}
		public GenericResponse insertAllocationSeats(List<SeatAllocation> seatAllocationList){
			String sql = "INSERT INTO "
					+ "wms_allocation_seats(floor_id,seat_number,project_id, request_id, start_time, end_time, status,flag) "
					+ "VALUES (?,?,?,?,?,?,?,?)";
			for (SeatAllocation seatAllocation : seatAllocationList) {
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement statement = connection.prepareStatement(sql.toString(),
								Statement.RETURN_GENERATED_KEYS);
						statement.setString(1, seatAllocation.getFloor_id());
						statement.setString(2, seatAllocation.getSeat_number() );
						statement.setString(3, seatAllocation.getProject_id());
						statement.setString(4,seatAllocation.getRequest_id());
						statement.setDate(5, WMSDateUtil.getDateFormat(seatAllocation.getStart_time()));
						statement.setDate(6, WMSDateUtil.getDateFormat(seatAllocation.getEnd_time()));
						statement.setString(7, "Pending");
						statement.setInt(8, 1);
						return statement;
					}
				});
			}
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}
		
		//TODO remove the floor_id from thiru and hari schema :done
		public GenericResponse insertBulkAllocation(BulkAllocation bulkAllocation){
			String sql = "INSERT INTO "
					+ "wms_bulkupload_jobs(request_id,from_id,to_id, status, file_path,upload_type) "
					+ "VALUES (?,?,?,?,?,?)";
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement statement = connection.prepareStatement(sql.toString(),
								Statement.RETURN_GENERATED_KEYS);
						statement.setString(1, bulkAllocation.getRequest_id());
						statement.setString(2, bulkAllocation.getFrom_id());
						statement.setString(3, bulkAllocation.getTo_id());
						statement.setString(4, bulkAllocation.getStatus());
						statement.setString(5, fileUploadPath+bulkAllocation.getFile_path());
						statement.setString(6, "SP");

						return statement;
					}
				});
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}
		
		
		//Employee Seat Asign
		public GenericResponse insertEmpSeatAsign(List<EmployeeSeatAsign> empseatasignList){
			String sql = "INSERT INTO "
					+ "wms_employee_seats_asign(floor_id,wing,seat_number, emp_id, project_id,request_id,typeof_workspace,start_time,end_time,status,flag) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)";
			for (EmployeeSeatAsign empseatasign : empseatasignList) {
				System.out.println("insertEmpSeatAsign"+sql);
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement statement = connection.prepareStatement(sql.toString(),
								Statement.RETURN_GENERATED_KEYS);
						statement.setString(1, empseatasign.getFloor_id());
						System.out.println("Wing type"+empseatasign.getWing());
						statement.setString(2, "W");
						statement.setString(3, empseatasign.getSeat_number());
						statement.setString(4, empseatasign.getEmp_id());
						statement.setString(5, empseatasign.getProject_id());
						statement.setString(6, empseatasign.getRequest_id());
						statement.setString(7, empseatasign.getTypeof_workspace());
						statement.setString(8, empseatasign.getStart_time());
						statement.setString(9, empseatasign.getEnd_time());
						statement.setString(10, "A"); //Assigned , by default Assigned
						statement.setInt(11, 2);  
						return statement;
					}
				});
			}	
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}
	   
		public GenericResponse insertEmpBulkAssign(EmpBulkAssign empbulkassign){
			String sql = "INSERT INTO "
					+ "wms_bulkupload_jobs(request_id,from_id,to_id, status, file_path,upload_type) "
					+ "VALUES (?,?,?,?,?,?)";
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement statement = connection.prepareStatement(sql.toString(),
								Statement.RETURN_GENERATED_KEYS);
						statement.setString(1, empbulkassign.getRequest_id());
						statement.setString(2, empbulkassign.getFrom_id());
						statement.setString(3, empbulkassign.getTo_id());
						statement.setString(4, empbulkassign.getStatus());
						statement.setString(5, fileUploadPath+empbulkassign.getFile_path());
						statement.setString(6, "SE");

						return statement;
					}
				});
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}

		//This blocks returns the each request
		public synchronized String getRequestID() {  // this is from table
			String SQL= "SELECT request_id from wms_request_id where year = ?";
			BigInteger rNumber = getJdbcTemplate().queryForObject(SQL,BigInteger.class,WMSDateUtil.getCurrentYear());
			System.out.println("result value from wms_request_id before increment" + rNumber);
			rNumber = rNumber.add(BigInteger.ONE);
			System.out.println("result value from wms_request_id after increment" + rNumber);
			StringBuffer requestIDBuffer = new StringBuffer();
			requestIDBuffer.append(WMSConstant.REQ_PREFIX);
			requestIDBuffer.append(WMSConstant.HYPHEN);
			requestIDBuffer.append(WMSDateUtil.getCurrentYear());
			requestIDBuffer.append(WMSConstant.HYPHEN);
			requestIDBuffer.append(WMSRNumberUtil.getCompleteRNumber(rNumber));
			String requestID = requestIDBuffer.toString();
			System.out.println("From String requestID :"+requestID);
			String updatedRequestID  =	"UPDATE wms_request_id SET request_id = ? where year = ?";
			System.out.println("update request id query :" + updatedRequestID + rNumber + WMSDateUtil.getCurrentYear());
		      try {
		    	  getJdbcTemplate().update(updatedRequestID,rNumber,WMSDateUtil.getCurrentYear());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
			return requestID; //1
		}
		
		public Map<String,FloorMapDetails> getAllocatedCoordiantes(String floorID,String projectID){
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
				String allocationSQL = "SELECT * FROM wms_allocation_seats where seat_number = '"+workstation+"' and project_id = '"+projectID+"' ";
				if(projectID.equals("All")) {
					allocationSQL = "SELECT * FROM wms_allocation_seats where seat_number = '"+workstation+"'";
				}
				List<Map<String, Object>> allocationList = executeQueryList(allocationSQL);
				if(allocationList!=null && allocationList.size()>0 ) {
					floorMapDetails.setIsUtilized("1"); //0,1,2,3 :1=Allocated
				
				}

				
			
				String assignSQL = "SELECT * FROM wms_employee_seats_asign where seat_number = '"+workstation+"' and project_id = '"+projectID+"' and status = 'A'";
				List<Map<String, Object>> assignSQLList = executeQueryList(assignSQL);
				if(assignSQLList!=null && assignSQLList.size()>0) {
					floorMapDetails.setIsUtilized("2");  //0,1,2,3:2=Assign
				}
				
				String dellocateSQL = "SELECT * FROM wms_employee_seats_asign where seat_number = '"+workstation+"' and project_id = '"+projectID+"' and status = 'Deallocated'";
				List<Map<String, Object>> deallcoateSQLList = executeQueryList(dellocateSQL);
				if(deallcoateSQLList!=null && deallcoateSQLList.size()>0) {
					floorMapDetails.setIsUtilized("3");  //0,1,2,3:3=De allocated
				}
				
			
			
			/// To Show Deallocated status in All 
			  String allocationDSQL ="SELECT * FROM wms_allocation_seats where seat_number = '" +workstation+"' and project_id = '"+projectID+"' ";
			  if(projectID.equals("All")) { 
				  allocationDSQL="SELECT * FROM wms_allocation_seats where seat_number = '" +workstation+"'  and status = 'Deallocated'"; 
				  } 
			  List<Map<String, Object>>allocationList1 =executeQueryList(allocationDSQL); 
			  if(allocationList1!=null&&allocationList1.size()>0 ) { 
				  floorMapDetails.setIsUtilized("3"); 
			  }
			  
			 
			/// To Show Assigned status in All  
			  String allocationASQL ="SELECT * FROM wms_allocation_seats where seat_number = '"+workstation+"' and project_id = '"+projectID+"' ";
			  if(projectID.equals("All"))
			  { 
				  allocationASQL ="SELECT * FROM wms_allocation_seats where seat_number = '"+workstation+"' and status = 'Assigned'"; 
				  } 
			  List<Map<String, Object>>allocationList2 =executeQueryList(allocationASQL);
			  if(allocationList2!=null&&allocationList2.size()>0 )
			  { 
				  floorMapDetails.setIsUtilized("2"); 
			  }
			  
			 
			  
				
				floorMap.put(workstation, floorMapDetails);
			  }
			return floorMap;
		}
		
	/*
	 * public GenericResponse deallocationSeats(List<SeatAllocation>
	 * seatAllocationList){ String sql = "INSERT INTO " +
	 * "wms_deallocation_seats(floor_id,seat_number,project_id, request_id, start_time, end_time, status,flag) "
	 * +
	 * "SELECT   floor_id, seat_number, project_id, request_id,start_time,	end_time,status,0"
	 * + "FROM wms_allocation_seats ORDER BY request_id ASC"; for (SeatAllocation
	 * seatAllocation : seatAllocationList) { getJdbcTemplate().update(new
	 * PreparedStatementCreator() { public PreparedStatement
	 * createPreparedStatement(Connection connection) throws SQLException {
	 * PreparedStatement statement = connection.prepareStatement(sql.toString(),
	 * Statement.RETURN_GENERATED_KEYS); statement.setString(1,
	 * seatAllocation.getFloor_id()); statement.setString(2,
	 * seatAllocation.getSeat_number() ); statement.setString(3,
	 * seatAllocation.getProject_id());
	 * statement.setString(4,seatAllocation.getRequest_id()); statement.setDate(5,
	 * WMSDateUtil.getDateFormat(seatAllocation.getStart_time()));
	 * statement.setDate(6,
	 * WMSDateUtil.getDateFormat(seatAllocation.getEnd_time()));
	 * statement.setString(7, "Pending"); return statement; } }); String
	 * updateDeallocationSeats =
	 * "UPDATE wms_deallocation_seats SET flag = ? where request_id = ?";
	 * //System.out.println("update request id query :" + updatedRequestID + rNumber
	 * + WMSDateUtil.getCurrentYear()); try {
	 * getJdbcTemplate().update(updateDeallocationSeats,1,seatAllocation.
	 * getRequest_id()); } catch(Exception e){ e.printStackTrace(); } }
	 * 
	 * //GenericResponse genericResponse = new GenericResponse(0,
	 * null,1,WMSConstant.SUCCESS); return null; }
	 */
		//Update wms_allocation_seats as Allocated
		 public void updateDeallocationSeat(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_allocation_seats SET status = ?, flag=?  where request_id = ? ";
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + SQL );
		      System.out.println("De-Allocated");
		      return;
		   }
		 //Update wms_employee_seats_asign as UnAssigned
		 public void updateUnAssignedSeat(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_employee_seats_asign SET status = ?, flag=?   where request_id = ? ";
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		int rows= getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      
		    		 System.out.println("De-Allocated"+"3"+allocationRequest.getRequest_id()+rows);}
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + SQL );
		      System.out.println("De-Allocated");
		      return;
		   }
		 //Upadte wms_pm_requests as De-Allocated 
		 public void updatePMallocatedStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_pm_requests SET status = ? , flag=?  where request_id = ? ";
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + SQL );
		      System.out.println("De-Allocated");
		      return;
		   }
		 
		 //Upadte wms_fa_requests as De-Allocated 
		 public void updateFAallocatedStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_fa_requests SET status = ? , flag=?  where request_id = ? ";
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + SQL );
		      System.out.println("De-Allocated");
		      return;
		   }
		 
			public GenericResponse setRoleCountQuery1() {
				System.out.println("RoleCountQuery");
				String No_of_FA= "select count(*) from user where role_id='FA'";
				executeRoleQuery( No_of_FA);//FA
				System.out.println("FA"+ No_of_FA);
				String No_of_PM="select count(*) from user where role_id='PM'";
				executeRoleQuery( No_of_PM);//PM
				String No_of_User= "select count(*) from user where role_id='USER'";
				executeRoleQuery( No_of_User);//USER
				String No_of_SuperAdmin ="select count(*) from user where role_id='Super Admin'";
				executeRoleQuery( No_of_SuperAdmin);//Super Admin	
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
		 
		 
			private String executeRoleQuery(String sql) {
				int count = getJdbcTemplate().queryForObject(sql, Integer.class);
				System.out.println("sql" + sql + "Result" + count);
				return String.valueOf(count);
			}

			public void executeRoleCount() {
				// TODO Auto-generated method stub
				System.out.println("RoleCountQuery");
				String No_of_FA= "select count(*) from user where role_id=1";
				executeRoleQuery( No_of_FA);//FA
				//System.out.println("FA"+ No_of_FA);
				String No_of_PM="select count(*) from user where role_id=2";
				executeRoleQuery( No_of_PM);//PM
				String No_of_User= "select count(*) from user where role_id=4";
				executeRoleQuery( No_of_User);//USER
				String No_of_SuperAdmin ="select count(*) from user where role_id=3";
				executeRoleQuery( No_of_SuperAdmin);//Super Admin	
			}
			
		 
}
