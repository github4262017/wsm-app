package com.wms.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.FloorMapDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.response.GenericResponse;
import com.wms.service.AllocationService;

@Controller
@RequestMapping("/allocation")
public class AllocationController {
	
	@Autowired
	private AllocationService allocationService;
	
	@RequestMapping(value = "/details", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> updateProfile(@RequestParam int id) {
		List<AllocationDetails> allocationDetails = allocationService.getAllocationDetails();
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/approval", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> update(@RequestParam int id) {
		List<AllocationDetails> allocationDetails1 = allocationService.getAllocationApprovalDetails();
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails1,HttpStatus.OK);
	}


	@RequestMapping(value = "/coordinates", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<Map<String,FloorMapDetails>> coordinates(@RequestParam String floorID,@RequestParam String projectID) {
		Map<String,FloorMapDetails> allocationDetails = allocationService.getCoordinates(floorID,projectID);
		return new ResponseEntity<Map<String,FloorMapDetails>>(allocationDetails,HttpStatus.OK);
	}
	

	@RequestMapping(value = "/pmrequest", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<GenericResponse> pmrequest(@Valid AllocationRequest allocationRequest) {
		GenericResponse genericResponse = allocationService.pmrequest(allocationRequest);
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/updatepmrequest", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<GenericResponse> updatepmrequest(@Valid AllocationRequest allocationRequest) {
		System.out.println("/updatepmrequest beign invoked");
		GenericResponse genericResponse = allocationService.pmrequestTable(allocationRequest);
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	

	
	
}
