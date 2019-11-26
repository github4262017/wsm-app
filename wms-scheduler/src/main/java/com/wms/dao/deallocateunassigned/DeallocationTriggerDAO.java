package com.wms.dao.deallocateunassigned;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.SchedulerConstant;
import com.wms.constant.WMSConstant;
import com.wms.dao.bulkupload.allocation.AllocationSheetDetails;
import com.wms.request.allocation.AllocationRequest;

@Repository
public class DeallocationTriggerDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;

	@Value("${wms.bulkupload.emailjobs.count}")  
	private int maxJob;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
		
	public List<DeallocationDetails> getSeatDeallocationJobs(){   		
		String emailTriggerQuery = "SELECT * from wms_workstation_status where current_status=1  limit " +maxJob;
		RowMapper<DeallocationDetails> rowMapper = new BeanPropertyRowMapper<DeallocationDetails>(DeallocationDetails.class);
		return getJdbcTemplate().query(emailTriggerQuery,rowMapper);    	    	
	}   
	
	public void updateStatus(DeallocationDetails deallocationDetails){ 
		try {
			//String statusUpdate = "update wms_seatdeallocation_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "update wms_seatdeallocation_jobs set status= ? where status = ? and seat_number = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows =getJdbcTemplate().update(statusUpdate,SchedulerConstant.SEAT_VACANT,"AV",deallocationDetails.getSeat_number());   
			//int rows =getJdbcTemplate().update(statusUpdate);    
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}	
	
	//Update wms_allocation_seats as Allocated
	 public void updateDeallocationSeat(DeallocationDetails deallocationDetails){
	      String SQL = "UPDATE wms_allocation_seats SET status = ?, flag=?, project_id=?  where seat_number = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"1","",deallocationDetails.getSeat_number());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   } 
	 //Update wms_employee_seats_asign as UnAssigned
	 public void updateUnAssignedSeat(DeallocationDetails deallocationDetails){
	      String SQL = "UPDATE wms_employee_seats_asign SET status = ?, flag=?   where seat_number = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		int rows= getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getSeat_number());
	      
	    		 System.out.println("De-Allocated"+"3"+deallocationDetails.getSeat_number()+rows);}
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }
	 /*Upadte wms_pm_requests as De-Allocated 
	 public void updatePMallocatedStatus(DeallocationDetails deallocationDetails){
	      String SQL = "UPDATE wms_pm_requests SET status = ? , flag=?  where seat_number = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getSeat_number());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }
	 
	 //Upadte wms_fa_requests as De-Allocated 
	 public void updateFAallocatedStatus(DeallocationDetails deallocationDetails){
	      String SQL = "UPDATE wms_fa_requests SET status = ? , flag=?  where seat_number = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getSeat_number()); 
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }*/
	 	/**
		 * This method is used to update the workstation status during Seat Deallocation By Facility Admin
		 * @param detailsList
		 * @param batchSize
		 * @return
		 */ 
		public void batchUpdateDeAllocateWorkstationStatus(DeallocationDetails deallocationDetails, int batchSize) {
			int updateStatus = 0;
			 String SQL = "update wms_workstation_status set request_id=?, project_id=?, employees=?, current_status=? where workstation_no=?";
		      try {
		    	
		    	  //updateStatus = getJdbcTemplate().update(SQL,deallocationDetails.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id(),deallocationDetails.get);
		    	  updateStatus = getJdbcTemplate().update(SQL,"","","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getSeat_number());
			      
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
	        System.out.println("No.of records updated in workstation_status Deallaction"+ updateStatus);
	    }
		// Insert Allocation Seats after 7 days use this table for de-allocation		
		/*public int batchInsertRecordsDeallocationAutomation(DeallocationDetails deallocationDetailsList) {
			System.out.println("Batch Allocation Process");
	        int updateCounts = getJdbcTemplate().update(
	                "INSERT INTO wms_seatdeallocation_jobs(from_id, to_id, floor_id, seat_number, request_id, project_id, status, flag, start_time, end_time) values(?,?,?,?,?,?,?,?,?,?)",
	                deallocationDetailsList,
	                new ParameterizedPreparedStatementSetter<DeallocationDetails>() {
	                    public void setValues(PreparedStatement ps, DeallocationDetails deallocationDetails) 
							throws SQLException {
	                        	                        
	                        ps.setString(1, "thiruvasagam@ation.co");
							ps.setString(2, "thiruvasagam.k@gmail.com"); 
							ps.setString(3, deallocationDetails.getFloor_id());
							ps.setString(4, deallocationDetails.getSeat_number() );
							ps.setString(5, deallocationDetails.getRequest_id());							
							ps.setString(6, deallocationDetails.getProject_id());
							ps.setString(7, "De-Allocated");
							ps.setInt(8, 1);							
							ps.setString(9, deallocationDetails.getStart_date());
							ps.setString(10,deallocationDetails.getEnd_date());
	                    }
	                });
	        System.out.println("Batch Count"+ updateCounts);
	        return updateCounts;
	    }*/
	    public int batchInsertRecordsDeallocationAutomation(Map<String,DeallocationRequests> deallocationDetailsList) {
			System.out.println("Batch Allocation Process");
	        int updateCounts = getJdbcTemplate().update(
	                "INSERT INTO wms_seatdeallocation_jobs(from_id, to_id, floor_id, seat_number, request_id, project_id, status, flag, start_time, end_time) values(?,?,?,?,?,?,?,?,?,?)",
	                deallocationDetailsList,
	                new ParameterizedPreparedStatementSetter<DeallocationRequests>() {
	                    public void setValues(PreparedStatement ps, DeallocationRequests deallocationDetails) 
							throws SQLException {
	                        	                        
	                        ps.setString(1, "thiruvasagam@ation.co");
							ps.setString(2, "thiruvasagam.k@gmail.com"); 
							ps.setString(3, deallocationDetails.getFloor_id());
							ps.setString(4, "W0001" );
							ps.setString(5, deallocationDetails.getRequest_id());							
							ps.setString(6, "SONY");
							ps.setString(7, "De-Allocated");
							ps.setInt(8, 1);							
							ps.setString(9, "01-14-2012");
							ps.setString(10,"01-14-2012");   
	                    }
	                });
	        System.out.println("Batch Count"+ updateCounts);
	        return updateCounts;
	    }
		
		private List<Map<String, Object>> executeQueryList(String sql) {
			List<Map<String, Object>> list = getJdbcTemplate().queryForList(sql);
			return list;
		}
		public Map<String,DeallocationRequests> getAllocatedSeats(){
			//Get Coordinates from master table 
			
			String allocatedSQL = "SELECT * from wms_workstation_status where current_status=1";
			RowMapper<DeallocationDetails> rowMapper = new BeanPropertyRowMapper<DeallocationDetails>(DeallocationDetails.class);
			List<DeallocationDetails> allocatedList = getJdbcTemplate().query(allocatedSQL,rowMapper);
			//List<Map<String, Object>> allocatedList = executeQueryList(wsSQL);
			Map<String,DeallocationRequests> deallocationRequestSeatsMap = new HashMap<>();
			for (DeallocationDetails deallocationDetails : allocatedList) {
				int currentStatus = deallocationDetails.getCurrent_status();
				String requestid = deallocationDetails.getRequest_id();
				String startdate = deallocationDetails.getStart_date();
				String workstation_no = deallocationDetails.getWorkstation_no();
				System.out.println("startdate date :"+startdate);
				
				EmailDeallocationJob deallocJob=null;
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				Date dateobj = new Date();
				System.out.println("current date :"+df.format(dateobj));
				Long days=0l; 
				if(startdate!=null) {
					days=getDateDifferent(startdate, df.format(dateobj));
					System.out.println("start date and todays diff:"+days);
				}				
				
				if(days==5) {    
					System.out.println("send email :"+deallocationDetails.getWorkstation_no());
					//Insert into email jobs
				}else if(days==7) {
					System.out.println("De-allocate :"+deallocationDetails.getWorkstation_no());
					
					DeallocationRequests deallocationRequests = new DeallocationRequests();
					deallocationRequests.setRequest_id(deallocationDetails.getRequest_id());
					deallocationRequests.setFloor_id(deallocationDetails.getFloor_id());
					deallocationRequests.setWorkstation_no(deallocationDetails.getWorkstation_no());
					
					deallocationRequestSeatsMap.put(workstation_no,deallocationRequests); 
					
				}
				
			  }
		
			return deallocationRequestSeatsMap;
			

		}
		public Long getDateDifferent(String dateStart,String dateStop) {

			//dateStart = "01/14/2012 09:29:58";
			//dateStop = "01/15/2012 10:31:48";  

			//HH converts hour in 24 hours format (0-23), day calculation
			//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

			Date d1 = null;
			Date d2 = null;
			long diffDays=0L; 

			try {
				d1 = format.parse(dateStart);
				d2 = format.parse(dateStop);

				//in milliseconds
				long diff = d2.getTime() - d1.getTime();

				long diffSeconds = diff / 1000 % 60;
				long diffMinutes = diff / (60 * 1000) % 60;
				long diffHours = diff / (60 * 60 * 1000) % 24;
				diffDays = diff / (24 * 60 * 60 * 1000);

				System.out.print(diffDays + " days, ");
				System.out.print(diffHours + " hours, ");
				System.out.print(diffMinutes + " minutes, ");
				System.out.print(diffSeconds + " seconds.");

			} catch (Exception e) {
				e.printStackTrace();
			}
			return diffDays;
		}
}
