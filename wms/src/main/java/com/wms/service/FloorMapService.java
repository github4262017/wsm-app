package com.wms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.controller.UtilizationRequest;
import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.EmailModel;
import com.wms.model.floormap.FloorDetails;
import com.wms.model.report.UtilizationInfo;
import com.wms.model.report.UtilizationList;
import com.wms.model.report.WorkstationType;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.response.GenericResponse;

@Service
@Transactional
public class FloorMapService {

	
	@Autowired
	FloorMapDAO floorMapDAO;

	public FloorDetails getFloorMapDetails(String floorID,String projectID,String requestid) {
		return floorMapDAO.getFloorMapDetails(floorID,projectID,requestid);
	}
	
	public UtilizationInfo getWorkstationReport(String field) {
		return floorMapDAO.getWorkstationReport(field);
	}
	
	public UtilizationList getWorkstationReportList(String field) {
		return floorMapDAO.getWorkstationReportList(field);
	}
	
	
	public FloorDetails getFloorMapDetailsStatus1(com.wms.request.floormap.FloormapRequest floormapRequest) {
		return floorMapDAO.getFloorMapDetailsStatus(floormapRequest); 
	}

	public UtilizationList getWorkstationReportList(UtilizationRequest utilizationRequest) {
		return floorMapDAO.getWorkstationReportList(utilizationRequest); 
	}

	
}
