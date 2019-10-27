package com.wms.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.floormap.FloorDetails;
import com.wms.model.report.UtilizationInfo;
import com.wms.model.report.UtilizationList;

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
}
