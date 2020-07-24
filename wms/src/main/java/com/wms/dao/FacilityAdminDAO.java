package com.wms.dao;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.model.FMDashboardDetails;


@Repository
public class FacilityAdminDAO extends JdbcDaoSupport{

	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
	
	private String executeQuery(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		int count = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(count);
	}
	
	public FMDashboardDetails getFacilityAdminCount(){		
						
			String fa_rejected_dash = WMSConstant.fa_rejected_dash+"(\"Rejected\")";
			String rejected_rs = executeQuery(fa_rejected_dash);
			
			String fa_assigned_dash = WMSConstant.fa_assigned_dash+"(\"Assigned\")";
			String assigned_rs = executeQuery(fa_assigned_dash);
			
			String fa_pending_dash = WMSConstant.fa_pending_dash+" (\"Pending\")";
			String pending_rs = executeQuery(fa_pending_dash);
			
			String fa_accepted_dash = WMSConstant.fa_accepted_dash+" (\"Accepted\")";
			String accepted_rs = executeQuery(fa_accepted_dash);
			
			String fa_allocated_dash =  WMSConstant.fa_allocated_dash+" (\"Allocated\")";
			String allocated_rs = executeQuery(fa_allocated_dash);
			
			//this below lines are not working
			//String allRequest = "SELECT count(*) FROM `wms_fa_requests` WHERE status IN ('Rejected','Accepted','Assigned','Pending')";
			//String allRequest_rs = executeQuery(allRequest);
			String fa_allRequest_dash = WMSConstant.fa_allRequest_dash;
			String allRequest_rs = executeQuery(fa_allRequest_dash);
			
			String fa_thisMonth_dash = WMSConstant.fa_thisMonth_dash;
			String thisMonth_rs = executeQuery(fa_thisMonth_dash); 
			
			//String todayRequest = "SELECT count(*) from wms_fa_requests where insert_timestamp='"+WMSDateUtil.getCurrentTimeStamp()+"'";
			String fa_todayRequest_dash = WMSConstant.fa_todayRequest_dash;			
			String todayRequest_rs = executeQuery(fa_todayRequest_dash);
			
			
			FMDashboardDetails fmDashboardDetails = new FMDashboardDetails();
			fmDashboardDetails.setAllRequest(allRequest_rs);
			fmDashboardDetails.setThisMonth(thisMonth_rs);
			fmDashboardDetails.setTodayRequest(todayRequest_rs);
			fmDashboardDetails.setAssigned(assigned_rs);
			fmDashboardDetails.setPending(pending_rs);
			fmDashboardDetails.setRejected(rejected_rs);
			fmDashboardDetails.setAllocated(allocated_rs);

	return fmDashboardDetails;
	}

}
