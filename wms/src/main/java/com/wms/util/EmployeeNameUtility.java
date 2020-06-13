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
	/*
	public Map<String,String> getAvailableTime(String gid) {
		return getJdbcTemplate().queryForMap("SELECT distinct gid,employee_name from wms_sony_emp_details where gid like '"+gid+"%' order by gid asc",new Object[] { gid }, (ResultSet rs) -> {
        HashMap<Integer,Integer> results = new HashMap<>();
        while (rs.next()) {
            results.put(rs.getInt("a.hour"), rs.getInt("s.duration"));
        }
        return results;
    });
	
}  
	//@Override
	public EmpIDName getEmployee(String gid) {
		String sql = "SELECT distinct gid,employee_name from wms_sony_emp_details where gid = ?";
		
		
		return getJdbcTemplate().queryForObject(sql, new RowMapper<EmpIDName>() {
			@Override
			public EmpIDName mapRow(ResultSet rs, int rowNum) throws SQLException {

				EmpIDName emp = new EmpIDName();

				emp.setGid(rs.getString("gid"));
				emp.setEmployee_name(rs.getString("employee_name"));  
				
				return emp;
			}
		}, gid); 
	}*/
	
	public List<Map<String, Object>> executeQueryList(String sql) {
		//System.out.println("Data Source" + getJdbcTemplate().getDataSource());
		List<Map<String, Object>> queryResult = getJdbcTemplate().queryForList(sql);
		return queryResult;
	}
	public String getName1(String gid) {
		if(gid!=null) 
		System.out.println("GID:"+gid);
        return getJdbcTemplate().query("SELECT employee_name from wms_sony_emp_details where gid = ? ",new Object[] {gid  }, (ResultSet rs) -> {
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
		//gid="7000012496"; 
		
		String sql = "SELECT gid,employee_name from wms_sony_emp_details where gid = ?";
		EmpIDName emp=new EmpIDName();
		//System.out.println("emp_name:"+sql);
		HashMap<String, EmpIDName> employeeAll = new HashMap<String, EmpIDName>();
		List<Map<String, Object>> employeeDetailsMap =null; 
		    
	    if(gid!=null) {
	    	employeeDetailsMap = getJdbcTemplate().queryForList(sql, gid);
	    }
	    for(Map<String,Object> employeeMap : employeeDetailsMap ) {	
	    	String empgid = ((String)employeeMap.get("gid")).trim();
	    	String employee_name =((String)employeeMap.get("employee_name")).trim();
	    	
	    	emp.setEmployee_name(employee_name);
	    	emp.setGid(empgid);
			employeeAll.put(empgid, emp);  
		}
	    //System.out.println("All EMp"+employeeAll.get(gid).getEmployee_name());
	   // System.out.println("emp_name:"+emp_name); 
    //return (String)employeeAll.get(gid); 
	    return employeeAll;               
	}
	
	/*public HashMap<String, EmpIDName> getEmployeeName(String gid) {
		String sql = "SELECT gid,employee_name from wms_sony_emp_details where gid = ?";
		System.out.println("emp_name:"+sql);
		Map<String, EmpIDName> employeeAll = new HashMap<String, EmpIDName>();
		List<Map<String, EmpIDName>> employeeDetailsMap =null;  
	    if(gid!=null) {
	    	employeeDetailsMap = getJdbcTemplate().queryForList(sql, gid);
	    }
	    for(Map<String,Object> employeeMap : employeeDetailsMap ) {	
			String empgid = ((String)employeeMap.get("gid")).trim();
			String employee_name =((String)employeeMap.get("employee_name")).trim();
	
			employeeAll.put(empgid, employee_name);
		}
		return new Book(isbn, "Some book");
	  }*/
    
    
	/*
	public HashMap<Integer,Integer> getDepartments() {
		String sql = "SELECT * FROM department";
		HashMap<Integer,Integer> depts = getJdbcTemplate().query(sql, new RowMapper<HashMap<Integer,Integer>>() {

			@Override
			public Department mapRow(ResultSet rs, int rowNum) throws SQLException {
				Department dept = new Department();
				dept.setId(rs.getInt("id"));
				dept.setDeptId(rs.getInt("deptId"));
				dept.setName(rs.getString("name"));
				return dept;
			}
		});
		return depts;
	}*/
}
