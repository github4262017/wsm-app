package com.wms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.dao.ChartDAO;
import com.wms.model.ChartResponse;
import com.wms.service.ChartService;

@Controller
@RequestMapping("/chart")
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	
	@RequestMapping(value = "/utilization", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<String> updateProfile() {
		String chartResponse = chartService.selectChart();
		return new ResponseEntity<String>(chartResponse,HttpStatus.OK);
	}

}
