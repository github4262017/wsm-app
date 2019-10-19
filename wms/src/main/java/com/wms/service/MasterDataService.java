package com.wms.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;

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
}
