package com.wms.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.EmpIDName;
import com.wms.model.EmployeeDetails;
import com.wms.model.MasterDataRequest;
import com.wms.request.allocation.AllocationRequest;
import com.wms.service.MasterDataService;

@Controller
@RequestMapping("/masterdata")
public class MasterDataController {
	
	@Autowired
	MasterDataService masterDataService;

			
			@RequestMapping(value = "/projectdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> projectdetails(@Valid MasterDataRequest masterdataRequest) {
				List<EmployeeDetails> projectdetails = masterDataService.getProjectDetailsStatus(masterdataRequest);
				return new ResponseEntity<List<EmployeeDetails>>(projectdetails,HttpStatus.OK);
			}
			
			
			@RequestMapping(value = "/pmprojectdetails", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> pmprojectdetails(@Valid MasterDataRequest masterdataRequest) {
				List<EmployeeDetails> projectdetailspm = masterDataService.getPMProjectDetailsStatus(masterdataRequest);
				return new ResponseEntity<List<EmployeeDetails>>(projectdetailspm,HttpStatus.OK);
			}
			
			
			
			@RequestMapping(value = "/empname", method = RequestMethod.POST, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmpIDName>> empName(@Valid MasterDataRequest masterdataRequest) {
				List<EmpIDName> employeedetails = masterDataService.getEmployeeName(masterdataRequest);
				return new ResponseEntity<List<EmpIDName>>(employeedetails,HttpStatus.OK);
			}	
}
