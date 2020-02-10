package com.wms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.FMDashboardDetails;
import com.wms.service.FMservice;

@Controller
@RequestMapping("/FM")
public class FacilityAdminController {
	
	@Autowired
	private FMservice FMservice;
	/*
	@RequestMapping(value = "/facilityadmincount", method = RequestMethod.GET)//,produces = "applilcation/json"
	@ResponseBody
	public ResponseEntity<FMDashboardDetails> facilityCount() {
		FMDashboardDetails fmDashboardDetails = FMservice.selectFacilityCount();  
		return new ResponseEntity<FMDashboardDetails>(fmDashboardDetails,HttpStatus.OK);
	}
	*/
	@RequestMapping(value = "/facilityadmincount", method = RequestMethod.POST)//,produces = "applilcation/json"
	@ResponseBody
	public ResponseEntity<FMDashboardDetails> facilityCount() {
		FMDashboardDetails fmDashboardDetails = FMservice.selectFacilityCount();  
		return new ResponseEntity<FMDashboardDetails>(fmDashboardDetails,HttpStatus.OK);
	}
}
