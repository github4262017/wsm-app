package com.wms.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.wms.model.UtilizationReport;

 
public class ExcelGenerator {
  
  public static ByteArrayInputStream customersToExcel(List<UtilizationReport> utilization) throws IOException {
    String[] COLUMNs = {"location", "building", "floor", "total_capacity", "total_occupancy", "total_current_utilization", "utilization_vs_occupancy", "utilzation_vs_capacity","utilization_date"};
    try(
        Workbook workbook = new XSSFWorkbook();
        ByteArrayOutputStream out = new ByteArrayOutputStream();
    ){
      CreationHelper createHelper = workbook.getCreationHelper();
   
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
}