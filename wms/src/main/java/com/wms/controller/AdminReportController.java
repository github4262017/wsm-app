package com.wms.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import org.eclipse.collections.api.multimap.bag.MutableBagMultimap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wms.dao.CreateExcelAdminReport;
import com.wms.model.UtilizationReportWorkstation;

import com.wms.service.ReportService; 

@Controller
@RequestMapping("/report")
public class AdminReportController { 

	@Autowired
	private ReportService reportService;
	
		/************ Admin report in excel format from workstation status table*********************************/
		@GetMapping(value = "/download/adminreport.xlsx")
	    public ResponseEntity<InputStreamResource> excelUtilizationReportToday() throws IOException {
			MutableBagMultimap multiMapTotalBuildingSeat = reportService.adminReportExcel();
			MutableBagMultimap multimapOccupiedByISBL = reportService.adminReportOccupiedByISBL();
			MutableBagMultimap multimapOccupiedBySARD = reportService.adminReportOccupiedBySARD();
			MutableBagMultimap multimapOccupiedByINFOSEC = reportService.adminReportOccupiedByInfosec();
			MutableBagMultimap multimapOccupiedByPANDC = reportService.adminReportOccupiedByPANDC();
			
			MutableBagMultimap multimapOccupiedSeats = reportService.adminReportOccupiedSeats();
			MutableBagMultimap multimapTotalVacant = reportService.adminReportTotalVacant();
			MutableBagMultimap multimapSARDheadcount = reportService.adminReportDivisionHeadcount("SARD");
			MutableBagMultimap multimapISBLheadcount = reportService.adminReportDivisionHeadcount("ISBL");
			MutableBagMultimap multimapPANDCheadcount = reportService.adminReportDivisionHeadcount("P&C");
			MutableBagMultimap multimapInfosecheadcount = reportService.adminReportDivisionHeadcount("Infosec");
			ByteArrayInputStream in = CreateExcelAdminReport.createExcelHeaders(multiMapTotalBuildingSeat,multimapOccupiedBySARD,multimapOccupiedByISBL,multimapOccupiedByINFOSEC,
					multimapOccupiedByPANDC,multimapOccupiedSeats,multimapTotalVacant,multimapSARDheadcount,multimapISBLheadcount,multimapPANDCheadcount,multimapInfosecheadcount);
			// return IOUtils.toByteArray(in);  
			HttpHeaders headers = new HttpHeaders(); 
	        headers.add("Content-Disposition", "attachment; filename=adminreport.xlsx");
	        return ResponseEntity.ok().headers(headers).body(new InputStreamResource(in));
	    } 
}
