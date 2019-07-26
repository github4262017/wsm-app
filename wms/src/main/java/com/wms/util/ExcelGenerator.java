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
  
  public static ByteArrayInputStream utilizationToExcel(List<UtilizationReportDetails> utilization) throws IOException {
	    String[] COLUMNs = {"Floor", "Workstation No", "Employee", "Project Name", "Reporting Manager", "Division"};
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
	      for (UtilizationReportDetails utilizationReport : utilization) {
	        Row row = sheet.createRow(rowIdx++);
	   
	        row.createCell(0).setCellValue(utilizationReport.getFloor());
	        row.createCell(1).setCellValue(utilizationReport.getWorkstation_no());
	        row.createCell(2).setCellValue(utilizationReport.getEmployee_name());
	        row.createCell(3).setCellValue(utilizationReport.getProject_name());
	        row.createCell(4).setCellValue(utilizationReport.getReporting_manager());
	        row.createCell(5).setCellValue(utilizationReport.getDivision());
	       
	      }
	   
	      workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
	    }
	  }
  
}