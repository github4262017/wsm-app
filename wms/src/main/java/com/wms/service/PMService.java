package com.wms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.PMAdminDAO;
import com.wms.model.PMDashboardDetails;

@Service 
public class PMService {
	@Autowired
	PMAdminDAO pmAdminDAO;
	
	public PMDashboardDetails getPMdashboardDetails(String gid) {
		return pmAdminDAO.getPMCount(gid); 
	}
}

