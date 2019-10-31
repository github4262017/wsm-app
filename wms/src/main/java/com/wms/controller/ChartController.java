package com.wms.controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.util.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.UtilizationAllocationDetails;
import com.wms.model.UtilizationReport;
import com.wms.model.UtilizationReportWorkstation;
import com.wms.service.ChartService;
import com.wms.util.ExcelGenerator; 

@Controller
@RequestMapping("/chart")
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	
	@Autowired
	private ServletContext servletContext;
	
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
	//this is for bring today's report in excel format from workstation status table
	@GetMapping(value = "/download/utilizationreporttoday.xlsx")
    public ResponseEntity<InputStreamResource> excelUtilizationReportToday() throws IOException {
		List<UtilizationReportWorkstation> utilizationReport = chartService.selectUtilizationReportToday();
		ByteArrayInputStream in = ExcelGenerator.utilizationTodayToExcel(utilizationReport);
		// return IOUtils.toByteArray(in);  
		HttpHeaders headers = new HttpHeaders(); 
        headers.add("Content-Disposition", "attachment; filename=utilizationreport.xlsx");
        return ResponseEntity.ok().headers(headers).body(new InputStreamResource(in));
    } 
	//this is for bring format report in excel from workstation status table (template download)
	@RequestMapping(value="/download/utilizationreportCSV.xlsx", method=RequestMethod.GET)
	@ResponseBody 
	public ResponseEntity<InputStreamResource> downloadFile() throws IOException {
        File file=new File("C:\\Users\\Ation\\Downloads\\utilization.xlsx");
        System.out.println(file.getAbsoluteFile());
       	File initialFile = new File("src/main/resources/utilizationreportCSV.xlsx");
		InputStream inputStream = new FileInputStream(initialFile);

		HttpHeaders headers = new HttpHeaders(); 
        headers.add("Content-Disposition", "attachment; filename=utilization.xlsx");
        return ResponseEntity.ok().headers(headers).body(new InputStreamResource(inputStream));
	
	}

	

}
