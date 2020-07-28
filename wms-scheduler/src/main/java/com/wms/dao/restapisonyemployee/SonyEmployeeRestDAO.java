package com.wms.dao.restapisonyemployee; 

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.SchedulerConstant;
import com.wms.consumingrest.SonyEmployeeDetailsREST; 

@Repository
public class SonyEmployeeRestDAO extends JdbcDaoSupport {
	
	@Autowired 
	DataSource dataSource;
	
	@Value("${wms.bulkupload.allocationjobs.count}")  
	private int maxJob;
	
	@Value("${spring.mail.username}")    
	private String workspaceManagementMail;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}	
	public List<SonyEmployeeDetailsREST> getSonyEmployeeDetails(){		 
		String getSonyEmployeeDetails = SchedulerConstant.getSonyEmployeeDetails; //TODO move it to configuration
		RowMapper<SonyEmployeeDetailsREST> rowMapper = new BeanPropertyRowMapper<SonyEmployeeDetailsREST>(SonyEmployeeDetailsREST.class);
		return getJdbcTemplate().query(getSonyEmployeeDetails,rowMapper);	 	
	}    
	public List<EmployeeDetails1> getProjectDetails() {
		String projdetails = SchedulerConstant.projdetails;
		//System.out.println("projdetails"+projdetails);
		RowMapper<EmployeeDetails1> rowMapper = new BeanPropertyRowMapper<EmployeeDetails1>(EmployeeDetails1.class);
		return getJdbcTemplate().query(projdetails, rowMapper);
	}
	public int[][] batchInsertSonyEmployee(List<SonyEmployeeDetailsREST> sonyEmployeeDetailsList, int batchSize) {
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
        		SchedulerConstant.batchInsertSonyEmployee,
                sonyEmployeeDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
                    public void setValues(PreparedStatement statement, SonyEmployeeDetailsREST sheetDetail) 
						throws SQLException {
                    	//System.out.println("Insert API to DB sql"+updateCounts.toString());
                        statement.setString(1, sheetDetail.getGid());  
                        //statement.setString(1, "REQALC-2019-000001");
                        statement.setString(2, sheetDetail.getEmployee_name());    
                        statement.setString(3, sheetDetail.getEmail()); 
                        statement.setString(4, sheetDetail.getDivision_name()); 
                        statement.setString(5, sheetDetail.getReporting_manager_gid());
                        statement.setString(6, sheetDetail.getReporting_manager_name());
                        statement.setString(7, sheetDetail.getReporting_manager_email());
                        statement.setString(8, sheetDetail.getProject_name());
                        statement.setString(9, sheetDetail.getProject_manager_gid());
                        statement.setString(10, sheetDetail.getProject_manager_name()); 
                        statement.setString(11, sheetDetail.getProject_manager_email()); 
                       // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }
	//floor_id, workstation_no, gid, employee_name, project_name, project_manager, division, remark, ext, gid_manager
	public int[][] UpateSonyEmployeeDetails(List<SonyEmployeeDetailsREST> sonyEmployeeList, int batchSize,String gid) {
		logger.debug("UpateSonyEmployee");
		//List<SonyEmployeeDetailsREST> fmRequest = getFARequestDetails(sonyEmployeeList.get(0).getGid());
		int[][] updateCounts=null;  
		//if(fmRequest!=null) {      
		//for (SonyEmployeeDetailsREST employeeSeatAssignDetails : fmRequest) {	
			updateCounts = getJdbcTemplate().batchUpdate(SchedulerConstant.UpateSonyEmployeeDetails+"'"+gid+"' ",   
					sonyEmployeeList,  
					batchSize,
		                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
		                    public void setValues(PreparedStatement ps, SonyEmployeeDetailsREST argument) 
								throws SQLException {
		                    	//ps.setString(1, "F");
		                        //ps.setString(2, "WS");
		                    	ps.setString(1, argument.getGid());
		                        ps.setString(2, argument.getEmployee_name());
		                        ps.setString(3, argument.getProject_name()); 
		                        ps.setString(4, argument.getProject_manager_name()); 
		                        ps.setString(5, argument.getDivision_name()); 
		                        ps.setString(6, "");      
		                        ps.setString(7, "update");       
		                        //ps.setString(8, argument.getProject_manager_gid());  
		                        ps.setString(8, argument.getProject_manager_gid());  
		                    }
		                });  
				
				       
				
				//}
		//}
		return updateCounts; 
    }    
	
	public int[][] insertSonyEmployeeDetails(List<SonyEmployeeDetailsREST> sonyEmployeeDetailsList, int batchSize) {
		System.out.println("Batch Sony Employee Process"+sonyEmployeeDetailsList.size()); 
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
        		SchedulerConstant.insertSonyEmployeeDetails,
                sonyEmployeeDetailsList,
                batchSize,
                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
                    public void setValues(PreparedStatement statement, SonyEmployeeDetailsREST sheetDetail) 
						throws SQLException {
                    	//System.out.println("Insert API to DB sql"+updateCounts.toString());
                        statement.setString(1, sheetDetail.getGid());    
                        //statement.setString(1, "REQALC-2019-000001");
                        statement.setString(2, sheetDetail.getEmployee_name());  
                        statement.setString(3, sheetDetail.getProject_name());
                        statement.setString(4, sheetDetail.getProject_manager_name()); 
                        statement.setString(5, sheetDetail.getDivision_name()); 
                        statement.setString(6, "123");
                        System.out.println("insert API to DB stmt"+statement.toString());
                        statement.setString(7, "NewEmployee insert");
                        statement.setString(8, sheetDetail.getProject_manager_gid());
                        
                        //statement.setString(11, sheetDetail.getProject_manager_email()); 
                       // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }
	
	public void UpdateSonyEmployeeDetails(){ 
			
		String UpdateSonyEmployeeDetails = SchedulerConstant.UpdateSonyEmployeeDetails; 
		List<String> floorMapD=getJdbcTemplate().query(UpdateSonyEmployeeDetails, (ResultSet rs) -> {
			List<String> gidList = new ArrayList<>();
		    while (rs.next()) {
		    	String gid = rs.getString("gid"); 
		    	System.out.println("gid"+gid);
		    	gidList.add(gid);  
		    }
		    return gidList;
		});
     		
	}
	public void gidManager() {  // this is from table
		//String SQL= "SELECT gid, employee_name,email,division_name,project_name,project_manager_name,project_manager_gid FROM `wms_sony_data_rest` WHERE employee_name IN( select `project_manager` FROM wms_sony_data)";
	   String gidManager= SchedulerConstant.gidManager;
		
		List<EmployeeDetails1> gidList = getJdbcTemplate().query(gidManager, (ResultSet rs) -> {
			List<EmployeeDetails1> gidListManager = new ArrayList<>();
		    while (rs.next()) {   
		    	EmployeeDetails1 employeeDetails = new EmployeeDetails1();
		    	// `floor_id`, `workstation_no`, `gid`, `employee_name`, `project_name`, `project_manager`, `division`, `remark`, `ext`, `gid_manager`
		    	String gid = rs.getString("gid");
		    	String employee_name = rs.getString("employee_name");
		    	String email = rs.getString("email");
		    	String division_name = rs.getString("division_name");
		    	String project_name = rs.getString("project_name");
		    	String project_manager_name = rs.getString("project_manager_name");
		    	String project_manager_gid = rs.getString("project_manager_gid");
		    	      
		    	employeeDetails.setGid(gid);
		    	employeeDetails.setEmployee_name(employee_name);
		    	employeeDetails.setDivision(division_name);
		    	employeeDetails.setProject_name(project_name);
		    	employeeDetails.setProject_manager(project_manager_name);
		    	employeeDetails.setGid_manager(project_manager_gid); 
		    	
		    	gidListManager.add(employeeDetails);
		    }
		    if(gidListManager.isEmpty()==false) {
		    	//batchUpdateGid(gidListManager, 5);
			    updateSonyEmployeeDetails(gidListManager);
		    }
		    
		    return gidListManager;
		});  
		   
		//return requestID; //1 //
	}
	
	
	public void updateSonyEmployeeDetails(List<EmployeeDetails1>  employeeDetailsList){  
		try {
		
		int updateCounts=0; //division = ?,
		String updateSonyEmployeeDetails = SchedulerConstant.updateSonyEmployeeDetails;
			for (EmployeeDetails1 empDetails : employeeDetailsList) {
				updateCounts=getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement ps = connection.prepareStatement(updateSonyEmployeeDetails.toString(),
								Statement.RETURN_GENERATED_KEYS);
						//statement.setString(1, seatAllocation.getFloor_id());
	                    //ps.setString(1, argument.getGid());
	                    //ps.setString(2, argument.getFloor_id());
	                    ps.setString(1, empDetails.getEmployee_name());
	                    ps.setString(2, empDetails.getProject_name());
	                    ps.setString(3, empDetails.getProject_manager());	
	                    //ps.setString(4, argument.getDivision());
	                    ps.setString(4, "");
	                    ps.setString(5, "");				                        					                        
	                    ps.setString(6, empDetails.getGid_manager()); 
	                    ps.setString(7, empDetails.getGid());
	                    
						return ps;   
					}
				});
				System.out.println("Update updateCounts"+updateCounts);   
				if (updateCounts==0) {
					try {
						String sqlInsert = SchedulerConstant.sqlInsert;
					        getJdbcTemplate().update(new PreparedStatementCreator() {
					        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					                PreparedStatement ps = connection.prepareStatement(sqlInsert.toString(),
					                                Statement.RETURN_GENERATED_KEYS);
					               //statement.setString(1, allocationRequest.getRequest_id());   
					               //statement.setString(1, seatAllocation.getFloor_id());     
				                    //ps.setString(1, argument.getGid());
				                    //ps.setString(2, argument.getFloor_id());
									ps.setString(1, empDetails.getGid());
									ps.setString(2, empDetails.getEmployee_name());
				                    ps.setString(3, empDetails.getProject_name());
				                    ps.setString(4, empDetails.getProject_manager());	
				                    ps.setString(5, updateDivision(empDetails.getDivision()));
				                    ps.setString(6, empDetails.getRemark());
				                    ps.setString(7, empDetails.getExt());	  			                        					                        
				                    ps.setString(8, empDetails.getGid_manager());
				                    
					                return ps;  
					        }
					        });
						}
						catch(Exception e) {
						    //LOGGER.error(" Exception :"+ e);
							System.out.println("insert sony employee details Exception :"+ e);
						}
				}
			}
		}
		catch(Exception e) {
			 //LOGGER.error(" Exception :"+ e);
			 System.out.println("UPDATE wms_sony_emp_details Exception :"+ e);
		}
		//return null;  
	}
	
	public String updateDivision(String apiDivision) {
		String division = "";
		if (apiDivision.equalsIgnoreCase("Information Security")) {
			division = "Infosec";
		} else if (apiDivision.equalsIgnoreCase("Software Architecture Division")) {
			division = "SARD";
		} else if (apiDivision.equalsIgnoreCase("Information System Bangalore")) {
			division = "ISBL";
		} else if (apiDivision.equalsIgnoreCase("Human Resource Department")
				|| apiDivision.equalsIgnoreCase("Planning and Control")
				|| apiDivision.equalsIgnoreCase("Sony India Software Centre Pvt. Ltd")
				|| apiDivision.equalsIgnoreCase("HRES Product Delivery")
				|| apiDivision.equalsIgnoreCase("Enterprise Quality and Risk Management")
				|| apiDivision.equalsIgnoreCase("HRES Product Delivery - AP Cell")) {
			division = "P&C";
		} else {
			division = apiDivision;
		}

		return division;

	}

}
