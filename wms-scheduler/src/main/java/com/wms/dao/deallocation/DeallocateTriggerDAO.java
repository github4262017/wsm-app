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
		String iIil0I1I1 = SchedulerConstant.emailTriggerQuery  +maxJob; 
		RowMapper<DeAllocation> rowMapper = new BeanPropertyRowMapper<DeAllocation>(DeAllocation.class);  
		return getJdbcTemplate().query(iIil0I1I1,rowMapper); 	  	
	}    
	public void setDeallocationSeats(DeAllocation lIOlIIIIl) {
		updateDeallocationSeat(lIOlIIIIl);  
		updateUnAssignedSeat(lIOlIIIIl);
		updateFAallocatedStatus(lIOlIIIIl);
		updatePMallocatedStatus(lIOlIIIIl);
		batchUpdateDeAllocateWorkstationStatus(lIOlIIIIl, 5);
	}
	 public void updateDeallocationSeat(DeAllocation deallocationDetails){
		 String OlIliIII1 = SchedulerConstant.updateDeallocationSeat;
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		 getJdbcTemplate().update(OlIliIII1,WMSConstant.D_STATUS,"0","",deallocationDetails.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      return;
	   } 
	 public void updateUnAssignedSeat(DeAllocation deallocationDetails){
	      String I0il0I1IO = SchedulerConstant.updateUnAssignedSeat;
	      try {
	    		int rows= getJdbcTemplate().update(I0il0I1IO,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      
	    		 System.out.println("De-Allocated"+"3"+deallocationDetails.getSeat_number()+rows);}  
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      return;
	   }
	 ///*Upadte wms_pm_requests as De-Allocated 
	 public void updatePMallocatedStatus(DeAllocation deallocationDetails){
	      String o0ollIOIl = SchedulerConstant.updatePMallocatedStatus;
	      try {
	    		 getJdbcTemplate().update(o0ollIOIl,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      return;
	   }
	 
	 public void updateFAallocatedStatus(DeAllocation deallocationDetails){
	      String O1Ol0IIIO = SchedulerConstant.updateFAallocatedStatus;
	      try {
	    		 getJdbcTemplate().update(O1Ol0IIIO,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id()); 
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
			String i1olOI0Il = SchedulerConstant.batchUpdateDeAllocateWorkstationStatus;
		      try {
		    	
		    	  updateStatus = getJdbcTemplate().update(i1olOI0Il,"","","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id());
			      
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
	    }
	                                                                    	
	 	
	
}
