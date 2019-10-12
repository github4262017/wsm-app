package com.wms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.EmployeeDetails;
import com.wms.service.MasterDataService;

@Controller
@RequestMapping("/masterdata")
public class MasterDataController {
	
	@Autowired
	MasterDataService masterDataService;

	
	//Project Details
			@RequestMapping(value = "/projectdetails", method = RequestMethod.GET, produces = "application/json")
			@ResponseBody
			public ResponseEntity<List<EmployeeDetails>> projectdetails() {
				List<EmployeeDetails> projectdetails = masterDataService.geProjectDetails();
				return new ResponseEntity<List<EmployeeDetails>>(projectdetails,HttpStatus.OK);
			}	
}
