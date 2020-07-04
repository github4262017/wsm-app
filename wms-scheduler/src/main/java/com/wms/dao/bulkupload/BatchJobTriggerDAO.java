package com.wms.dao.bulkupload;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.wms.consumingrest.SonyEmployeeDetailsREST;
import com.wms.dao.bulkupload.allocation.AllocationSheetDetails;
import com.wms.dao.bulkupload.assign.EmployeeSeatAssignDetails;
import com.wms.dao.bulkupload.deallocation.EmployeeSeatDeallocate;
import com.wms.dao.bulkupload.deallocation.EmployeeSeatDeallocationDetails;
import com.wms.model.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.AssignRequest;
import com.wms.request.allocation.EmployeeSeatAsign;
@Repository
public class BatchJobTriggerDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
	
	@Value("${wms.bulkupload.allocationjobs.count}")  
	private int maxJob;
	
	@Value("${spring.mail.username}")  
	private String workspaceManagementMail;
	
	
	EmployeeSeatAssignDetails seatAssign=null;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}	
	
	public List<UploadJobDetails> getBatchJobs(){		 
		String batchTriggerQuery = "SELECT * from wms_bulkupload_jobs where status='P' limit " + maxJob; //TODO move it to configuration
		RowMapper<UploadJobDetails> rowMapper = new BeanPropertyRowMapper<UploadJobDetails>(UploadJobDetails.class);
		return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
	}
	
	public List<EmployeeSeatAssignDetails> getBatchSeatAsign(){		   
		String batchTriggerQuery = "SELECT * from wms_employee_seats_asign where status='Asign'"; //TODO move it to configuration
		RowMapper<EmployeeSeatAssignDetails> rowMapper = new BeanPropertyRowMapper<EmployeeSeatAssignDetails>(EmployeeSeatAssignDetails.class);
		return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
	} 
	
	// To do insertion 
	public List<AllocationRequest> getPMRequestDetails(String requestid){		  
		String batchTriggerQuery = "SELECT * from wms_pm_requests where status= 'Pending' and request_id = '"+requestid+"'"; //TODO move it to configuration
		RowMapper<AllocationRequest> rowMapper = new BeanPropertyRowMapper<AllocationRequest>(AllocationRequest.class); 
		return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
	}
	// To do insertion 
		public List<EmployeeSeatAssignDetails> getFARequestDetails(String requestid){		  
			String batchTriggerQuery = "SELECT * from wms_fa_requests where status= 'Pending' and request_id = '"+requestid+"'"; //TODO move it to configuration
			RowMapper<EmployeeSeatAssignDetails> rowMapper = new BeanPropertyRowMapper<EmployeeSeatAssignDetails>(EmployeeSeatAssignDetails.class); 
			return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
		}
		
	// To do insertion SEAT asign 
	public List<AssignRequest> getSeatAsignDetails(String requestid){ 		  
		String batchTriggerQuery = "SELECT * from wms_allocation_seats where status= 'BulkUpload' and request_id = '"+requestid+"'"; //TODO move it to configuration
		System.out.println("getSeatAsignDetails"+batchTriggerQuery);  
		RowMapper<AssignRequest> rowMapper = new BeanPropertyRowMapper<AssignRequest>(AssignRequest.class); 
		return getJdbcTemplate().query(batchTriggerQuery,rowMapper);		
	}  
	
	public void updateStatus(UploadJobDetails uploadJobDetails){ 
		System.out.println("Job Update Status");    
		try {
			String statusUpdate = "update wms_bulkupload_jobs set status= ? where status = ? and request_id = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows = getJdbcTemplate().update(statusUpdate,uploadJobDetails.getStatus(),SchedulerConstant.BULKUPLOAD_PENDING_STATUS,uploadJobDetails.getRequest_id());   
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
	// To do insertion in the Employee table
	public void updateBatchEmployeeStatus(UploadJobDetails uploadJobDetails){  
		System.out.println("Job Update Status");
		try {
			String statusUpdate = "update wms_bulkupload_jobs set status="+"'D'"+ " where status = "+"'P'"+" and upload_type="+"'SED'";	
			//String statusUpdate = "INSERT INTO emp_allocation  status= ? status = ? and request_id = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows = getJdbcTemplate().update(statusUpdate);   
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	} 
     
	public int[][] batchInsert(List<AllocationSheetDetails> UploadSheetDetailsList, int batchSize) {
		System.out.println("Batch Allocation Process");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "INSERT INTO wms_allocation_seats(floor_id, seat_number, project_id, request_id, start_time, end_time, status,flag) values(?,?,?,?,?,?,?,?)",
                UploadSheetDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<AllocationSheetDetails>() {
                    public void setValues(PreparedStatement ps, AllocationSheetDetails sheetDetail) 
						throws SQLException {
                        ps.setString(1, sheetDetail.getFloor_id());
                        ps.setString(2, sheetDetail.getSeat_number());
                        ps.setString(3, sheetDetail.getProject_id());
                        ps.setString(4, sheetDetail.getRequest_id());
                        ps.setString(5, sheetDetail.getStart_time());
                        ps.setString(6, sheetDetail.getEnd_time());
                        ps.setString(7, "Pending"); 
                        ps.setString(8, "1"); 
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    } 
	public int[][] batchInsertEmployeeSeatAsign(List<EmployeeSeatAssignDetails> employeeSeatAsignDetailsList, int batchSize) {
		System.out.println("Batch seat Assign");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "INSERT INTO wms_employee_seats_asign(floor_id, wing, seat_number, emp_id, project_id, request_id, typeof_workspace, start_time, end_time, status,flag) values(?,?,?,?,?,?,?,?,?,?,?)",
                employeeSeatAsignDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<EmployeeSeatAssignDetails>() {
                    public void setValues(PreparedStatement ps, EmployeeSeatAssignDetails sheetDetail) 
						throws SQLException {
                        ps.setString(1, sheetDetail.getFloor_id());
                        ps.setString(2, sheetDetail.getWing());
                        ps.setString(3, sheetDetail.getSeat_number());
                        ps.setString(4, sheetDetail.getEmp_id());
                        ps.setString(5, sheetDetail.getProject_id());
                        ps.setString(6, sheetDetail.getRequest_id());
                        ps.setString(7, sheetDetail.getTypeof_workspace());
                        ps.setString(8, sheetDetail.getStart_time());
                        ps.setString(9, sheetDetail.getEnd_time());
                        ps.setString(10, sheetDetail.getStatus()); 
                        ps.setString(11, sheetDetail.getFlag());  
                    }
                });  
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }
	/*/ Update workstation_status with  
	public int[][] batchUpdateAllocateWorkstationStatus(List<AllocationSheetDetails> UploadSheetDetailsList, int batchSize) {
		System.out.println("Batch Allocation Process into workstation_status");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "update wms_workstation_status set request_id=?, project_id=?, current_status=? where workstation_no = ? ",
                UploadSheetDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<AllocationSheetDetails>() {
                    public void setValues(PreparedStatement ps, AllocationSheetDetails sheetDetail) 
						throws SQLException {
                        ps.setString(1, sheetDetail.getRequest_id());
                        ps.setString(2, sheetDetail.getProject_id());
                        ps.setString(3, "1"); 
                        ps.setString(4, sheetDetail.getSeat_number());  
                         
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }
	//Update workstation status for Assign
	public int[][] batchUpdateWorkstationStatusAssign(List<EmployeeSeatAssignDetails> employeeSeatAsignDetailsList, int batchSize) {
		System.out.println("Batch seat Assign in into workstation_status");
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
                "update wms_workstation_status set employees=?, current_status=? where workstation_no = ?",
                employeeSeatAsignDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<EmployeeSeatAssignDetails>() {
                    public void setValues(PreparedStatement ps, EmployeeSeatAssignDetails sheetDetail) 
						throws SQLException {                        
                        
                        ps.setString(1, sheetDetail.getEmp_id());
                        ps.setString(2, "2");
                        ps.setString(3, sheetDetail.getSeat_number());
                                                 
                    }
                });  
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }*/
	public void updateBatchEmployeeDetailsStatus(EmployeeSeatAssignDetails employeeSeatAsignDetails){ 
		System.out.println("Job Update Status");    
		try { 
			//String statusUpdate = "update wms_bulkupload_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "update wms_employee_seats_asign set status= ? where seat_number = '"+employeeSeatAsignDetails.getSeat_number()+"' and request_id = '"+employeeSeatAsignDetails.getRequest_id()+"' ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows = getJdbcTemplate().update(statusUpdate,SchedulerConstant.BULKUPLOAD_ASIGN_STATUS);   
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
	
	public void updateSeatAsignStatus(EmployeeSeatAssignDetails employeeSeatAsignDetails){ 
		System.out.println("Job Update Status");    
		try { 
			//String statusUpdate = "update wms_bulkupload_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "update wms_employee_seats_asign set status= ? where seat_number = '"+employeeSeatAsignDetails.getSeat_number()+"' and request_id = '"+employeeSeatAsignDetails.getRequest_id()+"' ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows = getJdbcTemplate().update(statusUpdate,SchedulerConstant.BULKUPLOAD_ASIGN_STATUS);   
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
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
		      
	   }
	
	public int[][] bulkUploadSeatAsign(List<EmployeeSeatAssignDetails> seatEmployeeList, int batchSize) {
		logger.debug("bulkUploadSeatAsign");
		List<EmployeeSeatAssignDetails> fmRequest = getFARequestDetails(seatEmployeeList.get(0).getRequest_id());
		int[][] updateCounts=null;
		if(fmRequest!=null) {    
		for (EmployeeSeatAssignDetails employeeSeatAssignDetails : fmRequest) {	
			updateCounts = getJdbcTemplate().batchUpdate("update wms_allocation_seats set flag = 2, status='Assigned' where  request_id =? and floor_id = ? and seat_number = ?", seatEmployeeList, batchSize,
		                new ParameterizedPreparedStatementSetter<EmployeeSeatAssignDetails>() {
		                    public void setValues(PreparedStatement ps, EmployeeSeatAssignDetails argument) 
								throws SQLException {
		                    	System.out.println("Update in seat allocation"+argument.getRequest_id()+" " +argument.getFloor_id()+ " "+argument.getSeat_number());  
		                        ps.setString(1, argument.getRequest_id());
		                        ps.setString(2, argument.getFloor_id());
		                        ps.setString(3, argument.getSeat_number()); 
		                    }
		                });  
				
				       
				
				}
		}
		return updateCounts; 
    }
	
	public void updatePMEmployeeSeatStatus(AssignRequest asignRequest){
	      String SQL = "UPDATE wms_pm_requests SET status = ? where request_id = ? and status= ?";
	      try {
	    	  getJdbcTemplate().update(SQL,WMSConstant.A_STATUS,asignRequest.getRequest_id(),asignRequest.getStatus());
	    	  System.out.println("SQL wms_pm_requests"+SQL); 
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      
	      System.out.println("updatePMSeatStatus = " + SQL );
	      return;
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
					        //statement.setString(2, "thiruvasagam.k@gmail.com");
					        //statement.setString(3, "jayadeva.appanengowda@sony.com" );  
					        statement.setString(2, workspaceManagementMail);
					        statement.setString(3,  "SISC-P&C-SpaceManagement@ap.sony.com"); 
					        //tested statement.setString(2, "jayadeva.appanengowda@sony.com");    
					        //tested statement.setString(3, "workspacemanagement@ap.sony.com" ); 
					        //statement.setString(2, "harikrishna24681@gmail.com");  
					        //statement.setString(3, "thiruvasagam.k@gmail.com" ); 
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
					        statement.setString(1, allocationRequest.getRequest_id());  
					        statement.setString(2, "Email has send");    
					        System.out.println("addHistory end"+sql.toString()+allocationRequest.getRequest_id());  
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
		/**
		 * This method is used to update the workstation status during Seat Allocation By Facility Admin
		 * @param detailsList
		 * @param batchSize
		 * @return
		 */
		public int[][] batchUpdateAllocateWorkstation(List<SeatAllocation> detailsList, int batchSize) {
			System.out.println("Batch Allocation Process into workstation_status :"+detailsList.size()); 
			//List<SeatAllocation>  mergedList;
			detailsList.isEmpty();
	        int[][] updateCounts = getJdbcTemplate().batchUpdate(
	                "update wms_workstation_status set request_id=?, project_id=?, current_status=? where workstation_no = ? ",
	                detailsList,
	                batchSize,
	                new ParameterizedPreparedStatementSetter<SeatAllocation>() {
	                    public void setValues(PreparedStatement ps, SeatAllocation seatAllocation) 
							throws SQLException {
	                    	System.out.println("workstation_status"+seatAllocation.getRequest_id()); 
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
		public int[][] batchUpdateWorkstationAssign(List<EmployeeSeatAsign> employeeAsignDetailsList, int batchSize) {
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
		 * This method is used to update the workstation status Seat Assignment by Project Manager
		 * @param employeeAsignDetailsList
		 * @param batchSize
		 * @return
		 */ 
		public void batchUpdateWorkstationStatusAssign(List<EmployeeSeatAsign> employeeAsignDetailsList, int batchSize) {
			System.out.println("Batch seat Assign into workstation_status");
			List<EmployeeSeatAsign>  mergedList = mergeEmployeeIds(employeeAsignDetailsList);
			int[][] updateCounts = null; 
			System.out.println("Req ID"+mergedList.size());			
			try {
			
			updateCounts = getJdbcTemplate().batchUpdate(
	                "update wms_workstation_status set employees=?, current_status=?, request_id=? where workstation_no = ?",
	                mergedList,
	                2,
	                new ParameterizedPreparedStatementSetter<EmployeeSeatAsign>() { 
	                    public void setValues(PreparedStatement ps, EmployeeSeatAsign seatAssign) 
							throws SQLException {   
	                    	System.out.println("getRequest_id"+seatAssign.getRequest_id()+"Employee"+seatAssign.getEmp_id());
	                        ps.setString(1, seatAssign.getEmp_id()); 
	                        ps.setInt(2, WMSConstant.SEAT_STATUS_ASSIGNED);
	                        ps.setString(3, seatAssign.getRequest_id());
	                        ps.setString(4, seatAssign.getSeat_number());
	                         
	                    }
	                });
					updatePMRequestSeatsAssign(mergedList); 
			        updateFARequestSeatsAssign(mergedList);
			        logger.debug("updateAsign"+updateCounts); 	 
	          }
	       // System.out.println("No.of records updated in workstation_status Assignment"+ updateCounts);
	       
	        catch(Exception e){     
		    	  e.printStackTrace();
		    	  System.out.println("Seat Asign update"+e);
		      }
			
			//return updateCounts;
	    }
		/// De-Allocation Seats
		public void setDeallocationSeats(EmployeeSeatDeallocate allocationRequest) {
			System.out.println("updatePMRequestTble");
			updateDeallocationSeat(allocationRequest);
			updateUnAssignedSeat(allocationRequest);
			updateFAallocatedStatus(allocationRequest);
			updatePMallocatedStatus(allocationRequest);
			//batchUpdateDeAllocateWorkstationStatus(allocationRequest, batchupdateSize);
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return ;
		}
		/**
		 * This method is used to update the workstation status during Seat Deallocation By Facility Admin
		 * @param detailsList
		 * @param batchSize
		 * @return
		 */
		public int[][] batchUpdateDeAllocateWorkstationStatus(List<EmployeeSeatDeallocate> employeeSeatDeallocate, int batchSize) {
			int updateStatus = 0;
			
			employeeSeatDeallocate.isEmpty();
	        int[][] updateCounts = getJdbcTemplate().batchUpdate(
	                "update wms_workstation_status set request_id=?, project_id=?, current_status=? where workstation_no = ? ",
	                employeeSeatDeallocate,
	                batchSize,
	                new ParameterizedPreparedStatementSetter<EmployeeSeatDeallocate>() {
	                    public void setValues(PreparedStatement ps, EmployeeSeatDeallocate seatDeallocate) 
							throws SQLException {
	                    	System.out.println("workstation_status"+seatDeallocate.getRequest_id()); 
	                        ps.setString(1, seatDeallocate.getRequest_id());
	                        ps.setString(2, seatDeallocate.getProject_id());
	                        ps.setInt(3, WMSConstant.SEAT_STATUS_VACANT); 
	                        ps.setString(4, seatDeallocate.getSeat_number());  
	                    }
	                });
	        System.out.println("No.of records updated in workstation_status De-Allocation"+ updateCounts);
	        return updateCounts;
	              
	    }   
				
		//Update wms_employee_seats_asign as UnAssigned
		 public void updateUnAssignedSeat(EmployeeSeatDeallocate allocationRequest){
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
		 public void updatePMallocatedStatus(EmployeeSeatDeallocate allocationRequest){
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
		 public void updateFAallocatedStatus(EmployeeSeatDeallocate allocationRequest){
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
		 public void updatePMRequestSeatsAssign(List<EmployeeSeatAsign> seatEmployeeList){
		    String SQL = "UPDATE wms_pm_requests SET status = ?,flag= ? where request_id = ? ";
		    //String SQL = "UPDATE wms_pm_requests SET status = 'Assigned',flag= 2 where request_id = '"+seatEmployeeList.get(0).getRequest_id()+"' ";
		      try {
		    	 int count= getJdbcTemplate().update(SQL,WMSConstant.As_STATUS,2,seatEmployeeList.get(0).getRequest_id()); 
		    	 System.out.println("PM Assign request_id()"+"("+seatEmployeeList.get(0).getRequest_id()+")"+"count :"+count);
		      }   
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMAssignStatus = " + SQL );
		      return;
		   }
	   public void updateFARequestSeatsAssign(List<EmployeeSeatAsign> seatEmployeeList){
		      String SQL = "UPDATE wms_fa_requests SET status = ?,flag= ? where request_id = ? ";
		      
		      try {
		    	  int count=getJdbcTemplate().update(SQL,WMSConstant.As_STATUS,2,seatEmployeeList.get(0).getRequest_id());
		    	  System.out.println("FA Assign request_id()"+"("+seatEmployeeList.get(0).getRequest_id()+")"+"count :"+count); 
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updateFAAssignStatus = " + SQL );
		      return;
		   }
	   
	   	 //Update wms_allocation_seats as De-Allocated
		 public void updateDeallocationSeat(EmployeeSeatDeallocate allocationRequest){
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
		 public int[][] batchInsertSonyEmployee(List<SonyEmployeeDetailsREST> sonyEmployeeDetailsList, int batchSize) {
				System.out.println("Batch Sony Employee Process"+sonyEmployeeDetailsList.size()); 
		        int[][] updateCounts = getJdbcTemplate().batchUpdate(
		                "INSERT INTO wms_sony_data_rest(gid, employee_name, email, division_name, reporting_manager_gid, reporting_manager_name, reporting_manager_email, project_name, project_manager_gid, project_manager_name, project_manager_email) VALUES (?,?,?,?,?,?,?,?,?,?,?)",
		                sonyEmployeeDetailsList,
		                batchSize,
		                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
		                    public void setValues(PreparedStatement statement, SonyEmployeeDetailsREST sheetDetail) 
								throws SQLException {
		                    	//System.out.println("Insert API to DB sql"+updateCounts.toString());
		                        statement.setString(1, sheetDetail.getGid());
		                        //statement.setString(1, "REQALC-2019-000001");
		                        statement.setString(2, sheetDetail.getEmployee_name());   
		                        statement.setString(3, sheetDetail.getEmail()); 
		                        statement.setString(4, sheetDetail.getDivision_name()); 
		                        statement.setString(5, sheetDetail.getReporting_manager_gid());
		                        System.out.println("nsert API to DB stmt"+statement.toString());
		                        statement.setString(6, sheetDetail.getReporting_manager_name());
		                        statement.setString(7, sheetDetail.getReporting_manager_email());
		                        statement.setString(8, sheetDetail.getProject_name());
		                        statement.setString(9, sheetDetail.getProject_manager_gid());
		                        statement.setString(10, sheetDetail.getProject_manager_name()); 
		                        statement.setString(11, sheetDetail.getProject_manager_email()); 
		                       // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
		                        System.out.println("Insert API to DB"+statement.toString()); 
		                    }
		                });
		        System.out.println("Batch Count"+ updateCounts);
		        return updateCounts;
		    }
}
