package com.wms.dao.deallocation;

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
import com.wms.dao.deallocation.DeAllocation;

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
		
	public List<DeAllocation> getDeallocationJobs(){		
		String emailTriggerQuery = SchedulerConstant.emailTriggerQuery  +maxJob; 
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
	}
	//Update wms_allocation_seats as Allocated
	 public void updateDeallocationSeat(DeAllocation deallocationDetails){
	      //String SQL = "UPDATE wms_allocation_seats SET status = ?, flag=?, project_id=?  where seat_number = ? ";
		 String updateDeallocationSeat = SchedulerConstant.updateDeallocationSeat;
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(updateDeallocationSeat,WMSConstant.D_STATUS,"0","",deallocationDetails.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      return;
	   } 
	 //Update wms_employee_seats_asign as UnAssigned
	 public void updateUnAssignedSeat(DeAllocation deallocationDetails){
	      String updateUnAssignedSeat = SchedulerConstant.updateUnAssignedSeat;
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		int rows= getJdbcTemplate().update(updateUnAssignedSeat,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      
	    		 System.out.println("De-Allocated"+"3"+deallocationDetails.getSeat_number()+rows);}  
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      return;
	   }
	 ///*Upadte wms_pm_requests as De-Allocated 
	 public void updatePMallocatedStatus(DeAllocation deallocationDetails){
	      String updatePMallocatedStatus = SchedulerConstant.updatePMallocatedStatus;
	      try {
	    		 getJdbcTemplate().update(updatePMallocatedStatus,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      return;
	   }
	 
	 //Upadte wms_fa_requests as De-Allocated 
	 public void updateFAallocatedStatus(DeAllocation deallocationDetails){
	      String updateFAallocatedStatus = SchedulerConstant.updateFAallocatedStatus;
	      try {
	    		 getJdbcTemplate().update(updateFAallocatedStatus,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id()); 
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
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
			String batchUpdateDeAllocateWorkstationStatus = SchedulerConstant.batchUpdateDeAllocateWorkstationStatus;
		      try {
		    	
		    	  updateStatus = getJdbcTemplate().update(batchUpdateDeAllocateWorkstationStatus,"","","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id());
			      
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
	    }
	                                                                    	
	 	
	
}
