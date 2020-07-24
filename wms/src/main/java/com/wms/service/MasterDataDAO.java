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
		String floorStatus_projectdetails = WMSConstant.floorStatus_projectdetails;
		RowMapper<EmployeeDetails> rowMapper = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
		return getJdbcTemplate().query(floorStatus_projectdetails, rowMapper);
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
			String fa_addDivisionDetails = WMSConstant.fa_addDivisionDetails;
	        getJdbcTemplate().update(new PreparedStatementCreator() {
	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	                PreparedStatement statement = connection.prepareStatement(fa_addDivisionDetails.toString(),
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
		      String fa_updateDivisionDetails = WMSConstant.fa_updateDivisionDetails+"'"+old_divisionid+"'";
		      try {
		    	  getJdbcTemplate().update(fa_updateDivisionDetails,divisionDetails.getDivision_id(),divisionDetails.getDivision_name(),divisionDetails.getDivision_location());
		      }
		      catch(Exception e){
		    	  LOGGER.error("Updated DivisionDetails  Excception :"+ e);
		      }		      		  
		   }
	
/******************************************************************************************************/	
	  
/************************ Delete Division Details *******************************************************/
		public GenericResponse deletedivdetails(DivisionDetails divisionDetails) {
			
			deleteDivisionDetails(divisionDetails);
			
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
		}


		   public void deleteDivisionDetails(DivisionDetails divisionDetails){
			      String fa_deleteDivisionDetails =WMSConstant.fa_deleteDivisionDetails;
			      try {
			    	  getJdbcTemplate().update(fa_deleteDivisionDetails,divisionDetails.getDivision_id());
			      }
			      catch(Exception e){
			    	  LOGGER.error("Deleted DivisionDetails  Excception :"+ e);
			      }
			   }
		
/******************************************************************************************************/	

/****************************************Show Division Details DAO*************************************/		   
		   public List<DivisionDetails> getdivisiondetails(){
				String showDivDetails =WMSConstant.showDivDetails;
				RowMapper<DivisionDetails> rowMapper = new BeanPropertyRowMapper<DivisionDetails>(DivisionDetails.class);
				return getJdbcTemplate().query(showDivDetails,rowMapper);
			}	   
/******************************************************************************************************/		   

/****************************************Show Update Division Details DAO*************************************/		   
		   public List<DivisionDetails> getupdatedivisiondetails(DivisionDetails divisionDetails){
			    String division_id = divisionDetails.getDivision_id();
				String fa_getupdatedivisiondetails =WMSConstant.fa_getupdatedivisiondetails+ "'"+division_id+"'  order by insert_timestamp desc ";
				RowMapper<DivisionDetails> rowMapper = new BeanPropertyRowMapper<DivisionDetails>(DivisionDetails.class);
				return getJdbcTemplate().query(fa_getupdatedivisiondetails,rowMapper);
			}	   
/******************************************************************************************************/		   

/****************************************Show Only Division List Details DAO*************************************/		   
		   public List<DivisionDetails> getDivisionlist(DivisionDetails divisionDetails){
				String pm_getDivisionlist = WMSConstant.pm_getDivisionlist;
				RowMapper<DivisionDetails> rowMapper = new BeanPropertyRowMapper<DivisionDetails>(DivisionDetails.class);
				return getJdbcTemplate().query(pm_getDivisionlist,rowMapper);
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
					String fa_addFloorDetails = WMSConstant.fa_addFloorDetails;
			        getJdbcTemplate().update(new PreparedStatementCreator() {
			        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			                PreparedStatement statement = connection.prepareStatement(fa_addFloorDetails.toString(),
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
			      String fa_updateFloorDetails =WMSConstant.fa_updateFloorDetails+ "'"+old_floorid+"' ";
			      try {
			    	  getJdbcTemplate().update(fa_updateFloorDetails,floorDetails.getFloor_id(),floorDetails.getFloor_name(),floorDetails.getFloor_capacity());
			      }
			      catch(Exception e){
			    	  LOGGER.error("Updated FloorDetails  Excception :"+ e);
			      }
			   }

/******************************************************************************************************/	

/************************ Delete Floor Details *******************************************************/
			public GenericResponse deletefloorDetails(FloorDetails floorDetails) {
				
				deleteFloorDetails(floorDetails);
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
			
			public void deleteFloorDetails(FloorDetails floorDetails) {
			      String fa_deleteFloorDetails = WMSConstant.fa_deleteFloorDetails;
			      try {
			    	  getJdbcTemplate().update(fa_deleteFloorDetails,floorDetails.getFloor_id());
			      }
			      catch(Exception e){
			    	  LOGGER.error("Deleted FloorDetails  Excception :"+ e);
			      }
			   }

/******************************************************************************************************/	
		
/****************************************Show Floor Details DAO*************************************/		   
			   public List<FloorDetails> getfloordetails(){
					String fa_getfloordetails = WMSConstant.fa_getfloordetails;
					RowMapper<FloorDetails> rowMapper = new BeanPropertyRowMapper<FloorDetails>(FloorDetails.class);
					return getJdbcTemplate().query(fa_getfloordetails,rowMapper);
				}	   
/******************************************************************************************************/		   

/****************************************Show Update Floor Details DAO*************************************/		   
			   public List<FloorDetails> getupdatefloordetails(FloorDetails floorDetails){
				   String floor_id = floorDetails.getFloor_id();
					String fa_getupdatefloordetails =WMSConstant.fa_getupdatefloordetails+ "'"+floor_id+"' order by insert_timestamp desc ";
					RowMapper<FloorDetails> rowMapper = new BeanPropertyRowMapper<FloorDetails>(FloorDetails.class);
					return getJdbcTemplate().query(fa_getupdatefloordetails,rowMapper);
				}	   
/******************************************************************************************************/		   

/****************************************Show Only Floor Details DAO*************************************/		   
			   public List<FloorDetails> getFloorList(FloorDetails floorDetails){
					String floorStatus_selectfloor = WMSConstant.floorStatus_selectfloor;
					RowMapper<FloorDetails> rowMapper = new BeanPropertyRowMapper<FloorDetails>(FloorDetails.class);
					return getJdbcTemplate().query(floorStatus_selectfloor,rowMapper);
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
						String fa_addProjectDetails = WMSConstant.fa_addProjectDetails;
				        getJdbcTemplate().update(new PreparedStatementCreator() {
				        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				                PreparedStatement statement = connection.prepareStatement(fa_addProjectDetails.toString(),
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
				      String fa_updateProjectDetails = WMSConstant.fa_updateProjectDetails+"'"+old_projectname+"' ";
				      try {
				    	  getJdbcTemplate().update(fa_updateProjectDetails,projectDetails.getDivision_id(),projectDetails.getProject_name(),projectDetails.getProject_manager());
				      }
				      catch(Exception e){
				    	  LOGGER.error("Updated ProjectDetails  Excception :"+ e);
				      }
				   }

/******************************************************************************************************/	

/************************ Delete Project Details *******************************************************/
				public GenericResponse deleteprojectDetails(ProjectDetails projectDetails) {
					
					deleteProjectDetails(projectDetails);
					
					GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
					return genericResponse;
				}
				
				public void deleteProjectDetails(ProjectDetails projectDetails) {
				      String fa_deleteProjectDetails = WMSConstant.fa_deleteProjectDetails;
				      try {
				    	  getJdbcTemplate().update(fa_deleteProjectDetails,projectDetails.getProject_name());
				      }
				      catch(Exception e){
				    	  LOGGER.error("Deleted ProjectDetails  Excception :"+ e);
				      }
				   }

/******************************************************************************************************/	

/****************************************Show Project Details DAO*************************************/		   
				   public List<ProjectDetails> getprojectdetails(){
						String fa_getprojectdetails =WMSConstant.fa_getprojectdetails;
						RowMapper<ProjectDetails> rowMapper = new BeanPropertyRowMapper<ProjectDetails>(ProjectDetails.class);
						return getJdbcTemplate().query(fa_getprojectdetails,rowMapper);
					}	   
/******************************************************************************************************/		   

/****************************************Show Update Project Details DAO*************************************/		   
				   public List<ProjectDetails> getupdateprojectdetails(ProjectDetails projectDetails){
					    String project_name=  projectDetails.getProject_name();
						String fa_getupdateprojectdetails = WMSConstant.fa_getprojectdetails+"'"+project_name+"' order by insert_timestamp desc";
						RowMapper<ProjectDetails> rowMapper = new BeanPropertyRowMapper<ProjectDetails>(ProjectDetails.class);
						return getJdbcTemplate().query(fa_getupdateprojectdetails,rowMapper);
					}	   
/******************************************************************************************************/		   
				
}


