package com.wms.service;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.model.DivisionDetails;
import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorDetails;
import com.wms.model.MasterDataRequest;
import com.wms.model.ProjectDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.response.GenericResponse;

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
		
		public List<EmpIDName> getEmployeeName(MasterDataRequest masterdataRequest) {
			return masterDataDAO.getEmployeeName(masterdataRequest);
		}
/************************* Add Division Service****************************************/
		public GenericResponse divisiondetails(DivisionDetails divisionDetails) {
			return masterDataDAO.divisiondetails(divisionDetails);
		}
/*****************************************************************************/
		
/*************************Update Division Service****************************************/
		public GenericResponse updatedivdetails(DivisionDetails divisionDetails,String old_divisionid) {
			return masterDataDAO.updatedivdetails(divisionDetails,old_divisionid);
		}
/*****************************************************************************/
		
/*************************Delete Division Service****************************************/
		public GenericResponse deletedivdetails(DivisionDetails divisionDetails) {
			return masterDataDAO.deletedivdetails(divisionDetails);
		}
/*****************************************************************************/
		
/******************************Show Division Details Service*******************/	
		public List<DivisionDetails> getdivisiondetails(DivisionDetails divisionDetails) {
			return masterDataDAO.getdivisiondetails(); 
		}
/*****************************************************************************/
		
		
/************************* Add FloorDetails Service****************************************/
		public GenericResponse addfloorDetails(FloorDetails floorDetails) {
			return masterDataDAO.addfloorDetails(floorDetails);
		}
/*****************************************************************************/
		
/************************* Update FloorDetails Service****************************************/
		public GenericResponse updatefloorDetails(FloorDetails floorDetails,String old_floorid) {
			return masterDataDAO.updatefloorDetails(floorDetails,old_floorid);
		}
/*****************************************************************************/
		
/************************* Delete FloorDetails Service****************************************/
		public GenericResponse deletefloorDetails(FloorDetails floorDetails) {
			return masterDataDAO.deletefloorDetails(floorDetails);
		}
/*****************************************************************************/

/******************************Show Floor Details Service*******************/	
		public List<FloorDetails> getfloordetails(FloorDetails floorDetails) {
			return masterDataDAO.getfloordetails(); 
		}
/*****************************************************************************/

		
/************************* Add FloorDetails Service****************************************/
		public GenericResponse addprojectDetails(ProjectDetails projectDetails) {
			return masterDataDAO.addprojectDetails(projectDetails);
		}
/*****************************************************************************/

/************************* Update FloorDetails Service****************************************/
		public GenericResponse updateprojectDetails(ProjectDetails projectDetails,String old_projectname) {
			return masterDataDAO.updateprojectDetails(projectDetails,old_projectname);
		}
/*****************************************************************************/

/************************* Delete FloorDetails Service****************************************/
		public GenericResponse deleteprojectDetails(ProjectDetails projectDetails) {
			return masterDataDAO.deleteprojectDetails(projectDetails);
		}
/*****************************************************************************/

/******************************Show Project Details Service*******************/	
		public List<ProjectDetails> getprojectdetails(ProjectDetails projectDetails) {
			return masterDataDAO.getprojectdetails(); 
		}
/*****************************************************************************/
		
		
}
