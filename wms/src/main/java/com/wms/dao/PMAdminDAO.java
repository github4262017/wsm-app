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

import com.wms.constant.WMSConstant;
import com.wms.controller.AllocationController;

import com.wms.model.FMDashboardDetails;
import com.wms.model.PMDashboardDetails;
import com.wms.model.ProjectManagerRequest;

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

		String PMDashboardDetailsrejected = WMSConstant.pm_requests_rejected;  
		int rejected_rs=0;  
		
	    try {
	    	rejected_rs = getJdbcTemplate().queryForObject(PMDashboardDetailsrejected, new Object[] { gid }, Integer.class); 
	        
	    }catch (Exception e) {   
             LOGGER.error("Exception PMAdminDao"+e);
	    }		

		String pm_requests_assigned = WMSConstant.pm_requests_assigned;
		
		int assigned_rs=0;
		try {
	    	 assigned_rs = getJdbcTemplate().queryForObject(pm_requests_assigned, new Object[] { gid }, Integer.class);   
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_pending = WMSConstant.pm_requests_pending;
		int pending_rs =0;
		try {
			pending_rs= getJdbcTemplate().queryForObject(pm_requests_pending, new Object[] { gid }, Integer.class);  
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_accepted = WMSConstant.pm_requests_pending;
		int accepted_rs =0;
		try {
			accepted_rs =getJdbcTemplate().queryForObject(pm_requests_accepted, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_allocated = WMSConstant.pm_requests_allocated;
		int allocated_rs=0;
		try {
			allocated_rs =getJdbcTemplate().queryForObject(pm_requests_allocated, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }
		

		String pm_requests_allRequest = WMSConstant.pm_requests_allocated;
		int allRequest_rs =0;
		try {
			allRequest_rs=getJdbcTemplate().queryForObject(pm_requests_allRequest, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_thisMonth = WMSConstant.pm_requests_thisMonth; 
		int thisMonth_rs=0 ;
		try {
			thisMonth_rs=getJdbcTemplate().queryForObject(pm_requests_thisMonth, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);  
	    }


		String pm_requests_todayRequest = WMSConstant.pm_requests_todayRequest;
		int todayRequest_rs=0 ;  
		try {
	    	//todayRequest_rs = getJdbcTemplate().queryForObject(pm_requests_todayRequest, new Object[] { gid }, Integer.class);
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

		String pm_requests_rejected = WMSConstant.pm_requests_rejected;  
		int rejected_rs=0;  
		
	    try {
	    	rejected_rs = getJdbcTemplate().queryForObject(pm_requests_rejected, new Object[] { gid }, Integer.class); 
	    }catch (Exception e) {   
             LOGGER.error("Exception PMAdminDao"+e);
	    }		
        
		String pm_requests_assigned = WMSConstant.pm_requests_assigned;
		int assigned_rs=0;
		try {
	    	 assigned_rs = getJdbcTemplate().queryForObject(pm_requests_assigned, new Object[] { gid }, Integer.class);   
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_pending = WMSConstant.pm_requests_pending;
		int pending_rs =0;
		try {
			pending_rs= getJdbcTemplate().queryForObject(pm_requests_pending, new Object[] { gid }, Integer.class);  
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_accepted = WMSConstant.pm_requests_accepted;
		int accepted_rs =0;
		try {
			accepted_rs =getJdbcTemplate().queryForObject(pm_requests_accepted, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_allocated = WMSConstant.pm_requests_allocated;
		int allocated_rs=0;
		try {
			allocated_rs =getJdbcTemplate().queryForObject(pm_requests_allocated, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }
		

		String pm_requests_allRequest = WMSConstant.pm_requests_allRequest;
		int allRequest_rs =0;
		try {
			allRequest_rs=getJdbcTemplate().queryForObject(pm_requests_allRequest, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_thisMonth = WMSConstant.pm_requests_thisMonth;
		int thisMonth_rs=0 ;
		try {
			thisMonth_rs=getJdbcTemplate().queryForObject(pm_requests_thisMonth, new Object[] { gid }, Integer.class);
	    }catch (Exception e) {
	    	LOGGER.error("Exception PMAdminDao"+e);  
	    }

		String pm_requests_todayRequest = WMSConstant.pm_requests_todayRequest;
		int todayRequest_rs=0 ;  
		try {
	    	todayRequest_rs = getJdbcTemplate().queryForObject(pm_requests_todayRequest, new Object[] { gid }, Integer.class);
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
