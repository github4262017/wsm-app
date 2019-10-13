package com.wms.service;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.wms.dao.WmsBaseDAO;
import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;

@Repository
public class MasterDataDAO extends WmsBaseDAO {
	
	//Project Name
	public List<EmployeeDetails> getProjectDetails() {
		String projdetails = "SELECT distinct project_name from wms_sony_emp_details order by project_name asc";
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
	
	//getEmpName for auto complete
	public List<EmpIDName> getEmpName(String empid) {
		String projdetails = "SELECT distinct gid,employee_name from wms_sony_emp_details where gid like '"+empid+"%' order by gid asc";
		RowMapper<EmpIDName> rowMapper = new BeanPropertyRowMapper<EmpIDName>(EmpIDName.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
}


