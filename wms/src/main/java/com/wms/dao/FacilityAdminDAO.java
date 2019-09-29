package com.wms.dao;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

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
						
			String rejected = "SELECT count(*) FROM `wms_fa_requests` WHERE status IN (\"Rejected\")";
			String rejected_rs = executeQuery(rejected);
			
			String assigned = "SELECT count(*) FROM `wms_fa_requests` WHERE status IN (\"Assigned\")";
			String assigned_rs = executeQuery(assigned);
			
			String pending = "SELECT count(*) from wms_fa_requests where status IN (\"Pending\")";
			String pending_rs = executeQuery(pending);
			
			String accepted = "SELECT count(*) from wms_fa_requests where status IN (\"Accepted\")";
			String accepted_rs = executeQuery(accepted);
			
			String allocated = "SELECT count(*) from wms_fa_requests where status IN (\"Allocated\")";
			String allocated_rs = executeQuery(allocated);
			
			String allRequest = "SELECT count(*) FROM `wms_fa_requests` WHERE status IN ('Rejected','Accepted','Assigned','Pending')";
			String allRequest_rs = executeQuery(allRequest);
			
			
			String thisMonth = "SELECT count(*) from wms_fa_requests WHERE MONTH(modified_timestamp) = MONTH(CURDATE())";
			String thisMonth_rs = executeQuery(thisMonth); 
			
			//String todayRequest = "SELECT count(*) from wms_fa_requests where insert_timestamp='"+WMSDateUtil.getCurrentTimeStamp()+"'";
			String todayRequest = "SELECT count(*) FROM `wms_fa_requests` WHERE DATE(`modified_timestamp`) = CURDATE()";			
			String todayRequest_rs = executeQuery(todayRequest);
			
			
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
