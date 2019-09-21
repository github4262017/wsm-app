package com.wms.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.wms.model.UtilizationAllocationDetails;
import com.wms.model.UtilizationReport;
import com.wms.model.UtilizationReportDetails;

 
public class ExcelGenerator {
  
  public static ByteArrayInputStream customersToExcel(List<UtilizationReport> utilization) throws IOException {
    String[] COLUMNs = {"location", "building", "floor", "total_capacity", "total_occupancy", "total_current_utilization", "utilization_vs_occupancy", "utilzation_vs_capacity","utilization_date"};
    
    try(
        Workbook workbook = new XSSFWorkbook();
        ByteArrayOutputStream out = new ByteArrayOutputStream();
    ){
      Sheet sheet = workbook.createSheet("Utilization");
   
      CellStyle headerCellStyle = workbook.createCellStyle();
   
      // Row for Header
      Row headerRow = sheet.createRow(0);
   
      // Header
      for (int col = 0; col < COLUMNs.length; col++) {
        Cell cell = headerRow.createCell(col);
        cell.setCellValue(COLUMNs[col]);
        cell.setCellStyle(headerCellStyle);
      }
   
      int rowIdx = 1;
      for (UtilizationReport utilizationReport : utilization) {
        Row row = sheet.createRow(rowIdx++);
   
        row.createCell(0).setCellValue(utilizationReport.getLocation());
        row.createCell(1).setCellValue(utilizationReport.getBuilding());
        row.createCell(2).setCellValue(utilizationReport.getFloor());
        row.createCell(3).setCellValue(utilizationReport.getTotal_capacity());
        row.createCell(4).setCellValue(utilizationReport.getTotal_occupancy());
        row.createCell(5).setCellValue(utilizationReport.getTotal_current_utilization());
        row.createCell(6).setCellValue(utilizationReport.getUtilization_vs_occupancy());
        row.createCell(7).setCellValue(utilizationReport.getUtilzation_vs_capacity());
        row.createCell(8).setCellValue(utilizationReport.getUtilization_date());
       
      }
   
      workbook.write(out);
      return new ByteArrayInputStream(out.toByteArray());
    }
  }
  
  public static ByteArrayInputStream utilizationToExcel(List<UtilizationAllocationDetails> utilization) throws IOException {
	    //String[] COLUMNs = {"Floor", "Workstation No", "Employee", "Project Name", "Reporting Manager", "Division"};
	  //String[] COLUMNs = {"location", "campus", "building", "floor", "seats_id", "seats_no","project_code","project_name","project_manager","employee_name","employee_id","from_date","to_date","seat_status","email","remarks"};
	  String[] COLUMNs = {"Floor id", "seat number", "project id", "request id", "start time", "end time"};
	  
	  try(
	        Workbook workbook = new XSSFWorkbook();
	        ByteArrayOutputStream out = new ByteArrayOutputStream();
	    ){  
	      Sheet sheet = workbook.createSheet("Utilization");
	   
	      CellStyle headerCellStyle = workbook.createCellStyle();
	   
	      // Row for Header
	      Row headerRow = sheet.createRow(0);
	   
	      // Header
	      for (int col = 0; col < COLUMNs.length; col++) {
	        Cell cell = headerRow.createCell(col);
	        cell.setCellValue(COLUMNs[col]);
	        cell.setCellStyle(headerCellStyle);
	      }
	   
	      int rowIdx = 1;
	      for (UtilizationAllocationDetails utilizationReport : utilization) {
	        Row row = sheet.createRow(rowIdx++);
	        
	       /* row.createCell(0).setCellValue(utilizationReport.getLocation());
	        row.createCell(1).setCellValue(utilizationReport.getSeat_status());
	        row.createCell(2).setCellValue(utilizationReport.getBuilding());
	        row.createCell(3).setCellValue(utilizationReport.getFloor());
	        row.createCell(4).setCellValue(utilizationReport.getSeats_id());
	        row.createCell(5).setCellValue(utilizationReport.getSeats_no()); 
	        row.createCell(6).setCellValue(utilizationReport.getProject_code()); 
	        row.createCell(7).setCellValue(utilizationReport.getProject_name());
	        row.createCell(8).setCellValue(utilizationReport.getProject_manager());
	        row.createCell(9).setCellValue(utilizationReport.getEmployee_name());
	        row.createCell(10).setCellValue(utilizationReport.getEmployee_id());
	        row.createCell(11).setCellValue(utilizationReport.getFrom_date());
	        row.createCell(12).setCellValue(utilizationReport.getTo_date());
	        row.createCell(13).setCellValue(utilizationReport.getSeat_status());
	        row.createCell(14).setCellValue(utilizationReport.getEmail());
	        row.createCell(15).setCellValue(utilizationReport.getRemarks()); */
	        
	        row.createCell(0).setCellValue(utilizationReport.getFloor_id());   
	        row.createCell(1).setCellValue(utilizationReport.getSeat_number());
	        row.createCell(2).setCellValue(utilizationReport.getProject_id());
	        row.createCell(3).setCellValue(utilizationReport.getRequest_id());
	        row.createCell(4).setCellValue(utilizationReport.getStart_time());
	        row.createCell(5).setCellValue(utilizationReport.getEnd_time()); 
	        //row.createCell(6).setCellValue(utilizationReport.getStatus()); 
	        
	       
	      }
	   
	      workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
	    }
	  }
  
}