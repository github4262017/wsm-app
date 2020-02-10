package com.wms.dao;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.controller.AllocationController;
import com.wms.controller.ProjectManagerRequest;
import com.wms.model.FMDashboardDetails;
import com.wms.model.PMDashboardDetails;

@Repository
public class PMAdminDAO extends JdbcDaoSupport {
	@Autowired
	DataSource dataSource;
	private final static Logger LOGGER = LoggerFactory.getLogger(PMAdminDAO.class);
	@PostConstruct
	private void initialize() {
		setDataSource(dataSource);
		System.out.println("Data Source in constructor" + getJdbcTemplate().getDataSource());
	}
    
	private String executeQuery(String sql, int gid) {   
		System.out.println("Data Source" + getJdbcTemplate().getDataSource());
		int count = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(count);
	}
    
	public PMDashboardDetails getPMCount(String gid) {

		String rejected = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Rejected\") and gid=? ";  
		System.out.println("PMdash"+rejected); 
		int rejected_rs=0;  
		
	    try {
	    	rejected_rs = getJdbcTemplate().queryForObject(rejected, new Object[] { gid }, Integer.class); 
	    	//rejected_rs=String.valueOf(rejected_);    
	    	System.out.println("rejected_rs"+rejected_rs);  
	    }catch (Exception e) {   
             LOGGER.error("Exception PMAdminDao"+e);
	    }		

		String assigned = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Assigned\")  and gid=? ";
		int assigned_rs=0;
		try {
	    	 assigned_rs = getJdbcTemplate().queryForObject(assigned, new Object[] { gid }, Integer.class);   
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pending = "SELECT count(*) from wms_pm_requests where status IN (\"Pending\")  and gid=? ";
		int pending_rs =0;
		try {
			pending_rs= getJdbcTemplate().queryForObject(pending, new Object[] { gid }, Integer.class);  
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String accepted = "SELECT count(*) from wms_pm_requests where status IN (\"Accepted\")  and gid=? ";
		int accepted_rs =0;
		try {
			accepted_rs =getJdbcTemplate().queryForObject(accepted, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String allocated = "SELECT count(*) from wms_pm_requests where status IN (\"Allocated\")  and gid=? ";
		int allocated_rs=0;
		try {
			allocated_rs =getJdbcTemplate().queryForObject(allocated, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }
		
		//below query is not working
		//String allRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN ('Rejected','Accepted','Assigned','Pending')  and gid=? ";
		//String allRequest_rs = executeQuery(allRequest);
		String allRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE gid=? ";
		int allRequest_rs =0;
		try {
			allRequest_rs=getJdbcTemplate().queryForObject(allRequest, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String thisMonth = "SELECT count(*) from wms_pm_requests WHERE MONTH(modified_timestamp) = MONTH(CURDATE())  and gid=? ";
		int thisMonth_rs=0 ;
		try {
			thisMonth_rs=getJdbcTemplate().queryForObject(thisMonth, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);  
	    }

		// String todayRequest = "SELECT count(*) from wms_pm_requests where
		// insert_timestamp='"+WMSDateUtil.getCurrentTimeStamp()+"'";
		String todayRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE DATE(`modified_timestamp`) = CURDATE()  and gid=?";
		int todayRequest_rs=0 ;  
		try {
	    	todayRequest_rs = getJdbcTemplate().queryForObject(todayRequest, new Object[] { gid }, Integer.class);
	    }catch (Exception e) { 
	    	LOGGER.error("Exception PMAdminDao"+e);                    
	    }  
		
		PMDashboardDetails pmDashboardDetails = new PMDashboardDetails();
		pmDashboardDetails.setAllRequest(allRequest_rs);  
		pmDashboardDetails.setThisMonth(thisMonth_rs);
		pmDashboardDetails.setTodayRequest(todayRequest_rs);
		pmDashboardDetails.setAssigned(assigned_rs);
		pmDashboardDetails.setPending(pending_rs);
		pmDashboardDetails.setRejected(rejected_rs);
		pmDashboardDetails.setAllocated(allocated_rs);

		return pmDashboardDetails;
	}
	
		public PMDashboardDetails getPMuserDetails(ProjectManagerRequest projectManagerRequest) {
		String gid = projectManagerRequest.getGid();

		String rejected = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Rejected\") and gid=? ";  
		System.out.println("PMdash"+rejected); 
		int rejected_rs=0;  
		
	    try {
	    	rejected_rs = getJdbcTemplate().queryForObject(rejected, new Object[] { gid }, Integer.class); 
	    	//rejected_rs=String.valueOf(rejected_);    
	    	System.out.println("rejected_rs"+rejected_rs);  
	    }catch (Exception e) {   
             LOGGER.error("Exception PMAdminDao"+e);
	    }		

		String assigned = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Assigned\")  and gid=? ";
		int assigned_rs=0;
		try {
	    	 assigned_rs = getJdbcTemplate().queryForObject(assigned, new Object[] { gid }, Integer.class);   
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pending = "SELECT count(*) from wms_pm_requests where status IN (\"Pending\")  and gid=? ";
		int pending_rs =0;
		try {
			pending_rs= getJdbcTemplate().queryForObject(pending, new Object[] { gid }, Integer.class);  
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String accepted = "SELECT count(*) from wms_pm_requests where status IN (\"Accepted\")  and gid=? ";
		int accepted_rs =0;
		try {
			accepted_rs =getJdbcTemplate().queryForObject(accepted, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String allocated = "SELECT count(*) from wms_pm_requests where status IN (\"Allocated\")  and gid=? ";
		int allocated_rs=0;
		try {
			allocated_rs =getJdbcTemplate().queryForObject(allocated, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }
		
		//below query is not working
		//String allRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN ('Rejected','Accepted','Assigned','Pending')  and gid=? ";
		//String allRequest_rs = executeQuery(allRequest);
		String allRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE gid=? ";
		int allRequest_rs =0;
		try {
			allRequest_rs=getJdbcTemplate().queryForObject(allRequest, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String thisMonth = "SELECT count(*) from wms_pm_requests WHERE MONTH(modified_timestamp) = MONTH(CURDATE())  and gid=? ";
		int thisMonth_rs=0 ;
		try {
			thisMonth_rs=getJdbcTemplate().queryForObject(thisMonth, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);  
	    }

		// String todayRequest = "SELECT count(*) from wms_pm_requests where
		// insert_timestamp='"+WMSDateUtil.getCurrentTimeStamp()+"'";
		String todayRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE DATE(`modified_timestamp`) = CURDATE()  and gid=?";
		int todayRequest_rs=0 ;  
		try {
	    	todayRequest_rs = getJdbcTemplate().queryForObject(todayRequest, new Object[] { gid }, Integer.class);
	    }catch (Exception e) { 
	    	LOGGER.error("Exception PMAdminDao"+e);                    
	    }  
		
		PMDashboardDetails pmDashboardDetails = new PMDashboardDetails();
		pmDashboardDetails.setAllRequest(allRequest_rs);  
		pmDashboardDetails.setThisMonth(thisMonth_rs);
		pmDashboardDetails.setTodayRequest(todayRequest_rs);
		pmDashboardDetails.setAssigned(assigned_rs);
		pmDashboardDetails.setPending(pending_rs);
		pmDashboardDetails.setRejected(rejected_rs);
		pmDashboardDetails.setAllocated(allocated_rs);

		return pmDashboardDetails;
	}
}
