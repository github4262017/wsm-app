package com.wms.dao.deallocateunassigned;

import java.util.List;

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
		String emailTriggerQuery = "SELECT * from wms_seatdeallocation_jobs where status='AV' limit " +maxJob;
		RowMapper<DeallocationDetails> rowMapper = new BeanPropertyRowMapper<DeallocationDetails>(DeallocationDetails.class);
		return getJdbcTemplate().query(emailTriggerQuery,rowMapper);		
	}   
	
	public void updateStatus(DeallocationDetails deallocationDetails){ 
		try {
			//String statusUpdate = "update wms_seatdeallocation_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "update wms_seatdeallocation_jobs set status= ? where status = ? and request_id = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows =getJdbcTemplate().update(statusUpdate,SchedulerConstant.SEAT_VACANT,"AV",deallocationDetails.getRequest_id());   
			//int rows =getJdbcTemplate().update(statusUpdate);    
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}	
	
	//Update wms_allocation_seats as Allocated
	 public void updateDeallocationSeat(DeallocationDetails deallocationDetails){
	      String SQL = "UPDATE wms_allocation_seats SET status = ?, flag=?  where request_id = ? ";
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
	 //Update wms_employee_seats_asign as UnAssigned
	 public void updateUnAssignedSeat(DeallocationDetails deallocationDetails){
	      String SQL = "UPDATE wms_employee_seats_asign SET status = ?, flag=?   where request_id = ? ";
	      try {
	    	 //if(allocationRequest.getFlag()==1)
	    		int rows= getJdbcTemplate().update(SQL,WMSConstant.D_STATUS,"3",deallocationDetails.getRequest_id());
	      
	    		 System.out.println("De-Allocated"+"3"+deallocationDetails.getRequest_id()+rows);}
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
	      System.out.println("updateDeallocationSeat = " + SQL );
	      System.out.println("De-Allocated");
	      return;
	   }
	 //Upadte wms_pm_requests as De-Allocated 
	 public void updatePMallocatedStatus(DeallocationDetails deallocationDetails){
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
	 public void updateFAallocatedStatus(DeallocationDetails deallocationDetails){
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
	   }
	 	/**
		 * This method is used to update the workstation status during Seat Deallocation By Facility Admin
		 * @param detailsList
		 * @param batchSize
		 * @return
		 */ 
		public void batchUpdateDeAllocateWorkstationStatus(DeallocationDetails deallocationDetails, int batchSize) {
			int updateStatus = 0;
			 String SQL = "update wms_workstation_status set request_id=?, project_id=?, employees=?, current_status=? where request_id = ? and workstation_no=?";
		      try {
		    	
		    	  //updateStatus = getJdbcTemplate().update(SQL,deallocationDetails.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id(),deallocationDetails.get);
		    	  updateStatus = getJdbcTemplate().update(SQL,deallocationDetails.getRequest_id(),"","",WMSConstant.SEAT_STATUS_VACANT,deallocationDetails.getRequest_id());
			      
		      }
		      catch(Exception e){
		    	  e.printStackTrace();
		      }
	        System.out.println("No.of records updated in workstation_status Deallaction"+ updateStatus);
	    }
}
