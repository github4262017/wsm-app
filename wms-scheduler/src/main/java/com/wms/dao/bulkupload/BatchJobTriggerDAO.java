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
import org.springframework.security.core.context.SecurityContextHolder;
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
		String l00Ill1I0 = SchedulerConstant.getBatchJobs + maxJob; //TODO move it to configuration
		RowMapper<UploadJobDetails> o0iIllOI1 = new BeanPropertyRowMapper<UploadJobDetails>(UploadJobDetails.class);
		return getJdbcTemplate().query(l00Ill1I0,o0iIllOI1);		
	}
	
	public List<EmployeeSeatAssignDetails> getBatchSeatAsign(){		   
		String l00Ill1I0 = SchedulerConstant.getBatchSeatAsign1 ; //TODO move it to configuration
		RowMapper<EmployeeSeatAssignDetails> o0iIllOI1 = new BeanPropertyRowMapper<EmployeeSeatAssignDetails>(EmployeeSeatAssignDetails.class);
		return getJdbcTemplate().query(l00Ill1I0,o0iIllOI1);		
	} 
	
	// To do insertion 
	public List<AllocationRequest> getPMRequestDetails(String requestid){		  
		String l00Ill1I0 = SchedulerConstant.getPMRequestDetails1+ "'"+requestid+"'"; //TODO move it to configuration
		RowMapper<AllocationRequest> o0iIllOI1 = new BeanPropertyRowMapper<AllocationRequest>(AllocationRequest.class); 
		return getJdbcTemplate().query(l00Ill1I0,o0iIllOI1);		
	}
	// To do insertion 
		public List<EmployeeSeatAssignDetails> getFARequestDetails(String requestid){		  
			String l00Ill1I0 = SchedulerConstant.getFARequestDetails1+"'"+requestid+"'"; //TODO move it to configuration
			RowMapper<EmployeeSeatAssignDetails> o0iIllOI1 = new BeanPropertyRowMapper<EmployeeSeatAssignDetails>(EmployeeSeatAssignDetails.class); 
			return getJdbcTemplate().query(l00Ill1I0,o0iIllOI1);		
		}
		
	// To do insertion SEAT asign 
	public List<AssignRequest> getSeatAsignDetails(String requestid){ 		  
		String l00Ill1I0 = SchedulerConstant.getFARequestDetails1+ "'"+requestid+"'"; //TODO move it to configuration 
		RowMapper<AssignRequest> o0iIllOI1 = new BeanPropertyRowMapper<AssignRequest>(AssignRequest.class); 
		return getJdbcTemplate().query(l00Ill1I0,o0iIllOI1);		
	}  
	
	public void updateStatus(UploadJobDetails uploadJobDetails){ 
		System.out.println("Job Update Status");    
		try {
			String lO1lIllIi = SchedulerConstant.updateStatus1;
			int oO1l0lOIl = getJdbcTemplate().update(lO1lIllIi,uploadJobDetails.getStatus(),SchedulerConstant.BULKUPLOAD_PENDING_STATUS,uploadJobDetails.getRequest_id());     
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
	// To do insertion in the Employee table
	public void updateBatchEmployeeStatus(UploadJobDetails uploadJobDetails){  
		try {
			String lO1lIllIi =SchedulerConstant.updateBatchEmployeeStatus1;	
			//String statusUpdate = "INSERT INTO emp_allocation  status= ? status = ? and request_id = ? "; 
			int oO1l0lOIl = getJdbcTemplate().update(lO1lIllIi);     
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	} 
     
	public int[][] batchInsert(List<AllocationSheetDetails> oiil1lOIi, int Ol1lOlIIo) {
		System.out.println("Batch Allocation Process");
        int[][] IlIlol0I0 = getJdbcTemplate().batchUpdate(
        		SchedulerConstant.batchInsert1,
                oiil1lOIi,
                Ol1lOlIIo,
                new ParameterizedPreparedStatementSetter<AllocationSheetDetails>() {
                    public void setValues(PreparedStatement ilol1lOII, AllocationSheetDetails Oo1lIllIi) 
						throws SQLException {
                        ilol1lOII.setString(1, Oo1lIllIi.getFloor_id());
                        ilol1lOII.setString(2, Oo1lIllIi.getSeat_number());
                        ilol1lOII.setString(3, Oo1lIllIi.getProject_id());
                        ilol1lOII.setString(4, Oo1lIllIi.getRequest_id());
                        ilol1lOII.setString(5, Oo1lIllIi.getStart_time());
                        ilol1lOII.setString(6, Oo1lIllIi.getEnd_time());
                        ilol1lOII.setString(7, "Pending"); 
                        ilol1lOII.setString(8, "1"); 
                    }
                });
        System.out.println("Batch Count"+ IlIlol0I0);
        return IlIlol0I0;
    } 
	public int[][] batchInsertEmployeeSeatAsign(List<EmployeeSeatAssignDetails> oiil1lOIi, int Ol1lOlIIo) {
		System.out.println("Batch seat Assign");
        int[][] IlIlol0I0 = getJdbcTemplate().batchUpdate(
        		SchedulerConstant.batchInsertEmployeeSeatAsign1,
                oiil1lOIi,
                Ol1lOlIIo,
                new ParameterizedPreparedStatementSetter<EmployeeSeatAssignDetails>() {
                    public void setValues(PreparedStatement ilol1lOII, EmployeeSeatAssignDetails Oo1lIllIi) 
						throws SQLException {
                        ilol1lOII.setString(1, Oo1lIllIi.getFloor_id());
                        ilol1lOII.setString(2, Oo1lIllIi.getWing());
                        ilol1lOII.setString(3, Oo1lIllIi.getSeat_number());
                        ilol1lOII.setString(4, Oo1lIllIi.getEmp_id());
                        ilol1lOII.setString(5, Oo1lIllIi.getProject_id());
                        ilol1lOII.setString(6, Oo1lIllIi.getRequest_id());
                        ilol1lOII.setString(7, Oo1lIllIi.getTypeof_workspace());
                        ilol1lOII.setString(8, Oo1lIllIi.getStart_time());
                        ilol1lOII.setString(9, Oo1lIllIi.getEnd_time());
                        ilol1lOII.setString(10, Oo1lIllIi.getStatus()); 
                        ilol1lOII.setString(11, Oo1lIllIi.getFlag());  
                    }
                });  
        System.out.println("Batch Count"+ IlIlol0I0);
        return IlIlol0I0;
    }

	public void updateBatchEmployeeDetailsStatus(EmployeeSeatAssignDetails i0il0l1Il){ 
		System.out.println("Job Update Status");    
		try { 
			//String statusUpdate = "update wms_bulkupload_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String lO1lIllIi = SchedulerConstant.updateBatchEmployeeDetailsStatus1+"'"+i0il0l1Il.getSeat_number()+"' and request_id = '"+i0il0l1Il.getRequest_id()+"' ";
			System.out.println("statusUpdate"+lO1lIllIi);  
			int oO1l0lOIl = getJdbcTemplate().update(lO1lIllIi,SchedulerConstant.BULKUPLOAD_ASIGN_STATUS);   
			System.out.println("updateStatus"+oO1l0lOIl);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
	
	public void updateSeatAsignStatus(EmployeeSeatAssignDetails i0il0l1Il){ 
		System.out.println("Job Update Status");    
		try { 
			//String statusUpdate = "update wms_bulkupload_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String lO1lIllIi = SchedulerConstant.updateSeatAsignStatus1+"'"+i0il0l1Il.getSeat_number()+"' and request_id = '"+i0il0l1Il.getRequest_id()+"' ";
			System.out.println("statusUpdate"+lO1lIllIi);  
			int oO1l0lOIl = getJdbcTemplate().update(lO1lIllIi,SchedulerConstant.BULKUPLOAD_ASIGN_STATUS);   
			System.out.println("updateStatus"+oO1l0lOIl);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}
	public void bulkUploadSeatAllocation(AllocationRequest l10l0l1II){  
		   
		   System.out.println("Update PM FA request Start");  
		   
		   List<AllocationRequest> o10lIloIo = getPMRequestDetails(l10l0l1II.getRequest_id()); 
			if(o10lIloIo!=null) {
				System.out.println(" About to send pending email Size"+ o10lIloIo.size());
				for (AllocationRequest i11lillII : o10lIloIo) {
					   
					   updatePMRequestStatus(l10l0l1II);  
			    	   updateFARequestStatus(l10l0l1II);  
					   addEmailRequest(l10l0l1II);
					  //TODO history insert is pending
					   addHistory(l10l0l1II); 
					   System.out.println("Update PM FA request End");
					   l10l0l1II.setRequest_id(l10l0l1II.getRequest_id());  
				}
			}   
		      
	   }
	
	public int[][] bulkUploadSeatAsign(List<EmployeeSeatAssignDetails> IIIoOl1Io, int Ol1lOlIIo) {
		logger.debug("bulkUploadSeatAsign");
		List<EmployeeSeatAssignDetails> iIOo0loII = getFARequestDetails(IIIoOl1Io.get(0).getRequest_id());
		int[][] IlIlol0I0=null;
		if(iIOo0loII!=null) {    
		for (EmployeeSeatAssignDetails IliollIIO : iIOo0loII) {	
			IlIlol0I0 = getJdbcTemplate().batchUpdate(SchedulerConstant.bulkUploadSeatAsign1, IIIoOl1Io, Ol1lOlIIo,
		                new ParameterizedPreparedStatementSetter<EmployeeSeatAssignDetails>() {
		                    public void setValues(PreparedStatement ilol1lOII, EmployeeSeatAssignDetails llloilIII) 
								throws SQLException {
		                    	System.out.println("Update in seat allocation"+llloilIII.getRequest_id()+" " +llloilIII.getFloor_id()+ " "+llloilIII.getSeat_number());  
		                        ilol1lOII.setString(1, llloilIII.getRequest_id());
		                        ilol1lOII.setString(2, llloilIII.getFloor_id());
		                        ilol1lOII.setString(3, llloilIII.getSeat_number()); 
		                    }
		                });  
				
				       
				
				}
		}
		return IlIlol0I0; 
    }
	
	public void updatePMEmployeeSeatStatus(AssignRequest asignRequest){
	      String OoloIl1Ii = SchedulerConstant.updatePMEmployeeSeatStatus1;
	      try {
	    	  getJdbcTemplate().update(OoloIl1Ii,WMSConstant.A_STATUS,asignRequest.getRequest_id(),asignRequest.getStatus());
	    	  System.out.println("SQL wms_pm_requests"+OoloIl1Ii); 
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      
	      System.out.println("updatePMSeatStatus = " + OoloIl1Ii );
	      return;
	   }
		   
		   public void addEmailRequest(AllocationRequest l10l0l1II) {
				try {
					String OiOOllOIi = SchedulerConstant.addEmailRequest1;  
					System.out.println("addEmailRequest"+OiOOllOIi.toString());
					getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					        PreparedStatement ooIoIliIi = connection.prepareStatement(OiOOllOIi.toString(),
					                        Statement.RETURN_GENERATED_KEYS);  
					        ooIoIliIi.setString(1, "Seat allocation date has Ended Today");
					        //statement.setString(2, "thiruvasagam.k@gmail.com");
					        //statement.setString(3, "jayadeva.appanengowda@sony.com" );  
					        ooIoIliIi.setString(2, workspaceManagementMail);
					        ooIoIliIi.setString(3,  "SISC-P&C-SpaceManagement@ap.sony.com"); 
					        //tested statement.setString(2, "jayadeva.appanengowda@sony.com");    
					        //tested statement.setString(3, "workspacemanagement@ap.sony.com" ); 
					        //statement.setString(2, "harikrishna24681@gmail.com");  
					        //statement.setString(3, "thiruvasagam.k@gmail.com" ); 
					        ooIoIliIi.setString(4, "Image.png");  
					        ooIoIliIi.setString(5, "P");  
					        ooIoIliIi.setString(6, l10l0l1II.getRequest_id());
					        ooIoIliIi.setString(7, "Approved");  
					        //statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());  
					        //statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
					        System.out.println("addEmailRequest end"+OiOOllOIi.toString()+ooIoIliIi);  
					        return ooIoIliIi;
					}
					});
				} catch (DataAccessException e) {
					e.printStackTrace();
				}  
			}
		   public void addHistory(AllocationRequest allocationRequest) {
				try {
					String OiOOllOIi =  SchedulerConstant.addHistory1; 
					System.out.println("addEmailRequest"+OiOOllOIi.toString());
					getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					        PreparedStatement ooIoIliIi = connection.prepareStatement(OiOOllOIi.toString(),
					                        Statement.RETURN_GENERATED_KEYS);
					        //statement.setString(1, allocationRequest.getRequest_id());
					        //statement.setString(2, allocationRequest.getRemarks());
					        ooIoIliIi.setString(1, allocationRequest.getRequest_id());  
					        ooIoIliIi.setString(2, "Email has send");    
					        System.out.println("addHistory end"+OiOOllOIi.toString()+allocationRequest.getRequest_id());  
					        return ooIoIliIi;
					}
					});
				} catch (DataAccessException e) {
					e.printStackTrace();
				}
			}
		

		public void updatePMRequestStatus(AllocationRequest allocationRl10l0l1IIequest){
		      String OoloIl1Ii = SchedulerConstant.updatePMRequestStatus1; 
		      try {
		    	  getJdbcTemplate().update(OoloIl1Ii,WMSConstant.A_STATUS,allocationRl10l0l1IIequest.getRequest_id());
		    	  System.out.println("SQL wms_pm_requests"+OoloIl1Ii);
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMRequestStatus = " + OoloIl1Ii );
		      return;
		   }
		
		public void updateFARequestStatus(AllocationRequest l10l0l1II){
		      String OoloIl1Ii = SchedulerConstant.updateFARequestStatus1;
		      try {
		    	  getJdbcTemplate().update(OoloIl1Ii,WMSConstant.A_STATUS,l10l0l1II.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updatePMRequestStatus = " + OoloIl1Ii );
		      return;
		   }
		/**
		 * This method is used to update the workstation status during Seat Allocation By Facility Admin
		 * @param liooIllI0
		 * @param Ol1lOlIIo
		 * @return
		 */
		public int[][] batchUpdateAllocateWorkstation(List<SeatAllocation> liooIllI0, int Ol1lOlIIo) {
			System.out.println("Batch Allocation Process into workstation_status :"+liooIllI0.size()); 
			//List<SeatAllocation>  mergedList;
			liooIllI0.isEmpty();
	        int[][] IlIlol0I0 = getJdbcTemplate().batchUpdate(
	        		SchedulerConstant.batchUpdateAllocateWorkstation1,
	                liooIllI0,
	                100,
	                new ParameterizedPreparedStatementSetter<SeatAllocation>() {
	                    public void setValues(PreparedStatement ilol1lOII, SeatAllocation iiOoilOII) 
							throws SQLException {
	                    	System.out.println("workstation_status"+iiOoilOII.getRequest_id()); 
	                        ilol1lOII.setString(1, iiOoilOII.getRequest_id());
	                        ilol1lOII.setString(2, iiOoilOII.getProject_id());
	                        ilol1lOII.setInt(3, WMSConstant.SEAT_STATUS_ALLOCATED); 
	                        ilol1lOII.setString(4, iiOoilOII.getSeat_number());  
	                    }
	                });
	        System.out.println("No.of records updated in workstation_status Allocation"+ IlIlol0I0);
	        return IlIlol0I0;
	    }
		/**
		 * This method is used to update the workstation status Seat Assignment by Project Manager
		 * @param l0OolloIi
		 * @param Ol1lOlIIo
		 * @return
		 */
		public int[][] batchUpdateWorkstationAssign(List<EmployeeSeatAsign> l0OolloIi, int Ol1lOlIIo) {
			System.out.println("Batch seat Assign in into workstation_status");
			List<EmployeeSeatAsign>  o01oll0II = mergeEmployeeIds(l0OolloIi);
	        int[][] IlIlol0I0 = getJdbcTemplate().batchUpdate(
	        		SchedulerConstant.batchUpdateWorkstationAssign1,
	                o01oll0II, 
	                Ol1lOlIIo,
	                new ParameterizedPreparedStatementSetter<EmployeeSeatAsign>() { 
	                    public void setValues(PreparedStatement ilol1lOII, EmployeeSeatAsign iiOIol1I0) 
							throws SQLException {                        
	                        ilol1lOII.setString(1, iiOIol1I0.getEmp_id()); 
	                        ilol1lOII.setInt(2, WMSConstant.SEAT_STATUS_ASSIGNED);
	                        ilol1lOII.setString(3, iiOIol1I0.getSeat_number());
	                    }
	                });  
	        
	        System.out.println("No.of records updated in workstation_status Assignment"+ IlIlol0I0);
	        return IlIlol0I0;
	    } 
		
		/**
		 * This method is used to merge the employee ids before update the workstation status
		 * @param l0OolloIi
		 * @return
		 */
		public List<EmployeeSeatAsign>  mergeEmployeeIds(List<EmployeeSeatAsign> l0OolloIi){
			List<EmployeeSeatAsign> o01oll0II = new ArrayList<EmployeeSeatAsign>();
			System.out.println("Size Before Merge"+ l0OolloIi.size());
			
			Map<String,EmployeeSeatAsign> I1IoIloI0 = new HashMap<>();
			for (EmployeeSeatAsign l11oIlIIl : l0OolloIi) {
				String wStation = l11oIlIIl.getSeat_number();
				if(I1IoIloI0.containsKey(wStation)) {
					StringBuilder OO1iIl1IO = new StringBuilder();
					OO1iIl1IO.append(I1IoIloI0.get(wStation).getEmp_id());
					OO1iIl1IO.append(",");
					OO1iIl1IO.append(l11oIlIIl.getEmp_id());
					I1IoIloI0.get(wStation).setEmp_id(OO1iIl1IO.toString());
				}else {
					I1IoIloI0.put(wStation, l11oIlIIl);
				}
			}
			
			System.out.println("Size After Merge"+ I1IoIloI0.size());
			for (Map.Entry<String, EmployeeSeatAsign> OI1iIl0Io : I1IoIloI0.entrySet()) {
				System.out.println("Merged List" + OI1iIl0Io.getKey() + "Employee id" + OI1iIl0Io.getValue().getEmp_id());
				o01oll0II.add(OI1iIl0Io.getValue());
			}
			return o01oll0II;
		}   
		
		/**
		 * This method is used to update the workstation status Seat Assignment by Project Manager
		 * @param l0OolloIi
		 * @param Ol1lOlIIo
		 * @return
		 */ 
		public void batchUpdateWorkstationStatusAssign(List<EmployeeSeatAsign> l0OolloIi, int Ol1lOlIIo) {
			System.out.println("Batch seat Assign into workstation_status");
			List<EmployeeSeatAsign>  mergedList = mergeEmployeeIds(l0OolloIi);
			int[][] IlIlol0I0 = null; 
			System.out.println("Req ID"+mergedList.size());			
			try {
			
			IlIlol0I0 = getJdbcTemplate().batchUpdate(
					SchedulerConstant.batchUpdateWorkstationStatusAssign1,
	                mergedList,
	                2,
	                new ParameterizedPreparedStatementSetter<EmployeeSeatAsign>() { 
	                    public void setValues(PreparedStatement ilol1lOII, EmployeeSeatAsign iiOIol1I0) 
							throws SQLException {   
	                    	System.out.println("getRequest_id"+iiOIol1I0.getRequest_id());
	                        ilol1lOII.setString(1, iiOIol1I0.getEmp_id()); 
	                        ilol1lOII.setInt(2, WMSConstant.SEAT_STATUS_ASSIGNED);
	                        ilol1lOII.setString(3, iiOIol1I0.getRequest_id());
	                        ilol1lOII.setString(4, iiOIol1I0.getSeat_number());
	                         
	                    }
	                });
					updatePMRequestSeatsAssign(mergedList); 
			        updateFARequestSeatsAssign(mergedList);
			        logger.debug("updateAsign"+IlIlol0I0); 	 
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
		 * @param Ol1lOlIIo
		 * @return
		 */
		public int[][] batchUpdateDeAllocateWorkstationStatus(List<EmployeeSeatDeallocate> ooOiilOI1, int Ol1lOlIIo) {
			int updateStatus = 0;
			
			ooOiilOI1.isEmpty();
	        int[][] IlIlol0I0 = getJdbcTemplate().batchUpdate(
	        		SchedulerConstant.batchUpdateDeAllocateWorkstationStatus1,
	                ooOiilOI1,
	                Ol1lOlIIo,
	                new ParameterizedPreparedStatementSetter<EmployeeSeatDeallocate>() {
	                    public void setValues(PreparedStatement o0lIiI0I0, EmployeeSeatDeallocate ioOioliI1) 
							throws SQLException {
	                    	System.out.println("workstation_status"+ioOioliI1.getRequest_id()); 
	                        o0lIiI0I0.setString(1, ioOioliI1.getRequest_id());
	                        o0lIiI0I0.setString(2, ioOioliI1.getProject_id());
	                        o0lIiI0I0.setInt(3, WMSConstant.SEAT_STATUS_VACANT); 
	                        o0lIiI0I0.setString(4, ioOioliI1.getSeat_number());  
	                    }
	                });
	        System.out.println("No.of records updated in workstation_status De-Allocation"+ IlIlol0I0);
	        return IlIlol0I0;
	              
	    }   
				
		//Update wms_employee_seats_asign as UnAssigned
		 public void updateUnAssignedSeat(EmployeeSeatDeallocate l10l0l1II){
		      String OoloIl1Ii = SchedulerConstant.updateUnAssignedSeat1;
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		int oO1l0lOIl= getJdbcTemplate().update(OoloIl1Ii,WMSConstant.D_STATUS,"3",l10l0l1II.getRequest_id());
		      
		    		 System.out.println("De-Allocated"+"3"+l10l0l1II.getRequest_id()+oO1l0lOIl);}
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + OoloIl1Ii );
		      System.out.println("De-Allocated");
		      return;
		   }
		 //Upadte wms_pm_requests as De-Allocated 
		 public void updatePMallocatedStatus(EmployeeSeatDeallocate l10l0l1II){
		      String OoloIl1Ii =SchedulerConstant.updatePMallocatedStatus1;
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(OoloIl1Ii,WMSConstant.D_STATUS,"3",l10l0l1II.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + OoloIl1Ii );
		      System.out.println("De-Allocated");
		      return;
		   }
		 
		 //Upadte wms_fa_requests as De-Allocated 
		 public void updateFAallocatedStatus(EmployeeSeatDeallocate l10l0l1II){
		      String OoloIl1Ii = SchedulerConstant.updateFAallocatedStatus1;
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(OoloIl1Ii,WMSConstant.D_STATUS,"3",l10l0l1II.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + OoloIl1Ii );
		      System.out.println("De-Allocated");
		      return;
		   }
		 public void updatePMRequestSeatsAssign(List<EmployeeSeatAsign> IIIoOl1Io){
		    String OoloIl1Ii = SchedulerConstant.updatePMRequestSeatsAssign1;
		    //String SQL = "UPDATE wms_pm_requests SET status = 'Assigned',flag= 2 where request_id = '"+seatEmployeeList.get(0).getRequest_id()+"' ";
		      try {
		    	 int OiiiOllIo= getJdbcTemplate().update(OoloIl1Ii,WMSConstant.As_STATUS,2,IIIoOl1Io.get(0).getRequest_id()); 
		    	 System.out.println("PM Assign request_id()"+"("+IIIoOl1Io.get(0).getRequest_id()+")"+"count :"+OiiiOllIo);
		      }   
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updatePMAssignStatus = " + OoloIl1Ii );
		      return;
		   }
	   public void updateFARequestSeatsAssign(List<EmployeeSeatAsign> seatEmployeeList){
		      String OoloIl1Ii = SchedulerConstant.updateFARequestSeatsAssign1;
		      
		      try {
		    	  int OiiiOllIo=getJdbcTemplate().update(OoloIl1Ii,WMSConstant.As_STATUS,2,seatEmployeeList.get(0).getRequest_id());
		    	  System.out.println("FA Assign request_id()"+"("+seatEmployeeList.get(0).getRequest_id()+")"+"count :"+OiiiOllIo); 
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      
		      System.out.println("updateFAAssignStatus = " + OoloIl1Ii );
		      return;
		   }
	   
	   	 //Update wms_allocation_seats as De-Allocated
		 public void updateDeallocationSeat(EmployeeSeatDeallocate l10l0l1II){
		      String OoloIl1Ii =SchedulerConstant.updateDeallocationSeat1;
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(OoloIl1Ii,WMSConstant.D_STATUS,"3",l10l0l1II.getRequest_id());
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
		      System.out.println("updateDeallocationSeat = " + OoloIl1Ii );
		      System.out.println("De-Allocated");
		      return;
		   }
		 public int[][] batchInsertSonyEmployee(List<SonyEmployeeDetailsREST> IiiiOllII, int Ol1lOlIIo) {
				System.out.println("Batch Sony Employee Process"+IiiiOllII.size()); 
		        int[][] IlIlol0I0 = getJdbcTemplate().batchUpdate(
		        		SchedulerConstant.batchInsertSonyEmployee1,
		                IiiiOllII,
		                Ol1lOlIIo,
		                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
		                    public void setValues(PreparedStatement ooIoIliIi, SonyEmployeeDetailsREST Oo1lIllIi) 
								throws SQLException {
		                    	//System.out.println("Insert API to DB sql"+updateCounts.toString());
		                        ooIoIliIi.setString(1, Oo1lIllIi.getGid());
		                        //statement.setString(1, "REQALC-2019-000001");
		                        ooIoIliIi.setString(2, Oo1lIllIi.getEmployee_name());   
		                        ooIoIliIi.setString(3, Oo1lIllIi.getEmail()); 
		                        ooIoIliIi.setString(4, Oo1lIllIi.getDivision_name()); 
		                        ooIoIliIi.setString(5, Oo1lIllIi.getReporting_manager_gid());
		                        System.out.println("nsert API to DB stmt"+ooIoIliIi.toString());
		                        ooIoIliIi.setString(6, Oo1lIllIi.getReporting_manager_name());
		                        ooIoIliIi.setString(7, Oo1lIllIi.getReporting_manager_email());
		                        ooIoIliIi.setString(8, Oo1lIllIi.getProject_name());
		                        ooIoIliIi.setString(9, Oo1lIllIi.getProject_manager_gid());
		                        ooIoIliIi.setString(10, Oo1lIllIi.getProject_manager_name()); 
		                        ooIoIliIi.setString(11, Oo1lIllIi.getProject_manager_email()); 
		                       // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
		                        System.out.println("Insert API to DB"+ooIoIliIi.toString()); 
		                    }
		                });
		        System.out.println("Batch Count"+ IlIlol0I0);
		        return IlIlol0I0;
		    }
}
