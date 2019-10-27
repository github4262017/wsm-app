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

import com.wms.model.floormap.FloorDetails;
import com.wms.model.report.UtilizationInfo;
import com.wms.model.report.UtilizationList;
import com.wms.service.FloorMapService;

@Controller
@RequestMapping("/floormap")
public class FloorMapController {
	
	@Autowired
	private FloorMapService floorMapService;
	
	
	@RequestMapping(value = "/workstation", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<FloorDetails> getWorkstationInfo(@RequestParam String floorID,@RequestParam String projectID,@RequestParam(required = false) String requestid) {
		FloorDetails floorDetails = floorMapService.getFloorMapDetails(floorID, projectID,requestid);
		return new ResponseEntity<FloorDetails>(floorDetails,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/report", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<UtilizationInfo> getWorkstationReport(@RequestParam String field) {
		UtilizationInfo floorDetails = floorMapService.getWorkstationReport(field);
		return new ResponseEntity<UtilizationInfo>(floorDetails,HttpStatus.OK);
	}

	
	@RequestMapping(value = "/reportlist", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<UtilizationList> getWorkstationReportList(@RequestParam String field) {
		UtilizationList utilizationList = floorMapService.getWorkstationReportList(field);
		return new ResponseEntity<UtilizationList>(utilizationList,HttpStatus.OK);
	}
}
