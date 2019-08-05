package com.wms.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.AllocationDAO;
import com.wms.model.AllocationDetails;
import com.wms.model.FloorMapDetails;

@Service
@Transactional
public class AllocationService {

	
	@Autowired
	AllocationDAO allocationDAO;

	public List<AllocationDetails> getAllocationDetails() {
		return allocationDAO.getAllocationList();
	}
	
	public Map<String,FloorMapDetails> getCoordinates(String floorID,String projectID) {
		return allocationDAO.getCoordinates(floorID,projectID);
	}
	
}
