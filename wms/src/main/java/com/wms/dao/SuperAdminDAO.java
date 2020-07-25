package com.wms.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.controller.SuperAdminRequest;
import com.wms.model.RoleResponse;
import com.wms.model.UserDetailsResponse;
import com.wms.model.UtilizationAllocationDetails;
@Repository
public class SuperAdminDAO   extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	} 

	private String executeRoleQuery(String sql) {
		int count = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(count);
	}
	
	private String executeRoleQuery(String sql,int roleId) {
		int count = getJdbcTemplate().queryForObject(sql, new Object[] {roleId} , Integer.class);
		return String.valueOf(count);
	}

	//'"+roleId+"'
	public List<UserDetailsResponse> getfaAdmin(int roleId){      
		String faAdmin =WMSConstant.faAdmin;  
		RowMapper<UserDetailsResponse> rowMapper = new BeanPropertyRowMapper<UserDetailsResponse>(UserDetailsResponse.class);
		return getJdbcTemplate().query(faAdmin,rowMapper); 
	} 
	
	
	public List<UserDetailsResponse> getpmAdmin(int roleId){
		String pmAdmin =WMSConstant.pmAdmin;
		RowMapper<UserDetailsResponse> rowMapper = new BeanPropertyRowMapper<UserDetailsResponse>(UserDetailsResponse.class);
		return getJdbcTemplate().query(pmAdmin,rowMapper); 
	}
	
	public List<UserDetailsResponse> getdmAdmin(int roleId){
		String dmAdmin =WMSConstant.dmAdmin;
		RowMapper<UserDetailsResponse> rowMapper = new BeanPropertyRowMapper<UserDetailsResponse>(UserDetailsResponse.class);
		return getJdbcTemplate().query(dmAdmin,rowMapper); 
	}
	
	public List<UserDetailsResponse> getsaAdmin(int roleId){
		String saAdmin =WMSConstant.saAdmin;
		RowMapper<UserDetailsResponse> rowMapper = new BeanPropertyRowMapper<UserDetailsResponse>(UserDetailsResponse.class);
		return getJdbcTemplate().query(saAdmin,rowMapper); 
	}
	
	public List<UserDetailsResponse> gettoltalUsers(){
		String toltalUsers =WMSConstant.toltalUsers;
		RowMapper<UserDetailsResponse> rowMapper = new BeanPropertyRowMapper<UserDetailsResponse>(UserDetailsResponse.class);
		return getJdbcTemplate().query(toltalUsers,rowMapper); 
	}
	
	public RoleResponse executeRoleCount(int roleId) {
		// TODO Auto-generated method stub
		System.out.println("RoleCountQuery");
		String faSQL= WMSConstant.faSQL+"= ? "; 
		String pmSQL=WMSConstant.pmSQL;
		String dmSQL=WMSConstant.dmSQL;
		String totalUsersSQL= WMSConstant.totalUsersSQL; 
		
		RoleResponse roleResponse = new RoleResponse();
		roleResponse.setFaCount(executeRoleQuery( faSQL,4));
		roleResponse.setPmCount(executeRoleQuery(pmSQL,3));
		roleResponse.setDmCount(executeRoleQuery(dmSQL,5));
		roleResponse.setTotalCount(executeRoleQuery(totalUsersSQL));
		if(roleId==3) {
			roleResponse.setUserDetailsResponse(getpmAdmin(roleId));
		}else if(roleId==4) {
			roleResponse.setUserDetailsResponse(getfaAdmin(roleId));
			System.out.println("RolQuery");
		}
		else if(roleId==5) {
			roleResponse.setUserDetailsResponse(getdmAdmin(roleId));
		}else if(roleId==0) {
			roleResponse.setUserDetailsResponse(gettoltalUsers());
		}
		return roleResponse;
	}
	public RoleResponse getSuperRoleCount(SuperAdminRequest superAdminRequest) {
		
		int roleId = superAdminRequest.getRoleId();
		System.out.println("RoleCountQuery");
		
		String faSQL= WMSConstant.faSQL+"= ? "; 
		String pmSQL=WMSConstant.pmSQL;
		String dmSQL=WMSConstant.dmSQL;
		String totalUsersSQL= WMSConstant.totalUsersSQL; 
		
		RoleResponse roleResponse = new RoleResponse();
		roleResponse.setFaCount(executeRoleQuery( faSQL,4));
		roleResponse.setPmCount(executeRoleQuery(pmSQL,3));
		roleResponse.setDmCount(executeRoleQuery(dmSQL,5));
		roleResponse.setTotalCount(executeRoleQuery(totalUsersSQL));
		if(roleId==3) {
			roleResponse.setUserDetailsResponse(getpmAdmin(roleId));
		}else if(roleId==4) {
			roleResponse.setUserDetailsResponse(getfaAdmin(roleId));
		}
		else if(roleId==5) {
			roleResponse.setUserDetailsResponse(getdmAdmin(roleId));
		}else if(roleId==0) {
			roleResponse.setUserDetailsResponse(gettoltalUsers());
		}
		return roleResponse;
	}

}
