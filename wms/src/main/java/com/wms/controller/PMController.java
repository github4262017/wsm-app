package com.wms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.PMDashboardDetails;
import com.wms.service.PMService;

@Controller
@RequestMapping("/PM")
public class PMController {
	
	@Autowired
	private PMService pmService;

		
	@RequestMapping(value = "/pmdashboard", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<PMDashboardDetails> pmrequestDetails() { 
		PMDashboardDetails pmDetails = pmService.getPMdashboardDetails();
		return new ResponseEntity<PMDashboardDetails>(pmDetails,HttpStatus.OK); 
	}
}
