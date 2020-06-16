package com.wms.dao.deallocateunassigned;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.SchedulerConstant;
import com.wms.constant.WMSConstant;
import com.wms.dao.deallocateunassigned.DeAllocation;

@Repository
public class DeallocateTriggerDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
    
	@Value("${wms.bulkupload.emailjobs.count}")  
	private int maxJob;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
		
	public List<DeAllocation> getEmailJobs(){		
		String emailTriggerQuery = "SELECT * FROM `wms_fa_requests` WHERE flag=2 and date_add(end_time, interval 1 day) <= CURDATE() limit " +maxJob;
		RowMapper<DeAllocation> rowMapper = new BeanPropertyRowMapper<DeAllocation>(DeAllocation.class);  
		return getJdbcTemplate().query(emailTriggerQuery,rowMapper); 	  	
	}   
	public void setDeallocationSeats(DeAllocation deallocationDetails) {
		System.out.println("updatePMRequestTble");
		updateDeallocationSeat(deallocationDetails);
		updateUnAssignedSeat(deallocationDetails);
		updateFAallocatedStatus(deallocationDetails);
		updatePMallocatedStatus(deallocationDetails);
		batchUpdateDeAllocateWorkstationStatus(deallocationDetails, 5);
		//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		//return genericResponse;
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
	 public void updateDeallocationSeat(DeAllocation deallocationDetails){
	      //String SQL = "UPDATE wms_allocation_seats SET status = ?, flag=?, project_id=?  where seat_number = ? ";
		 String SQL = "UPDATE wms_allocation_seats SET status = ?, flag=?, project_id=?  where request_id = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"0","",deallocationDetails.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   } 
	 //Update wms_employee_seats_asign as UnAssigned
	 public void updateUnAssignedSeat(DeAllocation deallocationDetails){
	      String SQL = "UPDATE wms_employee_seats_asign SET status = ?, flag=?   where request_id = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		int rows= getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      
	    		 System.out.println("De-Allocated"+"3"+deallocationDetails.getSeat_number()+rows);}
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }
	 ///*Upadte wms_pm_requests as De-Allocated 
	 public void updatePMallocatedStatus(DeAllocation deallocationDetails){
	      String SQL = "UPDATE wms_pm_requests SET status = ? , flag=?  where request_id = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }
	 
	 //Upadte wms_fa_requests as De-Allocated 
	 public void updateFAallocatedStatus(DeAllocation deallocationDetails){
	      String SQL = "UPDATE wms_fa_requests SET status = ? , flag=?  where request_id = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id()); 
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }//*/
	 	/**
		 * This method is used to update the workstation status during Seat Deallocation By Facility Admin
		 * @param detailsList
		 * @param batchSize
		 * @return
		 */ 
		public void batchUpdateDeAllocateWorkstationStatus(DeAllocation deallocationDetails, int batchSize) {
			int updateStatus = 0;  
			 String SQL = "update wms_workstation_status set request_id=?, project_id=?, employees=?, current_status=? where request_id=?";
		      try {
		    	
		    	  //updateStatus = getJdbcTemplate().update(SQL,deallocationDetails.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id(),deallocationDetails.get);
		    	  updateStatus = getJdbcTemplate().update(SQL,"","","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id());
			      
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
	        System.out.println("No.of records updated in workstation_status Deallaction"+ updateStatus);
	    }
	                                                                    	
	 	
	
}
