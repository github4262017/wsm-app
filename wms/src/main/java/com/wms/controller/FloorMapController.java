package com.wms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.floormap.FloorMapInfo;
import com.wms.service.FloorMapService;

@Controller
@RequestMapping("/floormap")
public class FloorMapController {
	
	@Autowired
	private FloorMapService floorMapService;
	
	
	@RequestMapping(value = "/workstation", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<Map<String,FloorMapInfo>> getWorkstationInfo(@RequestParam String floorID,@RequestParam String projectID,@RequestParam(required = false) String requestid) {
		Map<String,FloorMapInfo> floorMapInfo = floorMapService.getFloorMapDetails(floorID, projectID,requestid);
		return new ResponseEntity<Map<String,FloorMapInfo>>(floorMapInfo,HttpStatus.OK);
	}

}
