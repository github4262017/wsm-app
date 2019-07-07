package com.wms.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.AllocationDAO;
import com.wms.model.AllocationDetails;

@Service
@Transactional
public class AllocationService {

	
	@Autowired
	AllocationDAO allocationDAO;

	public List<AllocationDetails> getAllocationDetails() {
		return allocationDAO.getAllocationList();
	}
	
}
