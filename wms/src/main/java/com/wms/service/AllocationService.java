package com.wms.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.allocation.AllocationDAO;
import com.wms.model.FloorMapDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;
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
	
	public Map<String,FloorMapDetails> getCoordinates(String floorID,String projectID) {
		return allocationDAO.getCoordinates(floorID,projectID);
	}
	
	public GenericResponse pmrequest(AllocationRequest allocationRequest) {
		return allocationDAO.setPMRequest(allocationRequest);
	}
	
}
