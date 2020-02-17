package com.wms.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.DivisionDetails;
import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorDetails;
import com.wms.model.MasterDataRequest;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.response.GenericResponse;
import com.wms.service.MasterDataService;

@Controller
@RequestMapping("/masterdata")
public class MasterDataController {
	
	@Autowired
	MasterDataService masterDataService;

			/*
			 * Project Details
			 */
			//old code
			/*
			@RequestMapping(value = "/projectdetails", method = RequestMethod.GET, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> projectdetails() {
				List<EmployeeDetails> projectdetails = masterDataService.getProjectDetails();
				return new ResponseEntity<List<EmployeeDetails>>(projectdetails,HttpStatus.OK);
			}
			*/
			//new code
			@RequestMapping(value = "/projectdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> projectdetails(@Valid MasterDataRequest masterdataRequest) {
				List<EmployeeDetails> projectdetails = masterDataService.getProjectDetailsStatus(masterdataRequest);
				return new ResponseEntity<List<EmployeeDetails>>(projectdetails,HttpStatus.OK);
			}
			/*
			 * Project Details 
			 */
			
			//OLD code
			/*
			@RequestMapping(value = "/pmprojectdetails", method = RequestMethod.GET, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> projectdetails(@RequestParam String gid_manager) {
				List<EmployeeDetails> projectdetails = masterDataService.getPMProjectDetails(gid_manager);
				return new ResponseEntity<List<EmployeeDetails>>(projectdetails,HttpStatus.OK);
			}
			*/
			
			//new code
			
			@RequestMapping(value = "/pmprojectdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> pmprojectdetails(@Valid MasterDataRequest masterdataRequest) {
				List<EmployeeDetails> projectdetailspm = masterDataService.getPMProjectDetailsStatus(masterdataRequest);
				return new ResponseEntity<List<EmployeeDetails>>(projectdetailspm,HttpStatus.OK);
			}
			
			/* 
			 * Employee Name Auto Complete
			 */
			
			/*
			@RequestMapping(value = "/empname", method = RequestMethod.GET, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmpIDName>> empName(@RequestParam String empid) {
				List<EmpIDName> projectdetails = masterDataService.getEmpName(empid);
				return new ResponseEntity<List<EmpIDName>>(projectdetails,HttpStatus.OK);
			}	
			*/
			
			//new
			
			@RequestMapping(value = "/empname", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmpIDName>> empName(@Valid MasterDataRequest masterdataRequest) {
				List<EmpIDName> employeedetails = masterDataService.getEmployeeName(masterdataRequest);
				return new ResponseEntity<List<EmpIDName>>(employeedetails,HttpStatus.OK);
			}	
			
			
			/********************  Add Division Details Controller*******************************************/     
			@RequestMapping(value = "/adddivdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<GenericResponse> divisiondetails(@Valid DivisionDetails divisionDetails) {
				GenericResponse genericResponse = masterDataService.divisiondetails(divisionDetails);
				return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
			}
			/**************************************************************************************/
			
			
			/******************** Update Division Details Controller*******************************************/     
			@RequestMapping(value = "/updatedivdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<GenericResponse> updatedivdetails(@Valid DivisionDetails divisionDetails) {
				GenericResponse genericResponse = masterDataService.updatedivdetails(divisionDetails);
				return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
			}
			/**************************************************************************************/
			
			/******************** Delete Division Details Controller*******************************************/     
			@RequestMapping(value = "/deletedivdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<GenericResponse> deletedivdetails(@Valid DivisionDetails divisionDetails) {
				GenericResponse genericResponse = masterDataService.deletedivdetails(divisionDetails);
				return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
			}
			/**************************************************************************************/
			
			/****************************************Show Division Details Controller**********************/
			@RequestMapping(value = "/showdivdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<DivisionDetails>> showdivisiondetails(@Valid DivisionDetails divisionDetails) {
				List<DivisionDetails> showdivisionDetails = masterDataService.getdivisiondetails(divisionDetails);
				return new ResponseEntity<List<DivisionDetails>>(showdivisionDetails,HttpStatus.OK);
			}
			/****************************************************************************************************************/
		
			
			/********************  Add Floor Details Controller*******************************************/     
			@RequestMapping(value = "/addfloordetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<GenericResponse> addfloorDetails(@Valid FloorDetails floorDetails) {
				GenericResponse genericResponse = masterDataService.addfloorDetails(floorDetails);
				return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
			}
			/**************************************************************************************/
			
			/********************  Update Floor Details Controller*******************************************/     
			@RequestMapping(value = "/updatefloordetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<GenericResponse> updatefloorDetails(@Valid FloorDetails floorDetails) {
				GenericResponse genericResponse = masterDataService.updatefloorDetails(floorDetails);
				return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
			}
			/**************************************************************************************/

			/********************  Delete Floor Details Controller*******************************************/     
			@RequestMapping(value = "/deletefloordetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<GenericResponse> deletefloorDetails(@Valid FloorDetails floorDetails) {
				GenericResponse genericResponse = masterDataService.deletefloorDetails(floorDetails);
				return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
			}
			/**************************************************************************************/

			/****************************************Show Floor Details Controller**********************/
			@RequestMapping(value = "/showfloordetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<FloorDetails>> showdivisiondetails(@Valid FloorDetails floorDetails) {
				List<FloorDetails> showfloorDetails = masterDataService.getfloordetails(floorDetails);
				return new ResponseEntity<List<FloorDetails>>(showfloorDetails,HttpStatus.OK);
			}
			/****************************************************************************************************************/


}
