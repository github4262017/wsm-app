package com.wms.controller;

import java.util.List;

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
import com.wms.service.MasterDataService;

@Controller
@RequestMapping("/masterdata")
public class MasterDataController {
	
	@Autowired
	MasterDataService masterDataService;

	
			/*
			 * Project Details
			 */
			@RequestMapping(value = "/projectdetails", method = RequestMethod.GET, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> projectdetails(@RequestParam String gid_manager) {
				List<EmployeeDetails> projectdetails = masterDataService.getPMProjectDetails(gid_manager);
				return new ResponseEntity<List<EmployeeDetails>>(projectdetails,HttpStatus.OK);
			}	
			
			/*
			 * Employee Name Auto Complete
			 */
			@RequestMapping(value = "/empname", method = RequestMethod.GET, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmpIDName>> empName(@RequestParam String empid) {
				List<EmpIDName> projectdetails = masterDataService.getEmpName(empid);
				return new ResponseEntity<List<EmpIDName>>(projectdetails,HttpStatus.OK);
			}	
}
