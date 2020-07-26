package com.wms.util;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.dao.WmsBaseDAO;
import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;

@Repository
@Cacheable(value="customerInfo") 
public class EmployeeNameUtility extends WmsBaseDAO{
	
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	} 

	
	public List<Map<String, Object>> executeQueryList(String sql) {

		List<Map<String, Object>> queryResult = getJdbcTemplate().queryForList(sql);
		return queryResult;
	}
	public String getName1(String gid) {
		if(gid!=null) 
		System.out.println("GID:"+gid);
        return getJdbcTemplate().query(WMSConstant.getEmpName,new Object[] {gid  }, (ResultSet rs) -> {
        HashMap<String,String> results = new HashMap<>();       
        while (rs.next()) {
            results.put(rs.getString("gid"), rs.getString("employee_name"));     
        }
        String name=results.get("7000012496");
        return name;  
    });

}
	@Cacheable("employeenames")
	public HashMap<String, EmpIDName> getName(String gid) {

		String getEmpNameGid = WMSConstant.getEmpNameGid;
		EmpIDName emp=new EmpIDName();

		HashMap<String, EmpIDName> employeeAll = new HashMap<String, EmpIDName>();
		List<Map<String, Object>> employeeDetailsMap =null; 
		    
	    if(gid!=null) {
	    	employeeDetailsMap = getJdbcTemplate().queryForList(getEmpNameGid, gid);
	    }
	    for(Map<String,Object> employeeMap : employeeDetailsMap ) {	
	    	String empgid = ((String)employeeMap.get("gid")).trim();
	    	String employee_name =((String)employeeMap.get("employee_name")).trim();
	    	
	    	emp.setEmployee_name(employee_name);
	    	emp.setGid(empgid);
			employeeAll.put(empgid, emp);  
		}

	    return employeeAll;               
	}
	

}
