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
import com.wms.model.ProjectDetails;
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
	public GenericResponse updatedivdetails(DivisionDetails divisionDetails,String old_divisionid) {
		
		updateDivisionDetails(divisionDetails,old_divisionid);
		
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}


	   public void updateDivisionDetails(DivisionDetails divisionDetails,String old_divisionid){
		      String SQL = "UPDATE wms_department_details SET division_id=?,division_name= ? ,division_location= ? where division_id = '"+old_divisionid+"' ";
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
			    	  LOGGER.error("Deleted DivisionDetails  Excception :"+ e);
			      }
			      
			      System.out.println("Deleted DivisionDetails with ID = " + SQL );
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

/****************************************Show Update Division Details DAO*************************************/		   
		   public List<DivisionDetails> getupdatedivisiondetails(DivisionDetails divisionDetails){
			    String division_id = divisionDetails.getDivision_id();
				String details = "SELECT * from wms_department_details where division_id = '"+division_id+"'  order by insert_timestamp desc ";
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
			public GenericResponse updatefloorDetails(FloorDetails floorDetails,String old_floorid) {
				
				updateFloorDetails(floorDetails,old_floorid);
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
			
			public void updateFloorDetails(FloorDetails floorDetails,String old_floorid) {
			      String SQL = "UPDATE wms_floor_details_new SET floor_id=?,floor_name= ? ,floor_capacity= ? where floor_id = '"+old_floorid+"' ";
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
			    	  LOGGER.error("Deleted FloorDetails  Excception :"+ e);
			      }
			      
			      System.out.println("Deleted FloorDetails with ID = " + SQL );
			      return;
			   }

/******************************************************************************************************/	
		
/****************************************Show Floor Details DAO*************************************/		   
			   public List<FloorDetails> getfloordetails(){
					String details = "SELECT * from wms_floor_details_new order by insert_timestamp desc ";
					RowMapper<FloorDetails> rowMapper = new BeanPropertyRowMapper<FloorDetails>(FloorDetails.class);
					return getJdbcTemplate().query(details,rowMapper);
				}	   
/******************************************************************************************************/		   

/****************************************Show Update Floor Details DAO*************************************/		   
			   public List<FloorDetails> getupdatefloordetails(FloorDetails floorDetails){
				   String floor_id = floorDetails.getFloor_id();
					String details = "SELECT * from wms_floor_details_new where floor_id='"+floor_id+"' order by insert_timestamp desc ";
					RowMapper<FloorDetails> rowMapper = new BeanPropertyRowMapper<FloorDetails>(FloorDetails.class);
					return getJdbcTemplate().query(details,rowMapper);
				}	   
/******************************************************************************************************/		   
			   
			   
/************************ Add Project Details *******************************************************/
				public GenericResponse addprojectDetails(ProjectDetails projectDetails) {
					
					addProjectDetails(projectDetails);
					
					GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
					return genericResponse;
				}
				
				public void addProjectDetails(ProjectDetails projectDetails) {
					try {
						String sql = "INSERT INTO "
								+ "wms_project_details(division_id,project_name,project_manager) "
								+ "VALUES (?,?,?)";
				        getJdbcTemplate().update(new PreparedStatementCreator() {
				        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				                PreparedStatement statement = connection.prepareStatement(sql.toString(),
				                                Statement.RETURN_GENERATED_KEYS);
				                statement.setString(1, projectDetails.getDivision_id());
				                statement.setString(2, projectDetails.getProject_name());  
				                statement.setString(3, projectDetails.getProject_manager());
				                return statement;
					
					}
				    });
					}//try
					catch(Exception e) {
						LOGGER.error("addFloorDetails Excception :"+ e);
					}
				        
			    }
/******************************************************************************************************/	
			   
/************************ Update Project Details *******************************************************/
				public GenericResponse updateprojectDetails(ProjectDetails projectDetails,String old_projectname) {
					
					updateProjectDetails(projectDetails,old_projectname);
					
					GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
					return genericResponse;
				}
				
				public void updateProjectDetails(ProjectDetails projectDetails,String old_projectname) {
				      String SQL = "UPDATE wms_project_details SET division_id=?,project_name= ? ,project_manager= ? where project_name = '"+old_projectname+"' ";
				      try {
				    	  getJdbcTemplate().update(SQL,projectDetails.getDivision_id(),projectDetails.getProject_name(),projectDetails.getProject_manager());
				      }
				      catch(Exception e){
				    	  LOGGER.error("Updated ProjectDetails  Excception :"+ e);
				      }
				      
				      System.out.println("Updated ProjectDetails with ID = " + SQL );
				      return;
				   }

/******************************************************************************************************/	

/************************ Delete Project Details *******************************************************/
				public GenericResponse deleteprojectDetails(ProjectDetails projectDetails) {
					
					deleteProjectDetails(projectDetails);
					
					GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
					return genericResponse;
				}
				
				public void deleteProjectDetails(ProjectDetails projectDetails) {
				      String SQL = "DELETE FROM wms_project_details  WHERE project_name = ? ";
				      try {
				    	  getJdbcTemplate().update(SQL,projectDetails.getProject_name());
				      }
				      catch(Exception e){
				    	  LOGGER.error("Deleted ProjectDetails  Excception :"+ e);
				      }
				      
				      System.out.println("Deleted ProjectDetails with ID = " + SQL );
				      return;
				   }

/******************************************************************************************************/	

/****************************************Show Project Details DAO*************************************/		   
				   public List<ProjectDetails> getprojectdetails(){
						String details = "SELECT * from wms_project_details order by insert_timestamp desc ";
						RowMapper<ProjectDetails> rowMapper = new BeanPropertyRowMapper<ProjectDetails>(ProjectDetails.class);
						return getJdbcTemplate().query(details,rowMapper);
					}	   
/******************************************************************************************************/		   

/****************************************Show Update Project Details DAO*************************************/		   
				   public List<ProjectDetails> getupdateprojectdetails(ProjectDetails projectDetails){
					    String project_name=  projectDetails.getProject_name();
						String details = "SELECT * from wms_project_details project_name='"+project_name+"' order by insert_timestamp desc ";
						RowMapper<ProjectDetails> rowMapper = new BeanPropertyRowMapper<ProjectDetails>(ProjectDetails.class);
						return getJdbcTemplate().query(details,rowMapper);
					}	   
/******************************************************************************************************/		   
				
}


