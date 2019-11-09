package com.wms.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.wms.dao.allocation.AllocationDAO;
import com.wms.model.EmailModel;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorMapDetails;
import com.wms.model.RunningNumberRequest_id;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.BulkAllocation;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.model.allocation.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.AssignEmpInfo;
import com.wms.request.allocation.EmpBulkAssign;
import com.wms.request.allocation.EmpFloorMapReq;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.request.allocation.FloorMapRequest;
import com.wms.request.allocation.SeatAllocationRequest;
import com.wms.request.allocation.SeatAssign;
import com.wms.response.GenericResponse;

@Service
@Transactional
public class AllocationService {

	
	@Autowired
	AllocationDAO allocationDAO;
	
	@Value("${spring.mail.username}") 
	private String workspaceManagementMail;

	public List<AllocationDetails> getAllocationDetails(String gid) {
		return allocationDAO.getAllocationList(gid);
	}
	public List<AllocationDetails> getAllocationApprovalDetails() {
		return allocationDAO.getAllocationApprovalList();
	}
	public List<RunningNumberRequest_id> getRunningNumbRequestid() {
		return allocationDAO.getRuuningNumberReqidList();
	}
	
	public Map<String,FloorMapDetails> getAllocatedCoordiantes(String floorID,String projectID) {
		return allocationDAO.getAllocatedCoordiantes(floorID, projectID);
	}
	public GenericResponse getSeatAllocation(List<SeatAllocation> seatAllocationList) {
		return allocationDAO.insertAllocationSeats(seatAllocationList);
	}
	
	//This is for bulk upload
	public void performAllocation(SeatAllocationRequest seatAllocationRequest) {
		System.out.println("seatAllocationRequest.getRequestid()"+seatAllocationRequest.getRequestid());
		  AllocationRequest allocationRequest   = new AllocationRequest();
		  allocationRequest.setRequest_id(seatAllocationRequest.getRequestid());
		  
		if(seatAllocationRequest.getUploadType().equals("Bulk")) {
			BulkAllocation bulkallocation = new BulkAllocation(); // construt this from
			bulkallocation.setRequest_id(seatAllocationRequest.getRequestid());
			bulkallocation.setFrom_id(seatAllocationRequest.getApprover_id());
			bulkallocation.setTo_id(seatAllocationRequest.getPm_email_id());
			bulkallocation.setStatus("P");
			bulkallocation.setFlag(1); 
			bulkallocation.setFile_path(seatAllocationRequest.getFile_path());
		  	
			EmailModel emailModel = new EmailModel();
			emailModel.setRequestId(seatAllocationRequest.getRequestid());
			emailModel.setEmailFrom(workspaceManagementMail);
			//emailModel.setEmailTo(seatAllocationRequest.getPm_email_id());
			emailModel.setEmailTo("lokesh.vodlamudi@sony.com"); 
			emailModel.setRequestStatus("BulkUpload Approval Pending");
				
			allocationDAO.bulkUploadSeatAllocation(bulkallocation,allocationRequest,emailModel);
	    }else {
	    	  List<SeatAllocation> seatAllocationList = new ArrayList<>();
	    	  if(seatAllocationRequest.getFloorMap()!=null   ) {
				  for (FloorMapRequest floorMapRequest : seatAllocationRequest.getFloorMap()) {
						for (String seatNo : floorMapRequest.getSeats()) {
							SeatAllocation seatAllocation = new SeatAllocation();
							seatAllocation.setRequest_id(seatAllocationRequest.getRequestid());
							seatAllocation.setFloor_id(floorMapRequest.getFloorid());
							seatAllocation.setSeat_number(seatNo);
							seatAllocation.setStart_time(seatAllocationRequest.getStar_time());
							seatAllocation.setEnd_time(seatAllocationRequest.getEnd_time());
							seatAllocation.setProject_id(seatAllocationRequest.getProject_id());
							seatAllocation.setStatus("");//Not Bulk so keep empty - don't worry , we have to think about this really need or not
							seatAllocation.setFlag(1); 
							System.out.println("[Floor Id : " +floorMapRequest.getFloorid() +" - Seat Number : "+ seatNo +"]");
							seatAllocationList.add(seatAllocation);
						}
					}
				  	EmailModel emailModel = new EmailModel();
					emailModel.setRequestId(seatAllocationRequest.getRequestid());
					emailModel.setEmailFrom(workspaceManagementMail);
					//emailModel.setEmailTo(seatAllocationRequest.getPm_email_id());
					emailModel.setEmailTo("lokesh.vodlamudi@sony.com"); 
					emailModel.setRequestStatus("Allocation Request Approved");
				  allocationDAO.imageBasedSeatAllocation(seatAllocationList,allocationRequest,emailModel);
	    	  }else {
	    		  System.out.println("Please select the Seats from the Floor Map");
	    	  }
	    	  
	    }
	}
	
	
	//Do Employee Seat Assign 
	public void performEmpAssign(EmployeeSeatAsign empseatasign) {
		System.out.println("empseatasign.getRequestid()"+empseatasign.getRequest_id());
		  AllocationRequest allocationRequest   = new AllocationRequest();
		  allocationRequest.setRequest_id(empseatasign.getRequest_id());
		  
		if(empseatasign.getUploadType().equals("Bulk")) {
			EmpBulkAssign empbulkassign = new EmpBulkAssign(); // construt this from
			empbulkassign.setRequest_id(empseatasign.getRequest_id());
			empbulkassign.setFrom_id(empseatasign.getApprover_id());
			empbulkassign.setTo_id(empseatasign.getPm_email_id());
			empbulkassign.setStatus("P");
			empbulkassign.setFile_path(empseatasign.getFile_path());
			empbulkassign.setFlag(2);
			EmailModel emailModel = new EmailModel();
			emailModel.setRequestId(empseatasign.getRequest_id());
			emailModel.setEmailFrom(workspaceManagementMail);
			//emailModel.setEmailTo(empseatasign.getPm_email_id());
			emailModel.setEmailTo("lokesh.vodlamudi@sony.com"); 
			emailModel.setRequestStatus("BulkUpload Approval Pending");
			
			allocationDAO.bulkUploadEmpSeatAssigns(empbulkassign,allocationRequest,emailModel);
	    }else {
	    	  List<EmployeeSeatAsign> empseatasignList = new ArrayList<>();
	    	  if(empseatasign.getFloorMap()!=null) {
				  for (EmpFloorMapReq empFloorMapReq : empseatasign.getFloorMap()) {
						for (SeatAssign seatNo : empFloorMapReq.getSeats()) {
							for(AssignEmpInfo assignEmpInfo : seatNo.getEmpDetails()) {
								System.out.println("SeatAssign seatNo :"+seatNo.getSeatno());
								EmployeeSeatAsign empseatasign1 = new EmployeeSeatAsign();
								empseatasign1.setRequest_id(empseatasign.getRequest_id());
								System.out.println("Yes wing and employee id passing " + empseatasign.getWing() +"employeeID"+ assignEmpInfo.getEmpid());
								empseatasign1.setWing(empseatasign.getWing());
								empseatasign1.setEmp_id(assignEmpInfo.getEmpid());
								empseatasign1.setFloor_id(empFloorMapReq.getFloorid());
								empseatasign1.setSeat_number(seatNo.getSeatno()); 
								empseatasign1.setStart_time(empseatasign.getStart_time());
								empseatasign1.setEnd_time(empseatasign.getEnd_time());
								empseatasign1.setProject_id(empseatasign.getProject_id());
								empseatasign1.setTypeof_workspace("Dedicated"); //TODO remove this 
								empseatasign1.setStatus("");//Not Bulk so keep empty - don't worry , we have to think about this really need or not
								empseatasign1.setFlag(2);
								empseatasign1.setShifttime(assignEmpInfo.getShifttime());
								System.out.println("[Floor Id : " +empFloorMapReq.getFloorid() +" - Seat Number : "+ seatNo +"]");
								empseatasignList.add(empseatasign1);
							}
						}
					}
				  	EmailModel emailModel = new EmailModel();
					emailModel.setRequestId(empseatasign.getRequest_id());
					emailModel.setEmailFrom(workspaceManagementMail);
					//emailModel.setEmailTo(empseatasign.getPm_email_id());
					emailModel.setEmailTo("lokesh.vodlamudi@sony.com"); 
					emailModel.setRequestStatus("Assign  Approved");
				  allocationDAO.empSeatAssigns(empseatasignList,allocationRequest,emailModel);
	    	  }else {
	    		  System.out.println("Please select the Seats from the Floor Map");
	    	  }
	    	  
	    }
	} 
	
	public GenericResponse pmrequest(AllocationRequest allocationRequest) {
		EmailModel emailModel = new EmailModel();
		emailModel.setEmailFrom(workspaceManagementMail);
		emailModel.setEmailTo("lokesh.vodlamudi@sony.com");//Send this email to Facility Admin Group, not to single person
		emailModel.setRequestStatus("Allocation Requested"); 
		return allocationDAO.setPMRequest(allocationRequest,emailModel);
	}
	
	/*
	 * public GenericResponse empseatasign(EmployeeSeatAsign empseatasign ) { return
	 * allocationDAO.setempasign(empseatasign); }
	 */
	public GenericResponse pmrequestTable(AllocationRequest allocationRequest) {
		return allocationDAO.updatePMRequestTble(allocationRequest);
	}
	
	public GenericResponse getDeallocationSeats(AllocationRequest allocationRequest) {
		return allocationDAO.setDeallocationSeats(allocationRequest);
	}	
	public List<PMReqRespDetails> getPMReqResDetails(String requestid) {
		return allocationDAO.pmReqAllDetails(requestid);
	}
	
	//Employee Details
	public List<EmployeeDetails> getEmployeeDetails(String project_name) {
		return allocationDAO.getEmployeeDetailsList(project_name);
	}
	
}
