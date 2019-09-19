package com.wms.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.allocation.AllocationDAO;
import com.wms.model.FloorMapDetails;
import com.wms.model.RunningNumberRequest_id;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.BulkAllocation;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.model.allocation.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
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
	public GenericResponse getSeatAllocation(List<SeatAllocation> seatAllocationList) {
		return allocationDAO.insertAllocationSeats(seatAllocationList);
	}
	
	//This is for bulk upload
	public void getBulkAllocation(SeatAllocationRequest seatAllocationRequest) {
		
		  //TODO from the seatAllocationRequest create all the objects,
		//seatAllocationRequest.getRequestid()
		//seatAllocationRequest.getPm_email_id()
		//seatAllocationRequest.getApprover_id()
		//seatAllocationRequest.getFloorMap();
		//seatAllocationRequest.getStar_time();
		//seatAllocationRequest.getEnd_time();
		//seatAllocationRequest.getUploadType();
		//seatAllocationRequest.getFile_path()
		//"D:\\Bulkupload\\REQALC-2019-00000001.csv"
		
		
		System.out.println("seatAllocationRequest.getRequestid()"+seatAllocationRequest.getRequestid());
		
		  BulkAllocation bulkallocation1 =new BulkAllocation(); //construt this from
		 bulkallocation1.setRequest_id(seatAllocationRequest.getRequestid());
		 bulkallocation1.setFrom_id(seatAllocationRequest.getPm_email_id());
		 bulkallocation1.setTo_id(seatAllocationRequest.getApprover_id());
		 // bulkallocation1.setFloor_id("F1");//Remove this field //
		 // bulkallocation1.setWorkstation_id("1AW01");// remove this field
		  bulkallocation1.setStatus("P");
		  bulkallocation1.setFile_path(seatAllocationRequest.getFile_path());
		 

		  List<SeatAllocation> seatAllocationList = new ArrayList<>();
		  
		  AllocationRequest allocationRequest   = new AllocationRequest();
		  allocationRequest.setRequest_id(allocationRequest.getRequest_id());
		  System.out.println("seatAllocationRequest.getUploadType()"+seatAllocationRequest.getUploadType());
		if(seatAllocationRequest.getUploadType().equals("Bulk")) {
			allocationDAO.bulkUploadSeatAllocation(bulkallocation1,allocationRequest);
	    }else  if(seatAllocationRequest.getUploadType().equals("Image")) {
	    	allocationDAO.imageBasedSeatAllocation(seatAllocationList,allocationRequest);
	    }
	}
	
	public GenericResponse pmrequest(AllocationRequest allocationRequest) {
		return allocationDAO.setPMRequest(allocationRequest);
	}
	public GenericResponse pmrequestTable(AllocationRequest allocationRequest) {
		return allocationDAO.updatePMRequestTble(allocationRequest);
	}
	
	public List<PMReqRespDetails> getPMReqResDetails(String requestid) {
		return allocationDAO.pmReqAllDetails(requestid);
	}
}
