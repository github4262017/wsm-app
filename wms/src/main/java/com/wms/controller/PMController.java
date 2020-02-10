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

import com.wms.model.PMDashboardDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.service.PMService;

@Controller
@RequestMapping("/PM")
public class PMController {
	
	@Autowired
	private PMService pmService;

	/*	
	@RequestMapping(value = "/pmdashboard", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody 
	public ResponseEntity<PMDashboardDetails> pmrequestDetails(@RequestParam String gid) { 
		PMDashboardDetails pmDetails = pmService.getPMdashboardDetails(gid);
		return new ResponseEntity<PMDashboardDetails>(pmDetails,HttpStatus.OK); 
	}	
	*/
	//new method
	@RequestMapping(value = "/pmdashboard", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody 
	public ResponseEntity<PMDashboardDetails> pmuserrequestDetails(@Valid ProjectManagerRequest projectManagerRequest) { 
		PMDashboardDetails pmuserDetails = pmService.getPMuserDetails(projectManagerRequest);
		System.out.println("this is gid"+projectManagerRequest.getGid());
		return new ResponseEntity<PMDashboardDetails>(pmuserDetails,HttpStatus.OK); 
	}	
	
}
