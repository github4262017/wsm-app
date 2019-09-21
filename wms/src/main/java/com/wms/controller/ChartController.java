package com.wms.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.UtilizationAllocationDetails;
import com.wms.model.UtilizationReport;
import com.wms.service.ChartService;
import com.wms.util.ExcelGenerator;

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

	@GetMapping(value = "/download/utilization.xlsx")
    public ResponseEntity<InputStreamResource> excelCustomersReport() throws IOException {
		List<UtilizationReport> utilizationReport = chartService.selectUtilization();
		ByteArrayInputStream in = ExcelGenerator.customersToExcel(utilizationReport);
		// return IOUtils.toByteArray(in);
		HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attachment; filename=utilization.xlsx");
        return ResponseEntity.ok().headers(headers).body(new InputStreamResource(in));
    }
	
	@GetMapping(value = "/download/utilizationreport.xlsx")
    public ResponseEntity<InputStreamResource> excelUtilizationReport() throws IOException {
		List<UtilizationAllocationDetails> utilizationReport = chartService.selectUtilizationReport();
		ByteArrayInputStream in = ExcelGenerator.utilizationToExcel(utilizationReport);
		// return IOUtils.toByteArray(in);  
		HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attachment; filename=utilizationreport.xlsx");
        return ResponseEntity.ok().headers(headers).body(new InputStreamResource(in));
    }
}
