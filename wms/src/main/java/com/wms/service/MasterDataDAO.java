package com.wms.service;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.wms.dao.WmsBaseDAO;
import com.wms.model.EmployeeDetails;

@Repository
public class MasterDataDAO extends WmsBaseDAO {
	// Project Deatils
	public List<EmployeeDetails> getProjectDetails() {
		String projdetails = "SELECT distinct project_name from wms_sony_emp_details ";
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
}
