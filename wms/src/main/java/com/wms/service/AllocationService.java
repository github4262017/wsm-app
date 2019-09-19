package com.wms.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.allocation.AllocationDAO;
import com.wms.model.EmailModel;
import com.wms.model.FloorMapDetails;
import com.wms.model.RunningNumberRequest_id;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.BulkAllocation;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.model.allocation.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.FloorMapRequest;
import com.wms.request.allocation.SeatAllocationRequest;
import com.wms.response.GenericResponse;

@Service
@Transactional
public class AllocationService {

	
	@Autowired
	AllocationDAO allocationDAO;

	public List<AllocationDetails> getAllocationDetails() {
		return allocationDAO.getAllocationList();
	}
	public List<AllocationDetails> getAllocationApprovalDetails() {
		return allocationDAO.getAllocationApprovalList();
	}
	public List<RunningNumberRequest_id> getRunningNumbRequestid() {
		return allocationDAO.getRuuningNumberReqidList();
	}
	
	public Map<String,FloorMapDetails> getCoordinates(String floorID,String projectID) {
		return allocationDAO.getCoordinates(floorID,projectID);
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
			bulkallocation.setFile_path(seatAllocationRequest.getFile_path());
			
			EmailModel emailModel = new EmailModel();
			emailModel.setRequestId(seatAllocationRequest.getRequestid());
			emailModel.setEmailFrom(seatAllocationRequest.getApprover_id());
			emailModel.setEmailTo(seatAllocationRequest.getPm_email_id());
			emailModel.setRequestStatus("BulkUpload Approval Pending");
			
			allocationDAO.bulkUploadSeatAllocation(bulkallocation,allocationRequest,emailModel);
	    }else {
	    	  List<SeatAllocation> seatAllocationList = new ArrayList<>();
	    	  if(seatAllocationRequest.getFloorMap()!=null) {
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
							System.out.println("[Floor Id : " +floorMapRequest.getFloorid() +" - Seat Number : "+ seatNo +"]");
							seatAllocationList.add(seatAllocation);
						}
					}
				  	EmailModel emailModel = new EmailModel();
					emailModel.setRequestId(seatAllocationRequest.getRequestid());
					emailModel.setEmailFrom(seatAllocationRequest.getApprover_id());
					emailModel.setEmailTo(seatAllocationRequest.getPm_email_id());
					emailModel.setRequestStatus("Allocation Request Approved");
				  allocationDAO.imageBasedSeatAllocation(seatAllocationList,allocationRequest,emailModel);
	    	  }else {
	    		  System.out.println("Please select the Seats from the Floor Map");
	    	  }
	    	  
	    }
	}
	
	public GenericResponse pmrequest(AllocationRequest allocationRequest) {
		EmailModel emailModel = new EmailModel();
		emailModel.setEmailFrom(allocationRequest.getPm_id());
		emailModel.setEmailTo("fmgroup@fmgroup.com");//Send this email to Facility Admin Group, not to single person
		emailModel.setRequestStatus("Allocation Requested");
		return allocationDAO.setPMRequest(allocationRequest,emailModel);
	}
	public GenericResponse pmrequestTable(AllocationRequest allocationRequest) {
		return allocationDAO.updatePMRequestTble(allocationRequest);
	}
	
	public List<PMReqRespDetails> getPMReqResDetails(String requestid) {
		return allocationDAO.pmReqAllDetails(requestid);
	}
}
