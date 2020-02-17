package com.wms.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.controller.MasterDataController;
import com.wms.dao.WmsBaseDAO;
import com.wms.model.DivisionDetails;
import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorDetails;
import com.wms.model.MasterDataRequest;
import com.wms.model.allocation.AllocationDetails;
import com.wms.response.GenericResponse;

@Repository
public class MasterDataDAO extends WmsBaseDAO {
	private final static Logger LOGGER = LoggerFactory.getLogger(MasterDataController.class); 
	//Project Name
	public List<EmployeeDetails> getProjectDetails() {
		String projdetails = "SELECT distinct project_name from wms_sony_emp_details order by project_name asc";
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}  
	
	//new post
	public List<EmployeeDetails> getProjectDetailsStatus(MasterDataRequest masterdataRequest) {
		String projdetails = "SELECT distinct project_name from wms_sony_emp_details order by project_name asc";
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}  
	
	//PM Project Name
	public List<EmployeeDetails> getPMProjectDetails(String gid_manager) {
		String projdetails = "SELECT distinct project_name from wms_sony_emp_details where gid_manager ='"+gid_manager+"' order by project_name asc";
		System.out.println("PM projdetails"+projdetails);
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}    
	
	//post method
	public List<EmployeeDetails> getPMProjectDetailsStatus(MasterDataRequest masterdataRequest) {
		
		String gid_manager=masterdataRequest.getGid_manager();
		String projdetails = "SELECT distinct project_name from wms_sony_emp_details where gid_manager ='"+gid_manager+"' order by project_name asc";
		System.out.println("PM projdetails"+projdetails);
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
	
	//getEmpName for auto complete
	public List<EmpIDName> getEmpName(String empid) {
		String projdetails = "SELECT distinct gid,employee_name from wms_sony_emp_details where gid like '"+empid+"%' order by gid asc";
		RowMapper<EmpIDName> rowMapper = new BeanPropertyRowMapper<EmpIDName>(EmpIDName.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
	//new
	public List<EmpIDName> getEmployeeName(MasterDataRequest masterdataRequest) {
		String empid = masterdataRequest.getEmpid();
		String projdetails = "SELECT distinct gid,employee_name from wms_sony_emp_details where gid like '"+empid+"%' order by gid asc";
		RowMapper<EmpIDName> rowMapper = new BeanPropertyRowMapper<EmpIDName>(EmpIDName.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
/************************ Add Division Details *******************************************************/
	public GenericResponse divisiondetails(DivisionDetails divisionDetails) {
		
		addDivisionDetails(divisionDetails);
		
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}
	
	public void addDivisionDetails(DivisionDetails divisionDetails) {
		try {
			String sql = "INSERT INTO "
					+ "wms_department_details(division_id,division_name,division_location) "
					+ "VALUES (?,?,?)";
	        getJdbcTemplate().update(new PreparedStatementCreator() {
	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	                PreparedStatement statement = connection.prepareStatement(sql.toString(),
	                                Statement.RETURN_GENERATED_KEYS);
	                statement.setString(1, divisionDetails.getDivision_id());
	                statement.setString(2, divisionDetails.getDivision_name());  
	                statement.setString(3, divisionDetails.getDivision_location());
	                return statement;
		
		}
	    });
		}//try
		catch(Exception e) {
			LOGGER.error("addDivisionDetails Excception :"+ e);
		}
	        
    }
/******************************************************************************************************/	

/************************ Update Division Details *******************************************************/
	public GenericResponse updatedivdetails(DivisionDetails divisionDetails) {
		
		updateDivisionDetails(divisionDetails);
		
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}


	   public void updateDivisionDetails(DivisionDetails divisionDetails){
		      String SQL = "UPDATE wms_department_details SET division_id=?,division_name= ? ,division_location= ? where division_id = ? ";
		      try {
		    	  getJdbcTemplate().update(SQL,divisionDetails.getDivision_id(),divisionDetails.getDivision_name(),divisionDetails.getDivision_location());
		      }
		      catch(Exception e){
		    	  LOGGER.error("Updated DivisionDetails  Excception :"+ e);
		      }
		      
		      System.out.println("Updated DivisionDetails with ID = " + SQL );
		      return;
		   }
	
/******************************************************************************************************/	
	  
/************************ Delete Division Details *******************************************************/
		public GenericResponse deletedivdetails(DivisionDetails divisionDetails) {
			
			deleteDivisionDetails(divisionDetails);
			
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
		}


		   public void deleteDivisionDetails(DivisionDetails divisionDetails){
			      String SQL = "DELETE FROM wms_department_details WHERE division_id=?";
			      try {
			    	  getJdbcTemplate().update(SQL,divisionDetails.getDivision_id());
			      }
			      catch(Exception e){
			    	  LOGGER.error("Updated DivisionDetails  Excception :"+ e);
			      }
			      
			      System.out.println("Updated DivisionDetails with ID = " + SQL );
			      return;
			   }
		
/******************************************************************************************************/	

/****************************************Show Division Details DAO*************************************/		   
		   public List<DivisionDetails> getdivisiondetails(){
				String details = "SELECT * from wms_department_details order by insert_timestamp desc ";
				RowMapper<DivisionDetails> rowMapper = new BeanPropertyRowMapper<DivisionDetails>(DivisionDetails.class);
				return getJdbcTemplate().query(details,rowMapper);
			}	   
/******************************************************************************************************/		   

		   
		   
 /************************ Add Floor Details *******************************************************/
			public GenericResponse addfloorDetails(FloorDetails floorDetails) {
				
				addFloorDetails(floorDetails);
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
			
			public void addFloorDetails(FloorDetails floorDetails) {
				try {
					String sql = "INSERT INTO "
							+ "wms_floor_details_new(floor_id,floor_name,floor_capacity) "
							+ "VALUES (?,?,?)";
			        getJdbcTemplate().update(new PreparedStatementCreator() {
			        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			                PreparedStatement statement = connection.prepareStatement(sql.toString(),
			                                Statement.RETURN_GENERATED_KEYS);
			                statement.setString(1, floorDetails.getFloor_id());
			                statement.setString(2, floorDetails.getFloor_name());  
			                statement.setInt(3, floorDetails.getFloor_capacity());
			                return statement;
				
				}
			    });
				}//try
				catch(Exception e) {
					LOGGER.error("addFloorDetails Excception :"+ e);
				}
			        
		    }
/******************************************************************************************************/	
		   
/************************ Update Floor Details *******************************************************/
			public GenericResponse updatefloorDetails(FloorDetails floorDetails) {
				
				updateFloorDetails(floorDetails);
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
			
			public void updateFloorDetails(FloorDetails floorDetails) {
			      String SQL = "UPDATE wms_floor_details_new SET floor_id=?,floor_name= ? ,floor_capacity= ? where floor_id = ? ";
			      try {
			    	  getJdbcTemplate().update(SQL,floorDetails.getFloor_id(),floorDetails.getFloor_name(),floorDetails.getFloor_capacity());
			      }
			      catch(Exception e){
			    	  LOGGER.error("Updated FloorDetails  Excception :"+ e);
			      }
			      
			      System.out.println("Updated FloorDetails with ID = " + SQL );
			      return;
			   }

/******************************************************************************************************/	

			/************************ Delete Floor Details *******************************************************/
			public GenericResponse deletefloorDetails(FloorDetails floorDetails) {
				
				deleteFloorDetails(floorDetails);
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
			
			public void deleteFloorDetails(FloorDetails floorDetails) {
			      String SQL = "DELETE FROM wms_floor_details_new WHERE floor_id = ? ";
			      try {
			    	  getJdbcTemplate().update(SQL,floorDetails.getFloor_id());
			      }
			      catch(Exception e){
			    	  LOGGER.error("Updated FloorDetails  Excception :"+ e);
			      }
			      
			      System.out.println("Updated FloorDetails with ID = " + SQL );
			      return;
			   }

/******************************************************************************************************/	
		
/****************************************Show Division Details DAO*************************************/		   
			   public List<FloorDetails> getfloordetails(){
					String details = "SELECT * from wms_floor_details_new order by insert_timestamp desc ";
					RowMapper<FloorDetails> rowMapper = new BeanPropertyRowMapper<FloorDetails>(FloorDetails.class);
					return getJdbcTemplate().query(details,rowMapper);
				}	   
/******************************************************************************************************/		   
	
	   
}


