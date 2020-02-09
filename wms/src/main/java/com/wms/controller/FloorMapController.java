package com.wms.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
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
import com.wms.model.report.WorkstationType;
import com.wms.request.floormap.FloormapRequest;
import com.wms.response.GenericResponse;
import com.wms.service.FloorMapService;

@Controller
@RequestMapping("/floormap")
public class FloorMapController {
	
	@Autowired
	private FloorMapService floorMapService;
	
	//old code
	/*
	@RequestMapping(value = "/workstation", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<FloorDetails> getWorkstationInfo(@RequestParam String floorID,@RequestParam String projectID,@RequestParam(required = false) String requestid) {
		FloorDetails floorDetails = floorMapService.getFloorMapDetails(floorID, projectID,requestid);
		return new ResponseEntity<FloorDetails>(floorDetails,HttpStatus.OK);
	}
	*/
	
	//new code
	@RequestMapping(value = "/workstation", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<FloorDetails> WorkstationInfo(@Valid FloormapRequest floormapRequest) {
		FloorDetails floorDetails = floorMapService.getFloorMapDetailsStatus1(floormapRequest);
		return new ResponseEntity<FloorDetails>(floorDetails,HttpStatus.OK);
	}
	
	
	
	@RequestMapping(value = "/report", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<UtilizationInfo> getWorkstationReport(@RequestParam String field) {
		UtilizationInfo floorDetails = floorMapService.getWorkstationReport(field);
		return new ResponseEntity<UtilizationInfo>(floorDetails,HttpStatus.OK);
	}

	/*
	@RequestMapping(value = "/reportlist", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<UtilizationList> getWorkstationReportList(@RequestParam String field) {
		UtilizationList utilizationList = floorMapService.getWorkstationReportList(field);
		return new ResponseEntity<UtilizationList>(utilizationList,HttpStatus.OK);
	}
	*/
	
	//new code
	@RequestMapping(value = "/reportlist", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<UtilizationList> WorkstationReport(@Valid UtilizationRequest utilizationRequest) {
		UtilizationList utilizationList = floorMapService.getWorkstationReportList(utilizationRequest);
		return new ResponseEntity<UtilizationList>(utilizationList,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/adminreport", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<WorkstationType> getAdminReport() {
		//WorkstationType workstationType=floorMapService.getFloorWiseReport();
		WorkstationType workstationType=floorMapService.getReportList();
		return new ResponseEntity<WorkstationType>(workstationType,HttpStatus.OK);
	}
	   
	@RequestMapping(value="/download/reportfloorwise.xlsx", method=RequestMethod.GET)
	@ResponseBody 
	public ResponseEntity<InputStreamResource> downloadFile() throws IOException {
        File file=new File("C:\\Users\\Ation\\Downloads\\utilization.xlsx");
        System.out.println(file.getAbsoluteFile());
        WorkstationType workstationType=floorMapService.getReportList();
        new ResponseEntity<WorkstationType>(workstationType,HttpStatus.OK);
       	File initialFile = new File("reportfloorwise.xlsx");
		InputStream inputStream = new FileInputStream(initialFile);
		HttpHeaders headers = new HttpHeaders(); 
        headers.add("Content-Disposition", "attachment; filename=reportfloorwise.xlsx");
        return ResponseEntity.ok().headers(headers).body(new InputStreamResource(inputStream));
	
	}
}
