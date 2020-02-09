package com.wms.service;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.controller.MasterDataRequest;
import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;

@Service
@Transactional
public class MasterDataService {
	
	@Autowired
	MasterDataDAO masterDataDAO;
       
		//Project Name
		public List<EmployeeDetails> getPMProjectDetails(String email) {
			return masterDataDAO.getPMProjectDetails(email);
		}   
		//Project Name
		public List<EmployeeDetails> getProjectDetails() {
			return masterDataDAO.getProjectDetails();
		}
		 
		//Emp Name for auto complete
		public List<EmpIDName> getEmpName(String empid) {
			return masterDataDAO.getEmpName(empid);
		}
		
		public List<EmployeeDetails> getPMProjectDetailsStatus(MasterDataRequest masterdataRequest) {
			return masterDataDAO.getPMProjectDetailsStatus(masterdataRequest); 
		}
		public List<EmployeeDetails> getProjectDetailsStatus(MasterDataRequest masterdataRequest) {
			return masterDataDAO.getProjectDetailsStatus(masterdataRequest); 
		}
}
