package com.wms.dao.allocation;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.dialect.identity.GetGeneratedKeysDelegate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ParameterizedPreparedStatementSetter;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.controller.AllocationController;
import com.wms.dao.WmsBaseDAO;
import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.Coordinates;
import com.wms.model.EmailModel;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorMapDetails;
import com.wms.model.ProjectManagerRequest;
import com.wms.model.RunningNumberRequest_id;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.BulkAllocation;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.model.allocation.SeatAllocation;
import com.wms.model.floormap.FloorDetails;
import com.wms.model.floormap.FloorMapInfo;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmpBulkAssign;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.request.floormap.FloormapRequest;
import com.wms.response.GenericResponse;
import com.wms.util.WMSDateUtil;
import com.wms.util.WMSRNumberUtil;

@Repository
public class AllocationDAO extends WmsBaseDAO {
	private final static Logger LOGGER = LoggerFactory.getLogger(AllocationController.class);
	@Autowired
	private FloorMapDAO floorMapDAO;
	
	@Value("${wms.server.fileupload.path:D://Bulkupload//}")
    private String fileUploadPath;
	
	@Value("${wms.batchupdate.size}")
	private int batchupdateSize;
	
	@Value("${spring.mail.username}")
	private String workspaceManagementMail;  
	
	public List<AllocationDetails> getAllocationList(String gid) {
		String iioIoliI0 = WMSConstant.getAllocationList+"'"+gid+"' order by insert_timestamp desc ";
		RowMapper<AllocationDetails> iio1IIiI1 = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(iioIoliI0,iio1IIiI1);
	}
	
	
	
	
	public List<AllocationDetails> getAllocationDetailsStatus(AllocationRequest allocationRequest) {
		
		String O11oIIoIi=allocationRequest.getGid();
		String O0oI1lIIl =WMSConstant.getAllocationDetailsStatus+ "'"+O11oIIoIi+"' order by insert_timestamp desc ";
		RowMapper<AllocationDetails> iio1IIiI1 = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(O0oI1lIIl,iio1IIiI1);
	}
	
	public List<AllocationDetails> getAllocationApprovalList(){
		
		String o0oI1liI0 = WMSConstant.unallocated;
		RowMapper<AllocationDetails> iio1IIiI1 = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(o0oI1liI0,iio1IIiI1);
	}
	
	public List<AllocationDetails> getAllocationApprovalDetailsStatus(AllocationRequest allocationRequest) {
		
		int id=allocationRequest.getId();
		String l1IIolIIl = WMSConstant.fa_all_request;
		RowMapper<AllocationDetails> iio1IIiI1 = new BeanPropertyRowMapper<AllocationDetails>(AllocationDetails.class);
		return getJdbcTemplate().query(l1IIolIIl,iio1IIiI1);
	}
	
	
	public  List<RunningNumberRequest_id> getRuuningNumberReqidList(){
		String o1II1lOIo = WMSConstant.getRuuningNumberReqidList;

		RowMapper<RunningNumberRequest_id> iio1IIiI1 = new BeanPropertyRowMapper<RunningNumberRequest_id>(RunningNumberRequest_id.class);
		return getJdbcTemplate().query(o1II1lOIo,iio1IIiI1);
	}
	//PM Request Response Details
	public List<PMReqRespDetails> pmReqAllDetails(String requestid){ 
		String o0oI1liI0 =  WMSConstant.unallocated+requestid+"'";  
		RowMapper<PMReqRespDetails> iio1IIiI1 = new BeanPropertyRowMapper<PMReqRespDetails>(PMReqRespDetails.class);

		String IOil0lOI1 = WMSConstant.floorIdSQL+"'"+requestid+"'" ;
			
		List<String> lOol1l0I0 = getJdbcTemplate().query(IOil0lOI1, (ResultSet rs) -> {
			List<String> iO1lOllIo = new ArrayList<>();
		    while (rs.next()) {
		    	String floorId = rs.getString("floor_id");
		    	iO1lOllIo.add(floorId);
		    }
		    return iO1lOllIo;
		});
		
		List<PMReqRespDetails> iI1l1liIo =getJdbcTemplate().query(o0oI1liI0,iio1IIiI1);
		if(iI1l1liIo!=null && iI1l1liIo.size()>0 && lOol1l0I0!=null && lOol1l0I0.size()>0) {
			iI1l1liIo.get(0).setFloorid(lOol1l0I0.get(0));
		}
		return iI1l1liIo; 
		
	}
	
	public List<PMReqRespDetails> getPMRequestDetails(ProjectManagerRequest projectManagerRequest){ 
		String OOolOl0I1 = projectManagerRequest.getRequest_id();
		String ilil1l1II =  WMSConstant.unallocatedPMRequestDetails+"'"+OOolOl0I1+"'";  
		RowMapper<PMReqRespDetails> iio1IIiI1 = new BeanPropertyRowMapper<PMReqRespDetails>(PMReqRespDetails.class);
		
		String lIOlIIIIl = WMSConstant.floorIdSQLPMRequestDetails+"'"+OOolOl0I1+"'" ; 
		List<String> lOol1l0I0 = getJdbcTemplate().query(lIOlIIIIl, (ResultSet rs) -> {
			List<String> iO1lOllIo = new ArrayList<>();
		    while (rs.next()) {
		    	String IIOloloI0 = rs.getString("floor_id");
		    	iO1lOllIo.add(IIOloloI0);
		    }
		    return iO1lOllIo;
		});
		
		List<PMReqRespDetails> iI1l1liIo =getJdbcTemplate().query(ilil1l1II,iio1IIiI1);
		if(iI1l1liIo!=null && iI1l1liIo.size()>0 && lOol1l0I0!=null && lOol1l0I0.size()>0) {
			iI1l1liIo.get(0).setFloorid(lOol1l0I0.get(0));
		}
		return iI1l1liIo; 
		
	}

	private String executeQuery(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		int IiIl0IIIl = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(IiIl0IIIl);
	}
	
	private List<Map<String, Object>> Io0l1lIIl(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		List<Map<String, Object>> loolil1IO = getJdbcTemplate().queryForList(sql);
		return loolil1IO;
	}
	

	
	public static String getListByCommaSeparated(String[] employees) {
		StringBuilder strB = new StringBuilder();
		for(int i=0;i<employees.length;i++) {
			strB.append("'");
			strB.append(employees[i]);
			strB.append("'");
			if(i!=employees.length-1)
				strB.append(",");
			
		}

		return strB.toString();
	}

	public GenericResponse setPMRequest(AllocationRequest allocationRequest,EmailModel emailModel) {

		allocationRequest.setRequest_id(getRequestID());
		allocationRequest.setGid(allocationRequest.getGid());
		addPMRequest(allocationRequest);
		addFMRequest(allocationRequest);
		addHistorydetails(allocationRequest);
		emailModel.setRequestId(allocationRequest.getRequest_id());
		addEmailRequest(emailModel);  
		
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}


	public GenericResponse updatePMRequestTble(AllocationRequest allocationRequest) {

		updatePMRequestReject(allocationRequest);
		updateFARequestReject(allocationRequest);
		GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		return genericResponse;
	}
	
/// De Allocation Seats
	public GenericResponse setDeallocationSeats(AllocationRequest allocationRequest) {

	updateDeallocationSeat(allocationRequest);
	updateUnAssignedSeat(allocationRequest);
	updateFAallocatedStatus(allocationRequest);
	updatePMallocatedStatus(allocationRequest);
	floorMapDAO.batchUpdateDeAllocateWorkstationStatus(allocationRequest, batchupdateSize);
	GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
	return genericResponse;
}
/// PM Request	
	public void addPMRequest(AllocationRequest allocationRequest) {
		try {
			String o00I1III0 = WMSConstant.sqlpm;
			getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement ol1oOlII1 = connection.prepareStatement(o00I1III0.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                ol1oOlII1.setString(1, allocationRequest.getRequest_id());
                //statement.setString(1, "REQALC-2019-000001");
                ol1oOlII1.setString(2, allocationRequest.getPm_id());  
                ol1oOlII1.setString(3, allocationRequest.getGid()); 
                ol1oOlII1.setString(4, allocationRequest.getDepartment_id());
                ol1oOlII1.setString(5, allocationRequest.getProject_id());
                ol1oOlII1.setString(6, allocationRequest.getNo_of_resource());
                ol1oOlII1.setString(7, allocationRequest.getTypeofdesk());
                ol1oOlII1.setDate(8, WMSDateUtil.getDateFormat(allocationRequest.getStart_time()));
                ol1oOlII1.setDate(9, WMSDateUtil.getDateFormat(allocationRequest.getEnd_time()));
                ol1oOlII1.setString(10, WMSConstant.PM_P_STATUS);
                ol1oOlII1.setInt(11, 0);//flag
                ol1oOlII1.setString(12, "No remarks");
    
                return ol1oOlII1;
        }
        });
		}
		catch(Exception e) {
		    LOGGER.error("addPMRequest Excception :"+ e);
		}
	}
/// FM Request	
	public void addFMRequest(AllocationRequest allocationRequest) {
		try {
		String o00oOl1Ii = WMSConstant.sqladdFMRequest; 
		getJdbcTemplate().update(new PreparedStatementCreator() {
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement ol1oOlII1 = connection.prepareStatement(o00oOl1Ii.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                ol1oOlII1.setString(1, allocationRequest.getRequest_id());
  
                ol1oOlII1.setString(2, allocationRequest.getPm_id());
                ol1oOlII1.setString(3, allocationRequest.getGid()); 
                ol1oOlII1.setString(4, allocationRequest.getDepartment_id());
                ol1oOlII1.setString(5, allocationRequest.getProject_id());
                ol1oOlII1.setString(6, allocationRequest.getNo_of_resource());
                ol1oOlII1.setString(7, allocationRequest.getTypeofdesk());
                ol1oOlII1.setDate(8, WMSDateUtil.getDateFormat(allocationRequest.getStart_time()));
                ol1oOlII1.setDate(9, WMSDateUtil.getDateFormat(allocationRequest.getEnd_time()));
                ol1oOlII1.setString(10, WMSConstant.FA_P_STATUS);
                ol1oOlII1.setInt(11, 0);//flag
                ol1oOlII1.setString(12, "No remarks");
  
                return ol1oOlII1;
        }
        });
		}
		catch(Exception e) {
		    LOGGER.error("addFMRequest Excception :"+ e);
		}
	}
/// Histrory Details	
	public void addHistorydetails(AllocationRequest allocationRequest) {
		try {
		
		String O10olliII = WMSConstant.sqladdHistorydetails; 
        getJdbcTemplate().update(new PreparedStatementCreator() {  
        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement ol1oOlII1 = connection.prepareStatement(O10olliII.toString(),
                                Statement.RETURN_GENERATED_KEYS);
                ol1oOlII1.setString(1, allocationRequest.getRequest_id()); // REQALC-2019-0000001 
                ol1oOlII1.setString(2, "Requested by PM" );
                ol1oOlII1.setString(3, "Requested" );
                ol1oOlII1.setString(4, allocationRequest.getRequest_id());
                ol1oOlII1.setString(5, "Pending by FA" );
                ol1oOlII1.setString(6, "Pending" );
                return ol1oOlII1;
        }
        });
		}
		catch(Exception e) {
		    LOGGER.error("addHistorydetails Excception :"+ e);
		}
		
	}
/// Email Request	
	public void addEmailRequest(EmailModel emailModel) {
		try {   
			
			String I11ollOIO = WMSConstant.sqladdEmailRequest;  
			getJdbcTemplate().update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
			        PreparedStatement ol1oOlII1 = connection.prepareStatement(I11ollOIO.toString(),  
			                        Statement.RETURN_GENERATED_KEYS);
			        ol1oOlII1.setString(1, emailModel.getRequestId() + "|" + emailModel.getRequestStatus());

			        ol1oOlII1.setString(2, workspaceManagementMail);  //Testing 
			        ol1oOlII1.setString(3, emailModel.getEmailTo());  
			        ol1oOlII1.setString(4, "");  //attachment
			        ol1oOlII1.setString(5,  WMSConstant.EMAIL_P_STATUS);  
			        ol1oOlII1.setString(6, emailModel.getRequestId());
			        ol1oOlII1.setString(7, "Approved");  

			        return ol1oOlII1;
			}
			});
		} catch (Exception e) {
			 LOGGER.error("addEmailRequest Excception :"+ e);
		}
	}
	
	//PM : Update for Reject Page Status
	   public void updatePMRequestReject(AllocationRequest allocationRequest){
		      String IOlo0l1II = WMSConstant.updatePMRequestReject; 
		      try {
		    	  getJdbcTemplate().update(IOlo0l1II,allocationRequest.getRemarks(),allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updatePMRequestReject Excception :"+ e);
		      }
		      
		   }
	 //FA : Update for Reject Page Status
	   public void updateFARequestReject(AllocationRequest allocationRequest){
		      String lOOoOliII = WMSConstant.updateFARequestReject;
		      try {

		    	  getJdbcTemplate().update(lOOoOliII,allocationRequest.getRemarks(),allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateFARequestReject Excception :"+ e);
		      }
		      
		   }
	   
	   // PM : Update for Allocation Page Status
	   public void updatePMRequestStatus(AllocationRequest allocationRequest){
		      String lOIi1llIo = WMSConstant.updatePMRequestStatus;
		      try {
		    	  getJdbcTemplate().update(lOIi1llIo,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updatePMRequestStatus Excception :"+ e);
		      }
		   }
	// FA : Update for Allocation Page Status
	   public void updateFARequestStatus(AllocationRequest allocationRequest){
		      String iO0i0l0I1 =WMSConstant.updateFARequestStatus;
		      try {
		    	  getJdbcTemplate().update(iO0i0l0I1,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateFARequestStatus Excception :"+ e);
		      }
		   }
	// Hist : Update for Allocation Page Status
	   public void updateHistoryRequestStatus(AllocationRequest allocationRequest){
		      String OI0i1lIIo = WMSConstant.updateHistoryRequestStatus;
		      try {
		    	  getJdbcTemplate().update(OI0i1lIIo,WMSConstant.A_STATUS,allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateHistoryRequestStatus Excception :"+ e);
		      }
		   }
	   
		// Hist : Update for Allocation Page Status
	   public void updateAllocationSeats(AllocationRequest allocationRequest){ 
		      String lI0iillII = WMSConstant.SQLupdateAllocationSeats;
		      try {
		    	  getJdbcTemplate().update(lI0iillII,WMSConstant.As_STATUS,"2",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateAllocationSeats Excception :"+ e);
		      }

		   }
	   public void updatePMRequestSeatsAssign(AllocationRequest allocationRequest){
		      String Ol0iollI1 = WMSConstant.SQLupdatePMRequestSeatsAssign; 
		      try {
		    	  getJdbcTemplate().update(Ol0iollI1,WMSConstant.As_STATUS,"2",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updatePMRequestSeatsAssign Excception :"+ e);
		      }
		   }
	   public void updateFARequestSeatsAssign(AllocationRequest allocationRequest){
		      String ll1illOIi = WMSConstant.SQLupdateFARequestSeatsAssign; 
		      try {
		    	  getJdbcTemplate().update(ll1illOIi,WMSConstant.As_STATUS,"2",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateFARequestSeatsAssign Excception :"+ e);
		      }
		   }
	   // This for image based
	   public GenericResponse imageBasedSeatAllocation(List<SeatAllocation> seatAllocationList,AllocationRequest allocationRequest,EmailModel emailModel){
		   insertAllocationSeats(seatAllocationList);
		   updatePMRequestStatus(allocationRequest);
		   updateFARequestStatus(allocationRequest);
		   floorMapDAO.batchUpdateAllocateWorkstationStatus(seatAllocationList,batchupdateSize); //Update the current status of the seats
		   updateHistoryRequestStatus(allocationRequest);
		   addEmailRequest(emailModel);  
		   //addAllocationVerificationEmail(emailModel,seatAllocationList);  
		   GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
		   return genericResponse;
	   }
	   
	   //this is for bulk
	   public GenericResponse bulkUploadSeatAllocation(BulkAllocation bulkAllocation,AllocationRequest allocationRequest,EmailModel emailModel){
		   insertBulkAllocation(bulkAllocation);
		   updatePMRequestStatus(allocationRequest);
		   updateFARequestStatus(allocationRequest);
		   updateHistoryRequestStatus(allocationRequest);
		   addEmailRequest(emailModel);  
		  //TODO history insert is pending :done  now
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
	   }
	   
	   //Employee Seat Assignment 
		public GenericResponse empSeatAssigns(List<EmployeeSeatAsign> empseatasign,AllocationRequest allocationRequest,EmailModel emailModel) {

			insertEmpSeatAsign(empseatasign);	
			updateAllocationSeats(allocationRequest);
			updatePMRequestSeatsAssign(allocationRequest);
			updateFARequestSeatsAssign(allocationRequest);
			//updateDeallocationVerificationEmailSeatsAssign(allocationRequest); 
			floorMapDAO.batchUpdateWorkstationStatusAssign(empseatasign, batchupdateSize); //Update Current Status of the seats
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
		}
		
		//Bulk Employee Seat Assign
		public GenericResponse bulkUploadEmpSeatAssigns(EmpBulkAssign empbulkassign,AllocationRequest allocationRequest,EmailModel emailModel) {

			insertEmpBulkAssign(empbulkassign);	
			updateAllocationSeats(allocationRequest);
			updatePMRequestSeatsAssignIntermediate(allocationRequest);
			updateFARequestSeatsAssignIntermediate(allocationRequest);
			GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return genericResponse;
		}
		
/// Insert Allocation Seats		
		public GenericResponse insertAllocationSeats(List<SeatAllocation> seatAllocationList){
			try {
			String OoOi0llIO = WMSConstant.insertAllocationSeats;
			for (SeatAllocation i00iolOIO : seatAllocationList) {
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement ol1oOlII1 = connection.prepareStatement(OoOi0llIO.toString(),
								Statement.RETURN_GENERATED_KEYS);
						ol1oOlII1.setString(1, i00iolOIO.getFloor_id());
						ol1oOlII1.setString(2, i00iolOIO.getSeat_number() );
						ol1oOlII1.setString(3, i00iolOIO.getProject_id());
						ol1oOlII1.setString(4,i00iolOIO.getRequest_id());
						ol1oOlII1.setDate(5, WMSDateUtil.getDateFormat(i00iolOIO.getStart_time()));
						ol1oOlII1.setDate(6, WMSDateUtil.getDateFormat(i00iolOIO.getEnd_time()));
						ol1oOlII1.setString(7, "Pending");
						ol1oOlII1.setInt(8, 1);
						return ol1oOlII1;
					}
				});
			}
			}
			catch(Exception e) {
				 LOGGER.error("insertAllocationSeats Excception :"+ e);
			}
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}
		
		//TODO remove the floor_id from thiru and hari schema :done
		public GenericResponse insertBulkAllocation(BulkAllocation bulkAllocation){
			try {
			String io0iollII = WMSConstant.insertBulkAllocation;
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement ol1oOlII1 = connection.prepareStatement(io0iollII.toString(),
								Statement.RETURN_GENERATED_KEYS);
						ol1oOlII1.setString(1, bulkAllocation.getRequest_id());
						ol1oOlII1.setString(2, bulkAllocation.getFrom_id());
						ol1oOlII1.setString(3, bulkAllocation.getTo_id());
						ol1oOlII1.setString(4, bulkAllocation.getStatus());
						ol1oOlII1.setString(5, fileUploadPath+bulkAllocation.getFile_path());
						ol1oOlII1.setString(6, "SP");

						return ol1oOlII1;
					}
				});
			}
			catch(Exception e) {
				 LOGGER.error("insertBulkAllocation Excception :"+ e);
			}
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}
		
		
		//Employee Seat Asign
		public GenericResponse insertEmpSeatAsign(List<EmployeeSeatAsign> empseatasignList){
			try {
			String sqlinsertEmpSeatAsign = WMSConstant.sqlinsertEmpSeatAsign;
			for (EmployeeSeatAsign Ii1i1llIi : empseatasignList) {
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement ol1oOlII1 = connection.prepareStatement(sqlinsertEmpSeatAsign.toString(), 
								Statement.RETURN_GENERATED_KEYS);
						ol1oOlII1.setString(1, Ii1i1llIi.getFloor_id());
						System.out.println("Wing type"+Ii1i1llIi.getWing());
						ol1oOlII1.setString(2, "W");
						ol1oOlII1.setString(3, Ii1i1llIi.getSeat_number());
						ol1oOlII1.setString(4, Ii1i1llIi.getEmp_id());
						ol1oOlII1.setString(5, Ii1i1llIi.getShifttime());
						ol1oOlII1.setString(6, Ii1i1llIi.getProject_id());
						ol1oOlII1.setString(7, Ii1i1llIi.getRequest_id());
						ol1oOlII1.setString(8, Ii1i1llIi.getTypeof_workspace());
						ol1oOlII1.setString(9, Ii1i1llIi.getStart_time());
						ol1oOlII1.setString(10, Ii1i1llIi.getEnd_time());
						ol1oOlII1.setString(11, "A"); //Assigned , by default Assigned
						ol1oOlII1.setInt(12, 2);  
						return ol1oOlII1;
					}
				});
			}
			}
			catch(Exception e) {
				 LOGGER.error("insertEmpSeatAsign Excception :"+ e);
			}
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}
	   
		public GenericResponse insertEmpBulkAssign(EmpBulkAssign empbulkassign){
			try {
			String lIi01lOII = WMSConstant.sqlinsertEmpBulkAssign; 
				getJdbcTemplate().update(new PreparedStatementCreator() {
					public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
						PreparedStatement ol1oOlII1 = connection.prepareStatement(lIi01lOII.toString(),
								Statement.RETURN_GENERATED_KEYS);
						ol1oOlII1.setString(1, empbulkassign.getRequest_id());
						ol1oOlII1.setString(2, empbulkassign.getFrom_id());
						ol1oOlII1.setString(3, empbulkassign.getTo_id());
						ol1oOlII1.setString(4, empbulkassign.getStatus());
						ol1oOlII1.setString(5, fileUploadPath+empbulkassign.getFile_path());
						ol1oOlII1.setString(6, "SE");

						return ol1oOlII1;
					}
				});
			}
			catch(Exception e) {
				 LOGGER.error("insertEmpBulkAssign Excception :"+ e);
			}
			//GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
			return null;
		}

		//This blocks returns the each request
		public synchronized String getRequestID() {  // this is from table
			String I0llillIO=WMSConstant.getRequestID;
			BigInteger oI10IllIO = getJdbcTemplate().queryForObject(I0llillIO,BigInteger.class,WMSDateUtil.getCurrentYear());
			oI10IllIO = oI10IllIO.add(BigInteger.ONE);
			StringBuffer lll0OliIl = new StringBuffer();
			lll0OliIl.append(WMSConstant.REQ_PREFIX);
			lll0OliIl.append(WMSConstant.HYPHEN);
			lll0OliIl.append(WMSDateUtil.getCurrentYear());
			lll0OliIl.append(WMSConstant.HYPHEN);
			lll0OliIl.append(WMSRNumberUtil.getCompleteRNumber(oI10IllIO));
			String Io00ll0Io = lll0OliIl.toString();
			String loO0IloIl  =WMSConstant.updatedRequestID;
			System.out.println("update request id query :" + loO0IloIl + oI10IllIO + WMSDateUtil.getCurrentYear());
		      try {
		    	  getJdbcTemplate().update(loO0IloIl,oI10IllIO,WMSDateUtil.getCurrentYear());
		      }
		      catch(Exception e){
		    	  LOGGER.error("getRequestID Excception :"+ e);
		      }
			return Io00ll0Io; //1
		}
		
		public Map<String,FloorMapDetails> getAllocatedCoordiantes(String floorID,String projectID){
			//Get Coordinates from master table
			
			String Iio0Il1Il =WMSConstant.coordinatesSQL1;
			RowMapper<Coordinates> iio1IIiI1 = new BeanPropertyRowMapper<Coordinates>(Coordinates.class);
			List<Coordinates> lii0Ol0Il = getJdbcTemplate().query(Iio0Il1Il,iio1IIiI1);
			Map<String,FloorMapDetails> floorMap = new HashMap<>();
			for (Coordinates oi10ilOI0 : lii0Ol0Il) {
				String iil0IlOIo = oi10ilOI0.getWorkstation_no();
				FloorMapDetails I0i0ll0I1 = new FloorMapDetails();
				I0i0ll0I1.setCoordinates(oi10ilOI0.getCoordinates());
				I0i0ll0I1.setFloor_id(oi10ilOI0.getFloor_id());
				I0i0ll0I1.setWorkstation_no(oi10ilOI0.getWorkstation_no());
				//Get Employee Details from allocation Table
				String I1l0lllI1 =WMSConstant.coordinatesSQL+ "'"+iil0IlOIo+"' and project_id = '"+projectID+"' ";
				if(projectID.equals("All")) {
					I1l0lllI1 = WMSConstant.coordinatesSQL+"'"+iil0IlOIo+"'";
				}
				List<Map<String, Object>> i1l00loII = Io0l1lIIl(I1l0lllI1);
				if(i1l00loII!=null && i1l00loII.size()>0 ) {
					I0i0ll0I1.setIsUtilized("1"); //0,1,2,3 :1=Allocated
				
				}

				
			
				String IOo10llIl = WMSConstant.assignSQL+"'"+iil0IlOIo+"' and project_id = '"+projectID+"'";
				List<Map<String, Object>> lOO11loI0 = Io0l1lIIl(IOo10llIl);
				if(lOO11loI0!=null && lOO11loI0.size()>0) {
					I0i0ll0I1.setIsUtilized("2");  //0,1,2,3:2=Assign
				}
				
				String oOl1Il1I1 = WMSConstant.dellocateSQL+"'"+iil0IlOIo+"' and project_id = '"+projectID+"'";
				List<Map<String, Object>> deallcoateSQLList = Io0l1lIIl(oOl1Il1I1);
				if(deallcoateSQLList!=null && deallcoateSQLList.size()>0) {
					I0i0ll0I1.setIsUtilized("3");  //0,1,2,3:3=De allocated
				}
				
			
			
			/// To Show Deallocated status in All 
			  String OI01lllI0 =WMSConstant.allocationDSQL+"'" +iil0IlOIo+"' and project_id = '"+projectID+"'";
			  if(projectID.equals("All")) { 
				  OI01lllI0=WMSConstant.allocationDSQL+"'" +iil0IlOIo+"'  and status = 'Deallocated'"; 
				  } 
			  List<Map<String, Object>>allocationList1 =Io0l1lIIl(OI01lllI0); 
			  if(allocationList1!=null&&allocationList1.size()>0 ) { 
				  I0i0ll0I1.setIsUtilized("3"); 
			  }
			  
			 
			/// To Show Assigned status in All  
			  String lIl10llII =WMSConstant.allocationASQL+"'"+iil0IlOIo+"' and project_id = '"+projectID+"' ";
			  if(projectID.equals("All"))
			  { 
				  lIl10llII =WMSConstant.allocationASQL+"'"+iil0IlOIo+"' and status = 'Assigned'"; 
				  } 
			  List<Map<String, Object>>oI01IlIIo =Io0l1lIIl(lIl10llII);
			  if(oI01IlIIo!=null&&oI01IlIIo.size()>0 )
			  { 
				  I0i0ll0I1.setIsUtilized("2"); 
			  }
			  
			 
			  
				
				floorMap.put(iil0IlOIo, I0i0ll0I1);
			  }
		
			return floorMap;
			

		}
		

		 //Update wms_allocation_seats as Allocated
		 public void updateDeallocationSeat(AllocationRequest allocationRequest){
		      String iOOollOIi = WMSConstant.updateDeallocationSeat;
		      try {

		    		 getJdbcTemplate().update(iOOollOIi,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateDeallocationSeat Excception :"+ e);
		      }
		   } 
		 //Update wms_employee_seats_asign as UnAssigned
		 public void updateUnAssignedSeat(AllocationRequest allocationRequest){
		      String OI0o1lOIo = WMSConstant.updateUnAssignedSeat;
		      try {
	
		    		int rows= getJdbcTemplate().update(OI0o1lOIo,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      
                  }
		      catch(Exception e){
		    	  LOGGER.error("updateUnAssignedSeat Excception :"+ e);
		      }

		   }
		 //Upadte wms_pm_requests as De-Allocated 
		 public void updatePMallocatedStatus(AllocationRequest allocationRequest){
		      String lI0o1l1Io = WMSConstant.updatePMallocatedStatus;
		      try {

		    		 getJdbcTemplate().update(lI0o1l1Io,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updatePMallocatedStatus Excception :"+ e);
		      }

		   }
		 
		 //Upadte wms_fa_requests as De-Allocated 
		 public void updateFAallocatedStatus(AllocationRequest allocationRequest){
		      String IIoooliIo = WMSConstant.updateFAallocatedStatus;
		      try {
		    	 //if(allocationRequest.getFlag()==1)
		    		 getJdbcTemplate().update(IIoooliIo,WMSConstant.D_STATUS,"3",allocationRequest.getRequest_id());
		      }
		      catch(Exception e){
		    	  LOGGER.error("updateFAallocatedStatus Excception :"+ e);
		      }

		   }
		 
			public GenericResponse setRoleCountQuery1() {
		
				String IlI1lllIi= WMSConstant.No_of_FA;
				Oil1iIOIi( IlI1lllIi);//FA

				String ll011l0IO=WMSConstant.No_of_PM;
				Oil1iIOIi( ll011l0IO);//PM
				String olo10lOIo= WMSConstant.No_of_User;
				Oil1iIOIi( olo10lOIo);//USER
				String ilO1iliIi =WMSConstant.No_of_SuperAdmin;
				Oil1iIOIi( ilO1iliIi);//Super Admin	
				
				GenericResponse genericResponse = new GenericResponse(0, null,1,WMSConstant.SUCCESS);
				return genericResponse;
			}
		 
		 
			private String Oil1iIOIi(String sql) {
				int IiIl0IIIl = getJdbcTemplate().queryForObject(sql, Integer.class);
	
				return String.valueOf(IiIl0IIIl);
			}

			public void executeRoleCount() {
				// TODO Auto-generated method stub
	
				String Ooo11l1II= WMSConstant.No_of_FA_1;
				Oil1iIOIi( Ooo11l1II);//FA

				String Iol1OllI1=WMSConstant.No_of_PM_1;
				Oil1iIOIi( Iol1OllI1);//PM
				String loO1IllIl= WMSConstant.No_of_User_1;
				Oil1iIOIi( loO1IllIl);//USER
				String ooi11loII =WMSConstant.No_of_SuperAdmin_1;
				Oil1iIOIi( ooi11loII);//Super Admin	
			}
			
			public void executeStatusCount() {
				// TODO Auto-generated method stub
	
				String Oi01OloIi= WMSConstant.No_of_Allocated;
				Oil1iIOIi( Oi01OloIi);//FA
	
				String IiO1Il1II=WMSConstant.No_of_Assigned;
				Oil1iIOIi( IiO1Il1II);//PM
				String liI1lliIO=WMSConstant.No_of_Deallocated;
				Oil1iIOIi( liI1lliIO);//USER
				
			}
			// Employee Deatils
			public List<EmployeeDetails> getEmployeeDetailsList(String project_name){
				String O0l1oliI0 = WMSConstant.empdetails+"'"+project_name+"'"; 
				RowMapper<EmployeeDetails> iio1IIiI1 = new BeanPropertyRowMapper<EmployeeDetails>(EmployeeDetails.class);
				return getJdbcTemplate().query(O0l1oliI0,iio1IIiI1);
			}
			
			public void updatePMRequestSeatsAssignIntermediate(AllocationRequest allocationRequest){
			      String I011IllIo = WMSConstant.SQLupdatePMRequestSeatsAssignIntermediate;
			      try {
			    	  getJdbcTemplate().update(I011IllIo,WMSConstant.FA_P_STATUS,"2",allocationRequest.getRequest_id());
			      }
			      catch(Exception e){
			    	  LOGGER.error("updatePMRequestSeatsAssignIntermediate Excception :"+ e);
			      }
			      
	
			   }
		   public void updateFARequestSeatsAssignIntermediate(AllocationRequest allocationRequest){
			      String l0o1lloIi = WMSConstant.SQLupdateFARequestSeatsAssignIntermediate;
			      try {
			    	  getJdbcTemplate().update(l0o1lloIi,WMSConstant.FA_P_STATUS,"2",allocationRequest.getRequest_id());
			      }
			      catch(Exception e){
			    	  e.printStackTrace();
			      }

			   }
		   
		   public void addAllocationVerificationEmail(EmailModel emailModel,List<SeatAllocation> seatAllocationList) {
				try {
						String i0011lIIo=	WMSConstant.addAllocationVerificationEmail;
					List<SeatAllocation> request = seatAllocationList; 
					int[][] O1I1Il1II=null;
					if(request!=null) {     
			 		for (SeatAllocation seatAllocation : request) {	
						O1I1Il1II = getJdbcTemplate().batchUpdate(i0011lIIo, seatAllocationList, seatAllocationList.size(),
					                new ParameterizedPreparedStatementSetter<SeatAllocation>() {
					                    public void setValues(PreparedStatement o1i11loI0, SeatAllocation i1l1olIII) 
											throws SQLException {
	 
					                        o1i11loI0.setString(1, i1l1olIII.getRequest_id());
					                        //ps.setString(2, argument.getFloor_id());
					                        o1i11loI0.setString(2, i1l1olIII.getStart_time()); 
					                        o1i11loI0.setString(3, i1l1olIII.getEnd_time()); 
					                        o1i11loI0.setString(4, i1l1olIII.getSeat_number());
					                    }
					                }); 
							
							}
					}
								
					
				} catch (DataAccessException e) {
					e.printStackTrace();
				}
			}
		   
		   public void updateDeallocationVerificationEmailSeatsAssign(AllocationRequest allocationRequest){
			      String OOIOlo1Ii = WMSConstant.updateDeallocationVerificationEmailSeatsAssign;
			      try {
			    	  getJdbcTemplate().update(OOIOlo1Ii,WMSConstant.As_STATUS,allocationRequest.getRequest_id());
			      }
			      catch(Exception e){
			    	  e.printStackTrace();
			      }

			   }  
		
		 
}
