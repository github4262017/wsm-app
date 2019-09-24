package com.wms.dao.bulkupload;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.SchedulerConstant;
import com.wms.constant.WMSConstant;
import com.wms.dao.email.EmailDetails;
import com.wms.dao.email.EmailJob;
import com.wms.request.allocation.AllocationRequest;
import com.wms.response.GenericResponse;
@Repository
public class BatchJobTriggerDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
	
	/*@Value("${wms.bulkuploadJobsStatus}") 
	private String bulkuploadJobsStatus;
	
	@Value("${wms.historyStatus}")  
	private String historyStatus; */
	
	
	/*
	  private List<Map<String, Object>> executeQueryList(String sql) {
	  System.out.println("Data Source"+getJdbcTemplate().getDataSource());
	  List<Map<String, Object>> emails = getJdbcTemplate().queryForList(sql);
	  return emails; }
	 */
	
	public List<UploadJobDetails> getBatchJobs(){		 
		String batchTriggerQuery = "SELECT * from wms_bulkupload_jobs where status='P'"; //TODO move it to configuration
		RowMapper<UploadJobDetails> rowMapper = new BeanPropertyRowMapper<UploadJobDetails>(UploadJobDetails.class);
		return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
	}  
	// To do insertion in the Employee table
	public List<EmployeeDetails> getBatchJobsEmployee(){		
		String batchTriggerQuery = "SELECT * from emp_allocation where status='P'"; //TODO move it to configuration
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
	}
	// To do insertion 
		public List<AllocationRequest> getPMRequestDetails(String requestid){		  
			String batchTriggerQuery = "SELECT * from wms_pm_requests where status= 'Pending' and request_id = "+ requestid; //TODO move it to configuration
			RowMapper<AllocationRequest> rowMapper = new BeanPropertyRowMapper<AllocationRequest>(AllocationRequest.class); 
			return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
		}	
	public void updateStatus(UploadJobDetails uploadJobDetails){ 
		System.out.println("Job Update Status");    
		try {
			//String statusUpdate = "update wms_bulkupload_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "update wms_bulkupload_jobs set status= ? where status = ? and request_id = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows = getJdbcTemplate().update(statusUpdate,uploadJobDetails.getStatus(),SchedulerConstant.BULKUPLOAD_PENDING_STATUS,uploadJobDetails.getRequest_id());   
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
	// To do insertion in the Employee table
	public void updateStatus(EmployeeDetails employeeDetails){ 
		System.out.println("Job Update Status");
		try {
			//String statusUpdate = "update wms_bulkupload_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "INSERT INTO emp_allocation  status= ? status = ? and request_id = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows = getJdbcTemplate().update(statusUpdate,employeeDetails.getStatus(),SchedulerConstant.BULKUPLOAD_PENDING_STATUS,employeeDetails.getProject_id());   
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	} 
     
	public int[][] batchInsert(List<UploadSheetDetails> UploadSheetDetailsList, int batchSize) {
		System.out.println("Batch Process");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "INSERT INTO wms_allocation_seats(floor_id, seat_number, project_id, request_id, start_time, end_time, status) values(?,?,?,?,?,?,?)",
                UploadSheetDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<UploadSheetDetails>() {
                    public void setValues(PreparedStatement ps, UploadSheetDetails sheetDetail) 
						throws SQLException {
                        ps.setString(1, sheetDetail.getFloor_id());
                        ps.setString(2, sheetDetail.getSeat_number());
                        ps.setString(3, sheetDetail.getProject_id());
                        ps.setString(4, sheetDetail.getRequest_id());
                        ps.setString(5, sheetDetail.getStart_time());
                        ps.setString(6, sheetDetail.getEnd_time());
                        ps.setString(7, "BulkUpload");
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }   
	/*public int[][] batchInsertEmployee(List<UploadSheetDetails> UploadSheetDetailsList, int batchSize) {
		System.out.println("Batch Process");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "INSERT INTO emp_allocation(status, subject, remarks, description, request_date, workstation_no, emp_name, reporting_manager, request_user_id, approval_user_id, division, project_name, project_id, insert_timestamp, no_resources, sno, modified_timestamp, floor)"
                +"values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
                UploadSheetDetailsList,
                batchSize, 
                new ParameterizedPreparedStatementSetter<UploadSheetDetails>() {
                    public void setValues(PreparedStatement ps, UploadSheetDetails sheetDetail) 
						throws SQLException {
                        ps.setString(1, sheetDetail.getFloor_id());
                        ps.setString(2, sheetDetail.getSeat_number());
                        ps.setString(3, sheetDetail.getProject_id());
                        ps.setString(4, sheetDetail.getRequest_id());
                        ps.setString(5, sheetDetail.getStart_time());
                        ps.setString(6, sheetDetail.getEnd_time());
                        ps.setString(7, "BulkUpload");
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }*/
	public void bulkUploadSeatAllocation(AllocationRequest allocationRequest){  
		   
		   System.out.println("Update PM FA request Start");  
		   
		   List<AllocationRequest> pmRequest = getPMRequestDetails(allocationRequest.getRequest_id()); 
			if(pmRequest!=null) {
				System.out.println(" About to send pending email Size"+ pmRequest.size());
				for (AllocationRequest allocateRequest : pmRequest) {
					   
					   updatePMRequestStatus(allocationRequest);  
			    	   updateFARequestStatus(allocationRequest);
					   addEmailRequest(allocationRequest);
					  //TODO history insert is pending
					   addHistory(allocationRequest); 
					   System.out.println("Update PM FA request End");
					allocationRequest.setRequest_id(allocationRequest.getRequest_id());  
				}
			}   
		      
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			//return genericResponse;
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
					        statement.setString(6, allocationRequest.getRequest_id());
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
		   public void addHistory(AllocationRequest allocationRequest) {
				try {
					String sql = "INSERT INTO "
							+ "wms_history(request_id, remarks) "
							+ "VALUES (?,?)";  
					System.out.println("addEmailRequest"+sql.toString());
					getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					        PreparedStatement statement = connection.prepareStatement(sql.toString(),
					                        Statement.RETURN_GENERATED_KEYS);
					        //statement.setString(1, allocationRequest.getRequest_id());
					        //statement.setString(2, allocationRequest.getRemarks());
					        statement.setString(1, "REQALC-2019-00000001");
					        statement.setString(2, "Email has send");    
					        System.out.println("addHistory end"+sql.toString()+statement);  
					        return statement;
					}
					});
				} catch (DataAccessException e) {
					e.printStackTrace();
				}
			}
		

		public void updatePMRequestStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_pm_requests SET status = ? where request_id = ?";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		    	  System.out.println("SQL wms_pm_requests"+SQL);
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
		
		public void updateFARequestStatus(AllocationRequest allocationRequest){
		      String SQL = "UPDATE wms_fa_requests SET status = ? where request_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updatePMRequestStatus = " + SQL );
		      return;
		   }
		
}
