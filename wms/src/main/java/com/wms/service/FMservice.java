package com.wms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.FacilityAdminDAO;
import com.wms.model.FMDashboardDetails;

@Service
public class FMservice {
	@Autowired
	FacilityAdminDAO facilityAdminDAO;

	public FMDashboardDetails selectFacilityCount() {
		return facilityAdminDAO.getFacilityAdminCount();
		//return chartDAO.getChartResponse();
	}
}
