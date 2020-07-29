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
	private String IliolIOIo;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}	
	public List<SonyEmployeeDetailsREST> getSonyEmployeeDetails(){		 
		String lI0ooIlIO = SchedulerConstant.getSonyEmployeeDetails; //TODO move it to configuration
		RowMapper<SonyEmployeeDetailsREST> rowMapper = new BeanPropertyRowMapper<SonyEmployeeDetailsREST>(SonyEmployeeDetailsREST.class);
		return getJdbcTemplate().query(lI0ooIlIO,rowMapper);	 	
	}    
	public List<EmployeeDetails1> getProjectDetails() {
		String lO0ooIOIi = SchedulerConstant.projdetails;
		//System.out.println("projdetails"+projdetails);
		RowMapper<EmployeeDetails1> rowMapper = new BeanPropertyRowMapper<EmployeeDetails1>(EmployeeDetails1.class);
		return getJdbcTemplate().query(lO0ooIOIi, rowMapper);
	}
	public int[][] batchInsertSonyEmployee(List<SonyEmployeeDetailsREST> lIOlIIIIl, int batchSize) {
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
        		SchedulerConstant.batchInsertSonyEmployee,
                lIOlIIIIl,
                batchSize,
                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
                    public void setValues(PreparedStatement statement, SonyEmployeeDetailsREST OilloIII0) 
						throws SQLException {
                    	//System.out.println("Insert API to DB sql"+updateCounts.toString());
                        statement.setString(1, OilloIII0.getGid());  
                        //statement.setString(1, "REQALC-2019-000001");
                        statement.setString(2, OilloIII0.getEmployee_name());    
                        statement.setString(3, OilloIII0.getEmail()); 
                        statement.setString(4, OilloIII0.getDivision_name()); 
                        statement.setString(5, OilloIII0.getReporting_manager_gid());
                        statement.setString(6, OilloIII0.getReporting_manager_name());
                        statement.setString(7, OilloIII0.getReporting_manager_email());
                        statement.setString(8, OilloIII0.getProject_name());
                        statement.setString(9, OilloIII0.getProject_manager_gid());
                        statement.setString(10, OilloIII0.getProject_manager_name()); 
                        statement.setString(11, OilloIII0.getProject_manager_email()); 
                       // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }
	//floor_id, workstation_no, gid, employee_name, project_name, project_manager, division, remark, ext, gid_manager
	public int[][] UpateSonyEmployeeDetails(List<SonyEmployeeDetailsREST> IIiolIiII, int batchSize,String gid) {
		logger.debug("UpateSonyEmployee");
		//List<SonyEmployeeDetailsREST> fmRequest = getFARequestDetails(sonyEmployeeList.get(0).getGid());
		int[][] updateCounts=null;  
		//if(fmRequest!=null) {      
		//for (SonyEmployeeDetailsREST employeeSeatAssignDetails : fmRequest) {	
			updateCounts = getJdbcTemplate().batchUpdate(SchedulerConstant.UpateSonyEmployeeDetails+"'"+gid+"' ",   
					IIiolIiII,  
					batchSize,
		                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
		                    public void setValues(PreparedStatement lO0ooIOIi, SonyEmployeeDetailsREST OIOoiIoIO) 
								throws SQLException {
		                    	//ps.setString(1, "F");
		                        //ps.setString(2, "WS");
		                    	lO0ooIOIi.setString(1, OIOoiIoIO.getGid());
		                        lO0ooIOIi.setString(2, OIOoiIoIO.getEmployee_name());
		                        lO0ooIOIi.setString(3, OIOoiIoIO.getProject_name()); 
		                        lO0ooIOIi.setString(4, OIOoiIoIO.getProject_manager_name()); 
		                        lO0ooIOIi.setString(5, OIOoiIoIO.getDivision_name()); 
		                        lO0ooIOIi.setString(6, "");      
		                        lO0ooIOIi.setString(7, "update");       
		                        //ps.setString(8, argument.getProject_manager_gid());  
		                        lO0ooIOIi.setString(8, OIOoiIoIO.getProject_manager_gid());  
		                    }
		                });  
				
				       
				
				//}
		//}
		return updateCounts; 
    }    
	
	public int[][] insertSonyEmployeeDetails(List<SonyEmployeeDetailsREST> oIloOI1Ii, int batchSize) {
		System.out.println("Batch Sony Employee Process"+oIloOI1Ii.size()); 
        int[][] updateCounts = getJdbcTemplate().batchUpdate(
        		SchedulerConstant.insertSonyEmployeeDetails,
                oIloOI1Ii,
                batchSize,
                new ParameterizedPreparedStatementSetter<SonyEmployeeDetailsREST>() {
                    public void setValues(PreparedStatement iI0olI1Ii, SonyEmployeeDetailsREST OilloIII0) 
						throws SQLException {
                    	//System.out.println("Insert API to DB sql"+updateCounts.toString());
                        iI0olI1Ii.setString(1, OilloIII0.getGid());    
                        //statement.setString(1, "REQALC-2019-000001");
                        iI0olI1Ii.setString(2, OilloIII0.getEmployee_name());  
                        iI0olI1Ii.setString(3, OilloIII0.getProject_name());
                        iI0olI1Ii.setString(4, OilloIII0.getProject_manager_name()); 
                        iI0olI1Ii.setString(5, OilloIII0.getDivision_name()); 
                        iI0olI1Ii.setString(6, "123");
                        System.out.println("insert API to DB stmt"+iI0olI1Ii.toString());
                        iI0olI1Ii.setString(7, "NewEmployee insert");
                        iI0olI1Ii.setString(8, OilloIII0.getProject_manager_gid());
                        
                        //statement.setString(11, sheetDetail.getProject_manager_email()); 
                       // statement.setTimestamp(8, WMSDateUtil.getCurrentTimeStamp());
                    }
                });
        System.out.println("Batch Count"+ updateCounts);
        return updateCounts;
    }
	
	public void UpdateSonyEmployeeDetails(){ 
			
		String il1ooIlII = SchedulerConstant.UpdateSonyEmployeeDetails; 
		List<String> floorMapD=getJdbcTemplate().query(il1ooIlII, (ResultSet rs) -> {
			List<String> i01liIlIO = new ArrayList<>();
		    while (rs.next()) {
		    	String gid = rs.getString("gid"); 
		    	System.out.println("gid"+gid);
		    	i01liIlIO.add(gid);  
		    }
		    return i01liIlIO;
		});
     		
	}
	public void gidManager() {  // this is from table
	   String gidManager= SchedulerConstant.gidManager;
		
		List<EmployeeDetails1> gidList = getJdbcTemplate().query(gidManager, (ResultSet rs) -> {
			List<EmployeeDetails1> oOlolI0I0 = new ArrayList<>();
		    while (rs.next()) {   
		    	EmployeeDetails1 OilloIII0 = new EmployeeDetails1();
		    	String gid = rs.getString("gid");
		    	String employee_name = rs.getString("employee_name");
		    	String email = rs.getString("email");
		    	String division_name = rs.getString("division_name");
		    	String project_name = rs.getString("project_name");
		    	String project_manager_name = rs.getString("project_manager_name");
		    	String project_manager_gid = rs.getString("project_manager_gid");
		    	      
		    	OilloIII0.setGid(gid);
		    	OilloIII0.setEmployee_name(employee_name);
		    	OilloIII0.setDivision(division_name);
		    	OilloIII0.setProject_name(project_name);
		    	OilloIII0.setProject_manager(project_manager_name);
		    	OilloIII0.setGid_manager(project_manager_gid); 
		    	
		    	oOlolI0I0.add(OilloIII0);
		    }
		    if(oOlolI0I0.isEmpty()==false) {
		    	//batchUpdateGid(gidListManager, 5);
			    updateSonyEmployeeDetails(oOlolI0I0);
		    }
		    
		    return oOlolI0I0;
		});  
		   
		//return requestID; //1 //
	}
	
	
	public void updateSonyEmployeeDetails(List<EmployeeDetails1>  li0IiIIIo){  
		try {
		
		int updateCounts=0; //division = ?,
		String updateSonyEmployeeDetails = SchedulerConstant.updateSonyEmployeeDetails;
			for (EmployeeDetails1 o00I1III0 : li0IiIIIo) {
				updateCounts=getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement oi1I0IlIi = connection.prepareStatement(updateSonyEmployeeDetails.toString(),
								Statement.RETURN_GENERATED_KEYS);
						//statement.setString(1, seatAllocation.getFloor_id());
	                    //ps.setString(1, argument.getGid());
	                    //ps.setString(2, argument.getFloor_id());
	                    oi1I0IlIi.setString(1, o00I1III0.getEmployee_name());
	                    oi1I0IlIi.setString(2, o00I1III0.getProject_name());
	                    oi1I0IlIi.setString(3, o00I1III0.getProject_manager());	
	                    //ps.setString(4, argument.getDivision());
	                    oi1I0IlIi.setString(4, "");
	                    oi1I0IlIi.setString(5, "");				                        					                        
	                    oi1I0IlIi.setString(6, o00I1III0.getGid_manager()); 
	                    oi1I0IlIi.setString(7, o00I1III0.getGid());
	                    
						return oi1I0IlIi;   
					}
				});
				if (updateCounts==0) {
					try {
						String sqlInsert = SchedulerConstant.sqlInsert;
					        getJdbcTemplate().update(new PreparedStatementCreator() {
					        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					                PreparedStatement iolloIiI1 = connection.prepareStatement(sqlInsert.toString(),
					                                Statement.RETURN_GENERATED_KEYS);
					               //statement.setString(1, allocationRequest.getRequest_id());   
					               //statement.setString(1, seatAllocation.getFloor_id());     
				                    //ps.setString(1, argument.getGid());
				                    //ps.setString(2, argument.getFloor_id());
									iolloIiI1.setString(1, o00I1III0.getGid());
									iolloIiI1.setString(2, o00I1III0.getEmployee_name());
				                    iolloIiI1.setString(3, o00I1III0.getProject_name());
				                    iolloIiI1.setString(4, o00I1III0.getProject_manager());	
				                    iolloIiI1.setString(5, updateDivision(o00I1III0.getDivision()));
				                    iolloIiI1.setString(6, o00I1III0.getRemark());
				                    iolloIiI1.setString(7, o00I1III0.getExt());	  			                        					                        
				                    iolloIiI1.setString(8, o00I1III0.getGid_manager());
				                    
					                return iolloIiI1;  
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
	
	public String updateDivision(String i0iI0IiI1) {
		String llll1IoIi = "";
		if (i0iI0IiI1.equalsIgnoreCase("Information Security")) {
			llll1IoIi = "Infosec";
		} else if (i0iI0IiI1.equalsIgnoreCase("Software Architecture Division")) {
			llll1IoIi = "SARD";
		} else if (i0iI0IiI1.equalsIgnoreCase("Information System Bangalore")) {  
			llll1IoIi = "ISBL";
		} else if (i0iI0IiI1.equalsIgnoreCase("Human Resource Department")
				|| i0iI0IiI1.equalsIgnoreCase("Planning and Control")
				|| i0iI0IiI1.equalsIgnoreCase("Sony India Software Centre Pvt. Ltd")
				|| i0iI0IiI1.equalsIgnoreCase("HRES Product Delivery")
				|| i0iI0IiI1.equalsIgnoreCase("Enterprise Quality and Risk Management")
				|| i0iI0IiI1.equalsIgnoreCase("HRES Product Delivery - AP Cell")) {
			llll1IoIi = "P&C";
		} else {
			llll1IoIi = i0iI0IiI1;
		}

		return llll1IoIi;

	}

}
