package com.wms.dao;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.model.FMDashboardDetails;
import com.wms.model.PMDashboardDetails;

@Repository
public class PMAdminDAO extends JdbcDaoSupport {
	@Autowired
	DataSource dataSource;

	@PostConstruct
	private void initialize() {
		setDataSource(dataSource);
		System.out.println("Data Source in constructor" + getJdbcTemplate().getDataSource());
	}

	private String executeQuery(String sql) {
		System.out.println("Data Source" + getJdbcTemplate().getDataSource());
		int count = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(count);
	}

	public PMDashboardDetails getPMCount(String gid) {

		String rejected = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Rejected\") and gid='"+gid+"' ";
		System.out.println("PMdash"+rejected); 
		String rejected_rs = executeQuery(rejected);

		String assigned = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Assigned\")  and gid='"+gid+"' ";
		String assigned_rs = executeQuery(assigned);

		String pending = "SELECT count(*) from wms_pm_requests where status IN (\"Pending\")  and gid='"+gid+"' ";
		String pending_rs = executeQuery(pending);

		String accepted = "SELECT count(*) from wms_pm_requests where status IN (\"Accepted\")  and gid='"+gid+"' ";
		String accepted_rs = executeQuery(accepted);

		String allocated = "SELECT count(*) from wms_pm_requests where status IN (\"Allocated\")  and gid='"+gid+"' ";
		String allocated_rs = executeQuery(allocated);

		String allRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN ('Rejected','Accepted','Assigned','Pending')  and gid='"+gid+"' ";
		String allRequest_rs = executeQuery(allRequest);

		String thisMonth = "SELECT count(*) from wms_pm_requests WHERE MONTH(modified_timestamp) = MONTH(CURDATE())  and gid='"+gid+"' ";
		String thisMonth_rs = executeQuery(thisMonth);

		// String todayRequest = "SELECT count(*) from wms_pm_requests where
		// insert_timestamp='"+WMSDateUtil.getCurrentTimeStamp()+"'";
		String todayRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE DATE(`modified_timestamp`) = CURDATE()  and gid='"+gid+"'";
		String todayRequest_rs = executeQuery(todayRequest);

		PMDashboardDetails pmDashboardDetails = new PMDashboardDetails();
		pmDashboardDetails.setAllRequest(thisMonth_rs);//this hari changed bcz total req is nt working //allRequest_rs
		pmDashboardDetails.setThisMonth(thisMonth_rs);
		pmDashboardDetails.setTodayRequest(todayRequest_rs);
		pmDashboardDetails.setAssigned(assigned_rs);
		pmDashboardDetails.setPending(pending_rs);
		pmDashboardDetails.setRejected(rejected_rs);
		pmDashboardDetails.setAllocated(allocated_rs);

		return pmDashboardDetails;
	}
}
