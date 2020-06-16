package com.wms.dao;

import java.awt.Font;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.ConditionalFormattingRule;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.PatternFormatting;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.SheetConditionalFormatting;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.eclipse.collections.api.multimap.bag.MutableBagMultimap;

import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.report.SeatCountInfo;
import com.wms.model.report.WorkstationType;
import com.wms.util.ReportSubTotal;

public class CreateExcelAdminReport {
	/*************************************
	 * Excel Starts Created By Thiru
	 **************************************************************************************************************************/
	public static ByteArrayInputStream createExcelHeaders(MutableBagMultimap multiMapTotalBuildingSeat,MutableBagMultimap multimapOccupiedBySARD
			,MutableBagMultimap multimapOccupiedByINFOSEC,MutableBagMultimap multimapOccupiedByPANDC ,MutableBagMultimap multimapOccupiedByISBL
			,MutableBagMultimap multimapOccupiedSeats,MutableBagMultimap multimapTotalVacant,MutableBagMultimap multimapSARDheadcount
			,MutableBagMultimap multimapISBLheadcount,MutableBagMultimap multimapPANDCheadcount,MutableBagMultimap multimapInfosecheadcount) throws IOException

	/*createExcelHeaders(Map<String, Map<String, WorkstationType>> floorWiseMap, 
			Map<String, WorkstationType> totalCountMap, Map<String, WorkstationType> vacantCountMap,
			Map<String, WorkstationType> totalValueMap, Map<String, WorkstationType> occupiedCountMap)*/{
		 try(
				 XSSFWorkbook workbook = new XSSFWorkbook();
			        ByteArrayOutputStream out = new ByteArrayOutputStream();
			 ){
		XSSFSheet sheet = workbook.createSheet("Report");
		Row header = sheet.createRow(0);
		header.createCell(0).setCellValue("Table");
		// header.createCell(1).setCellValue("RoI");
		// header.createCell(2).setCellValue("T");
		// header.createCell(3).setCellValue("Interest (P r t)");

		CellStyle headerSeatCapacityStyle = workbook.createCellStyle();
		// Setting Background color
		headerSeatCapacityStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
		headerSeatCapacityStyle.setFillForegroundColor(IndexedColors.LIGHT_GREEN.getIndex());  
        headerSeatCapacityStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND); 
        
        CellStyle headerTotalBuildingSeatsStyle = workbook.createCellStyle();
        headerTotalBuildingSeatsStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        headerTotalBuildingSeatsStyle.setFillForegroundColor(IndexedColors.PALE_BLUE.getIndex());  
        headerTotalBuildingSeatsStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND); 
        
        CellStyle headerOccupiedSeatsStyle = workbook.createCellStyle();
        headerOccupiedSeatsStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        headerOccupiedSeatsStyle.setFillForegroundColor(IndexedColors.ROSE.getIndex());  
        headerOccupiedSeatsStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        
        CellStyle headerVacantSeatsStyle = workbook.createCellStyle();
        headerVacantSeatsStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        headerVacantSeatsStyle.setFillForegroundColor(IndexedColors.YELLOW.getIndex());  
        headerVacantSeatsStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        
        CellStyle headerSeatsStyle = workbook.createCellStyle();
        headerSeatsStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
       // headerSeatsStyle.setFillForegroundColor(IndexedColors.YELLOW.getIndex());  
       // headerSeatsStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
         
        XSSFFont font = workbook.createFont();//Create font
        font.setBold(true);//Make font bold
        
        headerSeatCapacityStyle.setFont(font);//set it to bold 
        headerTotalBuildingSeatsStyle.setFont(font);
        headerOccupiedSeatsStyle.setFont(font);
        headerVacantSeatsStyle.setFont(font);
        headerSeatsStyle.setFont(font);
        
        /*
        headerSeatCapacityStyle.setBorderBottom(BorderStyle.THIN);  
        headerSeatCapacityStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());  
        headerSeatCapacityStyle.setBorderRight(BorderStyle.THIN);  
        headerSeatCapacityStyle.setRightBorderColor(IndexedColors.BLUE.getIndex());  
        headerSeatCapacityStyle.setBorderTop(BorderStyle.NONE);  
        headerSeatCapacityStyle.setTopBorderColor(IndexedColors.BLACK.getIndex());  
         */       
       
		Row dataRow = sheet.createRow(1);
		Cell cell1 = dataRow.createCell(0);
		cell1.setCellValue("Seat Capacity");
		sheet.addMergedRegion(new CellRangeAddress(1, 3, 0, 1));// CellRangeAddress(startRowIndx, endRowIndx,
																// startColIndx,endColIndx)
		cell1.setCellStyle(headerSeatCapacityStyle);

		CellStyle totalCapacityStyle = workbook.createCellStyle();
		// Setting Background color
		totalCapacityStyle.setFillForegroundColor(IndexedColors.LIGHT_GREEN.getIndex());
		totalCapacityStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		CellStyle totalSeatsStyle = workbook.createCellStyle(); 
		totalSeatsStyle.setFillForegroundColor(IndexedColors.GREY_25_PERCENT.getIndex());  
		totalSeatsStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);   
		
		//set Total building color
		CellStyle buildingtotalStyle = workbook.createCellStyle(); 
		buildingtotalStyle.setFillForegroundColor(IndexedColors.PALE_BLUE.getIndex());  
		buildingtotalStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		
		sheet.addMergedRegion(new CellRangeAddress(1,2,2,5));
		
		Cell celltbs = dataRow.createCell(2);
		celltbs.setCellValue("Total Building Seats");
		//sheet.addMergedRegion(new CellRangeAddress(5,5,5,10));    
		celltbs.setCellStyle(headerTotalBuildingSeatsStyle);  
		
		//Cell cellOcps = dataRow.createCell(28);
		//cellOcps.setCellValue("Occupied seats"); 
		sheet.addMergedRegion(new CellRangeAddress(1,1,6,25));  
		//cellOcps.setCellStyle(headerOccupiedSeatsStyle);  
		for (int c = 6; c < 31; c++) {
			dataRow.createCell(c);
			dataRow.createCell(28).setCellValue("Occupied seats");
			dataRow.getCell(28).setCellStyle(headerOccupiedSeatsStyle);
			dataRow.getCell(c).setCellStyle(headerOccupiedSeatsStyle);
			
		}
		
		Cell cellVacants0 = dataRow.createCell(31);
		Cell cellVacants = dataRow.createCell(32);
		Cell cellVacants1 = dataRow.createCell(33);
		Cell cellVacants2 = dataRow.createCell(34);
		cellVacants.setCellValue("Total Vacant Seats");
		//sheet.addMergedRegion(new CellRangeAddress(1,1,28,30)); 
		
		sheet.addMergedRegion(CellRangeAddress.valueOf("AF1:AI1"));  
		cellVacants.setCellStyle(headerVacantSeatsStyle);
		cellVacants1.setCellStyle(headerVacantSeatsStyle);
		cellVacants2.setCellStyle(headerVacantSeatsStyle);
		cellVacants0.setCellStyle(headerVacantSeatsStyle); 
		// dataRow.createCell(3).setCellFormula("Total Vacant Seats");

		Row dataRow02 = sheet.createRow(2);
		dataRow02.createCell(7).setCellValue("Occupied by SARD");
		dataRow02.createCell(13).setCellValue("Occupied by P&C");
		dataRow02.createCell(18).setCellValue("Occupied by ISBL");
		dataRow02.createCell(23).setCellValue("Occupied by Infosec");

		Row dataRow2 = sheet.createRow(3);
		dataRow2.createCell(2).setCellValue("WS");
		// sheet.addMergedRegion(new CellRangeAddress(2,3,0,2));
		dataRow2.createCell(3).setCellValue("Cabins");
		dataRow2.createCell(4).setCellValue("ODC");
		dataRow2.createCell(5).setCellValue("Total");

		dataRow2.createCell(6).setCellValue("WS");
		dataRow2.createCell(7).setCellValue("Cabins");
		dataRow2.createCell(8).setCellValue("ODC");
		dataRow2.createCell(9).setCellValue("Total");
		dataRow2.createCell(10).setCellValue("Head Count");

		dataRow2.createCell(11).setCellValue("WS");
		dataRow2.createCell(12).setCellValue("Cabins");
		dataRow2.createCell(13).setCellValue("ODC");
		dataRow2.createCell(14).setCellValue("Total");
		dataRow2.createCell(15).setCellValue("Head Count");

		dataRow2.createCell(16).setCellValue("WS");
		dataRow2.createCell(17).setCellValue("Cabins");
		dataRow2.createCell(18).setCellValue("ODC");
		dataRow2.createCell(19).setCellValue("Total");
		dataRow2.createCell(20).setCellValue("Head Count");

		dataRow2.createCell(21).setCellValue("WS");
		dataRow2.createCell(22).setCellValue("Cabins");
		dataRow2.createCell(23).setCellValue("ODC");
		dataRow2.createCell(24).setCellValue("Total");
		dataRow2.createCell(25).setCellValue("Head Count");

		dataRow2.createCell(26).setCellValue("WS");
		dataRow2.createCell(27).setCellValue("Cabins");
		dataRow2.createCell(28).setCellValue("ODC");
		dataRow2.createCell(29).setCellValue("Total");
		dataRow2.createCell(30).setCellValue("Total");

		dataRow2.createCell(31).setCellValue("WS");
		dataRow2.createCell(32).setCellValue("Cabins");
		dataRow2.createCell(33).setCellValue("ODC");
		dataRow2.createCell(34).setCellValue("Total"); 
		dataRow2.setHeight((short) 800); 
		
		for (int c = 2; c < 35; c++) {
			dataRow2.getCell(c).setCellStyle(headerSeatsStyle);
			
		}   
		
		/***************************************
		 * Header Ends Here
		 **********************************/
		// Start

		// String[] floorid = { "F2", "F3P1", "F3P2", "F4", "F5","F7" };
		// for (int i = 0; i < floorid.length; i++) {

		// if(floorWiseMap.containsKey(floorid)) {
		// }
		/*
		 * Map<String,WorkstationType> innerMapAll=null;
		 * if(floorWiseMap.containsKey("F2")) {
		 * 
		 * innerMapAll = floorWiseMap.get("F2"); floorWiseMap.get("F2").get("") }
		 */
		/***************************************
		 * Floor2 Starts Here
		 **********************************/
		/*Map<String, WorkstationType> innerMapAll = floorWiseMap.get("F2");
		WorkstationType innerMapTotal = totalCountMap.get("F2");
		WorkstationType innerMapVacant = vacantCountMap.get("F2");
		WorkstationType innerMapOccupied = occupiedCountMap.get("F2"); */
		
			/*
			 * ReportsAdminDAO fmd= new ReportsAdminDAO(); MutableBagMultimap
			 * TotalBM=fmd.getAdminReportMap();
			 */
		
		try {
			Row dataRow1 = sheet.createRow(4);
			dataRow1.createCell(0).setCellValue("ETV 2nd F");
			dataRow1.getCell(0).setCellStyle(headerSeatsStyle);
			dataRow1.createCell(1).setCellValue("SEZ");
			//System.out.println("F2");
			// System.out.println("TotalCount:"+innerMapTotal.getWS_Count());
			if (multiMapTotalBuildingSeat != null) {
				dataRow1.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("workstation")+multiMapTotalBuildingSeat.get("F2").occurrencesOf("cabin")+multiMapTotalBuildingSeat.get("F2").occurrencesOf("ODC")); 
				dataRow1.getCell(5).setCellStyle(buildingtotalStyle);
			} else {
				dataRow1.createCell(2).setCellValue(0); 
				dataRow1.createCell(3).setCellValue(0);
				dataRow1.createCell(4).setCellValue(0);
				dataRow1.createCell(5).setCellValue(0);
			}			
			if (multimapOccupiedBySARD != null) { 
								
				dataRow1.createCell(6).setCellValue(multimapOccupiedBySARD.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(7).setCellValue(multimapOccupiedBySARD.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(8).setCellValue(multimapOccupiedBySARD.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(9).setCellValue(multimapOccupiedBySARD.get("F2").size());
				dataRow1.createCell(10).setCellValue(multimapSARDheadcount.get("F2").size());    
			} else if (multimapOccupiedBySARD.equals(null)) { 
				dataRow1.createCell(6).setCellValue(0);
				dataRow1.createCell(7).setCellValue(0);
				dataRow1.createCell(8).setCellValue(0);
				dataRow1.createCell(9).setCellValue(0);
				dataRow1.createCell(10).setCellValue(0);
			}
            
			// if(innerMapAll.get("ISBL")!=null) {
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
				//WorkstationType wsInfo = innerMapAll.get("ISBL");
				
				// 2nd Floor details---------------------------------------
				dataRow1.createCell(11).setCellValue(multimapOccupiedByISBL.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(12).setCellValue(multimapOccupiedByISBL.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(13).setCellValue(multimapOccupiedByISBL.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(14).setCellValue(multimapOccupiedByISBL.get("F2").size());
				dataRow1.createCell(15).setCellValue(multimapPANDCheadcount.get("F2").size());
			} else {
				dataRow1.createCell(6).setCellValue(0);
				dataRow1.createCell(7).setCellValue(0);
				dataRow1.createCell(8).setCellValue(0);
				dataRow1.createCell(9).setCellValue(0);
				dataRow1.createCell(10).setCellValue(0);
			}
			if (multimapOccupiedByINFOSEC != null) {
				
				dataRow1.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F2").size());
				dataRow1.createCell(20).setCellValue(multimapISBLheadcount.get("F2").size());
			}
			if (multimapOccupiedByPANDC != null) {
				dataRow1.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F2").size());
				dataRow1.createCell(25).setCellValue(multimapInfosecheadcount.get("F2").size());

			} 

			if (multimapOccupiedSeats != null) {
				dataRow1.createCell(26).setCellValue(multimapOccupiedSeats.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(27).setCellValue(multimapOccupiedSeats.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(28).setCellValue(multimapOccupiedSeats.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(29).setCellValue(multimapOccupiedSeats.get("F2").size());
				dataRow1.createCell(30).setCellValue(multimapOccupiedSeats.get("F2").size()); 
				
				dataRow1.getCell(30).setCellStyle(headerOccupiedSeatsStyle);
			} 
			if (multimapTotalVacant != null) {
				dataRow1.createCell(31).setCellValue(multimapTotalVacant.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(32).setCellValue(multimapTotalVacant.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(33).setCellValue(multimapTotalVacant.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(34).setCellValue(multimapTotalVacant.get("F2").size());
				
				dataRow1.getCell(34).setCellStyle(headerVacantSeatsStyle);
			}  

		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		}
		
		/***************************************
		 * Floor2 Starts Here
		 **********************************/
		/***************************************
		 * //F3P1 Starts Here
		 **********************************/
		//System.out.println("F3P1");
		Row dataRow13 = sheet.createRow(5);
		dataRow13.createCell(0).setCellValue("ETV 3rd F");
		dataRow13.getCell(0).setCellStyle(headerSeatsStyle);
		dataRow13.createCell(1).setCellValue("SEZ");
		/*
		Map<String, WorkstationType> innerMap31 = floorWiseMap.get("F3P1");
		WorkstationType innerMapTotal31 = totalCountMap.get("F3P1");
		innerMapVacant = vacantCountMap.get("F3P1");
		innerMapOccupied = occupiedCountMap.get("F3P1"); */
		try {
			System.out.println("F3P1");
			//Row dataRow13 = sheet.createRow(5);
			

			dataRow13.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("workstation"));
			dataRow13.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("cabin"));
			dataRow13.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("ODC"));
			dataRow13.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("workstation")+multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("cabin")+multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("ODC")); 
			dataRow13.getCell(5).setCellStyle(buildingtotalStyle);
	
			if (multimapOccupiedBySARD != null) {
				dataRow13.createCell(6).setCellValue(multimapOccupiedBySARD.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(7).setCellValue(multimapOccupiedBySARD.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(8).setCellValue(multimapOccupiedBySARD.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(9).setCellValue(multimapOccupiedBySARD.get("F3P1").size());
				dataRow13.createCell(10).setCellValue(multimapSARDheadcount.get("F3P1").size());
			}
		
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
				
				dataRow13.createCell(11).setCellValue(multimapOccupiedByISBL.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(12).setCellValue(multimapOccupiedByISBL.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(13).setCellValue(multimapOccupiedByISBL.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(14).setCellValue(multimapOccupiedByISBL.get("F3P1").size());
				dataRow13.createCell(15).setCellValue(multimapPANDCheadcount.get("F3P1").size());

			}
			if (multimapOccupiedByINFOSEC != null) {
				dataRow13.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").size());
				dataRow13.createCell(20).setCellValue(multimapISBLheadcount.get("F3P1").size());
			} //
			if (multimapOccupiedByPANDC != null) {
				dataRow13.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F3P1").size());
				dataRow13.createCell(25).setCellValue(multimapInfosecheadcount.get("F3P1").size());

			} 
			if (multimapOccupiedSeats != null) {
			dataRow13.createCell(26).setCellValue(multimapOccupiedSeats.get("F3P1").occurrencesOf("workstation"));
			dataRow13.createCell(27).setCellValue(multimapOccupiedSeats.get("F3P1").occurrencesOf("cabin"));
			dataRow13.createCell(28).setCellValue(multimapOccupiedSeats.get("F3P1").occurrencesOf("ODC"));
			dataRow13.createCell(29).setCellValue(multimapOccupiedSeats.get("F3P1").size());
			dataRow13.createCell(30).setCellValue(multimapOccupiedSeats.get("F3P1").size());
			
			dataRow13.getCell(30).setCellStyle(headerOccupiedSeatsStyle);
			}
			if (multimapTotalVacant != null) {
				dataRow13.createCell(31).setCellValue(multimapTotalVacant.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(32).setCellValue(multimapTotalVacant.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(33).setCellValue(multimapTotalVacant.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(34).setCellValue(multimapTotalVacant.get("F3P1").size());  
				
				dataRow13.getCell(34).setCellStyle(headerVacantSeatsStyle);
			} 

		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		}  
		/***************************************
		 * //F3P1 Ends Here
		 **********************************/

		/***************************************
		 * //F32 Starts Here
		 **********************************/

		/*
		Map<String, WorkstationType> innerMap32 = floorWiseMap.get("F3P2");
		WorkstationType innerMapTotal32 = totalCountMap.get("F3P2");
		innerMapVacant = vacantCountMap.get("F3P2");
		innerMapOccupied = occupiedCountMap.get("F3P2"); */
		try {
			//System.out.println("F3P2");
			// 4th Floor details---------------------------------------
			Row dataRow3 = sheet.createRow(6);
			dataRow3.createCell(0).setCellValue("ETV 3rd F");
			dataRow3.getCell(0).setCellStyle(headerSeatsStyle);
			dataRow3.createCell(1).setCellValue("SEZ");
			dataRow3.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("workstation"));
			dataRow3.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("cabin"));
			dataRow3.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("ODC"));
			dataRow3.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("workstation")+multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("cabin")+multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("ODC"));
			
			dataRow3.getCell(5).setCellStyle(buildingtotalStyle);
			
			if (multimapOccupiedBySARD != null) {
				System.out.println("SARD");
				
				dataRow3.createCell(6).setCellValue(multimapOccupiedBySARD.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(7).setCellValue(multimapOccupiedBySARD.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(8).setCellValue(multimapOccupiedBySARD.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(9).setCellValue(multimapOccupiedBySARD.get("F3P2").size());
				dataRow3.createCell(10).setCellValue(multimapSARDheadcount.get("F3P2").size());    

			}
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
				
				dataRow3.createCell(11).setCellValue(multimapOccupiedByISBL.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(12).setCellValue(multimapOccupiedByISBL.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(13).setCellValue(multimapOccupiedByISBL.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(14).setCellValue(multimapOccupiedByISBL.get("F3P2").size());
				dataRow3.createCell(15).setCellValue(multimapPANDCheadcount.get("F3P2").size());

			}
			if (multimapOccupiedByINFOSEC != null) {
				System.out.println("Infosec");
				
				dataRow3.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").size());
				dataRow3.createCell(20).setCellValue(multimapISBLheadcount.get("F3P2").size());

			} //
			if (multimapOccupiedByPANDC!= null) {
				System.out.println("P&C");
				
				dataRow3.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F3P2").size());
				dataRow3.createCell(25).setCellValue(multimapInfosecheadcount.get("F3P2").size());

			}  
			if (multimapOccupiedSeats != null) {
				dataRow3.createCell(26).setCellValue(multimapOccupiedSeats.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(27).setCellValue(multimapOccupiedSeats.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(28).setCellValue(multimapOccupiedSeats.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(29).setCellValue(multimapOccupiedSeats.get("F3P2").size());
				dataRow3.createCell(30).setCellValue(multimapOccupiedSeats.get("F3P2").size());
				
				dataRow3.getCell(30).setCellStyle(headerOccupiedSeatsStyle);
			} 
			if (multimapTotalVacant != null) {
				dataRow3.createCell(31).setCellValue(multimapTotalVacant.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(32).setCellValue(multimapTotalVacant.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(33).setCellValue(multimapTotalVacant.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(34).setCellValue(multimapTotalVacant.get("F3P2").size());
				
				dataRow3.getCell(34).setCellStyle(headerVacantSeatsStyle);
			} 

		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		}  
		/***************************************
		 * //F32 Ends Here
		 **********************************/

		/***************************************
		 * //F4 Starts Here
		 **********************************/

		/*
		Map<String, WorkstationType> innerMap4 = floorWiseMap.get("F4");
		WorkstationType innerMapTotal4 = totalCountMap.get("F4");
		innerMapVacant = vacantCountMap.get("F4");
		innerMapOccupied = occupiedCountMap.get("F4");*/
		try {
			//System.out.println("F4");
			// 5th Floor details ---------------------------------------
			Row dataRow4 = sheet.createRow(7);
			dataRow4.createCell(0).setCellValue("ETV 4th floor (New)");
			dataRow4.getCell(0).setCellStyle(headerSeatsStyle);
			dataRow4.createCell(1).setCellValue("SEZ");
		
			dataRow4.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("workstation"));
			dataRow4.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("cabin"));
			dataRow4.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("ODC"));
			dataRow4.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("workstation")+multiMapTotalBuildingSeat.get("F4").occurrencesOf("cabin")+multiMapTotalBuildingSeat.get("F4").occurrencesOf("ODC"));
			 
			dataRow4.getCell(5).setCellStyle(buildingtotalStyle);
			
			if (multimapOccupiedBySARD != null) {
				dataRow4.createCell(6).setCellValue(multimapOccupiedBySARD.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(7).setCellValue(multimapOccupiedBySARD.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(8).setCellValue(multimapOccupiedBySARD.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(9).setCellValue(multimapOccupiedBySARD.get("F4").size());
				dataRow4.createCell(10).setCellValue(multimapSARDheadcount.get("F4").size());
			}
			if (multimapOccupiedByISBL != null) {
				
				dataRow4.createCell(11).setCellValue(multimapOccupiedByISBL.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(12).setCellValue(multimapOccupiedByISBL.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(13).setCellValue(multimapOccupiedByISBL.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(14).setCellValue(multimapOccupiedByISBL.get("F4").size());
				dataRow4.createCell(15).setCellValue(multimapPANDCheadcount.get("F4").size());

			}
			if (multimapOccupiedByINFOSEC != null) {
				dataRow4.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F4").size());
				dataRow4.createCell(20).setCellValue(multimapISBLheadcount.get("F4").size());

			} //
			if (multimapOccupiedByPANDC != null) {
				dataRow4.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F4").size());
				dataRow4.createCell(25).setCellValue(multimapInfosecheadcount.get("F4").size());

			} 
			if (multimapOccupiedSeats != null) {
				dataRow4.createCell(26).setCellValue(multimapOccupiedSeats.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(27).setCellValue(multimapOccupiedSeats.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(28).setCellValue(multimapOccupiedSeats.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(29).setCellValue(multimapOccupiedSeats.get("F4").size());
				dataRow4.createCell(30).setCellValue(multimapOccupiedSeats.get("F4").size());
				dataRow4.getCell(30).setCellStyle(headerOccupiedSeatsStyle);
			} 
			if (multimapTotalVacant != null) {
				dataRow4.createCell(31).setCellValue(multimapTotalVacant.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(32).setCellValue(multimapTotalVacant.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(33).setCellValue(multimapTotalVacant.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(34).setCellValue(multimapTotalVacant.get("F4").size());
				
				dataRow4.getCell(34).setCellStyle(headerVacantSeatsStyle);
			}  

		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		} 

		/***************************************
		 * //F4 Ends Here
		 **********************************/

		/***************************************
		 * //F5 Starts Here
		 **********************************/

		/*
		Map<String, WorkstationType> innerMap5 = floorWiseMap.get("F5");
		WorkstationType innerMapTotal5 = totalCountMap.get("F5");
		innerMapVacant = vacantCountMap.get("F5");
		innerMapOccupied = occupiedCountMap.get("F5");
		// floorWiseMap.get("floors").get("infosec");
		// System.out.println("innemap info"+innerMap.get("Infosec").getCabin_Count()); */
		try {
			//System.out.println("F5");
			// 7th Floor details ---------------------------------------
			Row dataRow5 = sheet.createRow(8);
			dataRow5.createCell(0).setCellValue("ETV 5th F");
			dataRow5.getCell(0).setCellStyle(headerSeatsStyle);
			dataRow5.createCell(1).setCellValue("SEZ");

			dataRow5.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("workstation"));
			dataRow5.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("cabin"));
			dataRow5.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("ODC"));
			dataRow5.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("workstation")+multiMapTotalBuildingSeat.get("F5").occurrencesOf("cabin")+multiMapTotalBuildingSeat.get("F5").occurrencesOf("ODC")); 
			
			dataRow5.getCell(5).setCellStyle(buildingtotalStyle);

			if (multimapOccupiedBySARD != null) {
				System.out.println("SARD");
		
				dataRow5.createCell(6).setCellValue(multimapOccupiedBySARD.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(7).setCellValue(multimapOccupiedBySARD.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(8).setCellValue(multimapOccupiedBySARD.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(9).setCellValue(multimapOccupiedBySARD.get("F5").size());
				dataRow5.createCell(10).setCellValue(multimapSARDheadcount.get("F5").size());

			}
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
	
				dataRow5.createCell(11).setCellValue(multimapOccupiedByISBL.get("F5").occurrencesOf("workstation"));      
				dataRow5.createCell(12).setCellValue(multimapOccupiedByISBL.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(13).setCellValue(multimapOccupiedByISBL.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(14).setCellValue(multimapOccupiedByISBL.get("F5").size());
				dataRow5.createCell(15).setCellValue(multimapPANDCheadcount.get("F5").size());
			}
			if (multimapOccupiedByINFOSEC != null) {
	
				dataRow5.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F5").size());
				dataRow5.createCell(20).setCellValue(multimapISBLheadcount.get("F5").size());

			} //
			if (multimapOccupiedByPANDC != null) {

				dataRow5.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F5").size());
				dataRow5.createCell(25).setCellValue(multimapInfosecheadcount.get("F5").size());
			} 
			if (multimapOccupiedSeats != null) {
				dataRow5.createCell(26).setCellValue(multimapOccupiedSeats.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(27).setCellValue(multimapOccupiedSeats.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(28).setCellValue(multimapOccupiedSeats.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(29).setCellValue(multimapOccupiedSeats.get("F5").size());
				dataRow5.createCell(30).setCellValue(multimapOccupiedSeats.get("F5").size());
				
				dataRow5.getCell(30).setCellStyle(headerOccupiedSeatsStyle);
			} 
			if (multimapTotalVacant != null) {
				dataRow5.createCell(31).setCellValue(multimapTotalVacant.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(32).setCellValue(multimapTotalVacant.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(33).setCellValue(multimapTotalVacant.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(34).setCellValue(multimapTotalVacant.get("F5").size());
				
				dataRow5.getCell(34).setCellStyle(headerVacantSeatsStyle);
			} 
		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		} // 

		/***************************************
		 * //F5 Starts Here
		 **********************************/

		/***************************************
		 * //F7 Starts Here
		 **********************************/
		/*
		Map<String, WorkstationType> innerMap7 = floorWiseMap.get("F7");
		WorkstationType innerMapTotal7 = totalCountMap.get("F7");
		innerMapVacant = vacantCountMap.get("F7");
		innerMapOccupied = occupiedCountMap.get("F7"); */
		try {
			//System.out.println("F7");
			// 7th Floor details ---------------------------------------
			Row dataRow7 = sheet.createRow(9);

			dataRow7.createCell(0).setCellValue("ETV 7th F");
			dataRow7.getCell(0).setCellStyle(headerSeatsStyle);
			dataRow7.createCell(1).setCellValue("SEZ");

			dataRow7.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("workstation"));
			dataRow7.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("cabin"));
			dataRow7.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("ODC"));
			dataRow7.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("workstation")+multiMapTotalBuildingSeat.get("F7").occurrencesOf("cabin")+multiMapTotalBuildingSeat.get("F7").occurrencesOf("ODC"));      
			
			dataRow7.getCell(5).setCellStyle(buildingtotalStyle);
			
			if (multimapOccupiedBySARD != null) {
				System.out.println("SARD");

				dataRow7.createCell(6).setCellValue(multimapOccupiedBySARD.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(7).setCellValue(multimapOccupiedBySARD.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(8).setCellValue(multimapOccupiedBySARD.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(9).setCellValue(multimapOccupiedBySARD.get("F7").size());   
				dataRow7.createCell(10).setCellValue(multimapSARDheadcount.get("F7").size());   

			}
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");

				dataRow7.createCell(11).setCellValue(multimapOccupiedByISBL.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(12).setCellValue(multimapOccupiedByISBL.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(13).setCellValue(multimapOccupiedByISBL.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(14).setCellValue(multimapOccupiedByISBL.get("F7").size());   
				dataRow7.createCell(15).setCellValue(multimapPANDCheadcount.get("F7").size());   
			}
			if (multimapOccupiedByINFOSEC != null) {
				System.out.println("Infosec");

				dataRow7.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F7").size());   
				dataRow7.createCell(20).setCellValue(multimapISBLheadcount.get("F7").size());   

			} //
			if (multimapOccupiedByPANDC != null) {
				System.out.println("P&C");

				dataRow7.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F7").size()); 
				dataRow7.createCell(25).setCellValue(multimapInfosecheadcount.get("F7").size()); 

			} 
			if (multimapOccupiedSeats != null) {
				dataRow7.createCell(26).setCellValue(multimapOccupiedSeats.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(27).setCellValue(multimapOccupiedSeats.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(28).setCellValue(multimapOccupiedSeats.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(29).setCellValue(multimapOccupiedSeats.get("F7").size());
				dataRow7.createCell(30).setCellValue(multimapOccupiedSeats.get("F7").size());
				
				dataRow7.getCell(30).setCellStyle(headerOccupiedSeatsStyle);
			} else {
				dataRow7.createCell(26).setCellValue(0);
				dataRow7.createCell(27).setCellValue(0);
				dataRow7.createCell(28).setCellValue(0);
				dataRow7.createCell(29).setCellValue(0);
				dataRow7.createCell(30).setCellValue(0);
			}
			if (multimapTotalVacant != null) {
				dataRow7.createCell(31).setCellValue(multimapTotalVacant.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(32).setCellValue(multimapTotalVacant.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(33).setCellValue(multimapTotalVacant.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(34).setCellValue(multimapTotalVacant.get("F7").size());
				
				dataRow7.getCell(34).setCellStyle(headerVacantSeatsStyle);
			} else {
				dataRow7.createCell(31).setCellValue(0);
				dataRow7.createCell(32).setCellValue(0);
				dataRow7.createCell(33).setCellValue(0);
				dataRow7.createCell(34).setCellValue(0);
			}

		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		}
		// 
		/***************************************
		 * //F7 Ends Here
		 ***********************************************/
		
		/***************************************
		 * //SubTotal Starts Here
		 **********************************/
		System.out.println("SubTotal");
		// SubTotal details ---------------------------------------
		int HeadCountTotalSARD=multimapSARDheadcount.get("F2").size()+	multimapSARDheadcount.get("F3P1").size()+ multimapSARDheadcount.get("F3P2").size()
				+	multimapSARDheadcount.get("F4").size() 	+multimapSARDheadcount.get("F5").size() +		multimapSARDheadcount.get("F7").size();
		//HeadCountTotalSARD=100;
		int HeadCountTotalINFOSEC=multimapInfosecheadcount.get("F2").size()+	multimapInfosecheadcount.get("F3P1").size()+ multimapInfosecheadcount.get("F3P2").size()
				+	multimapInfosecheadcount.get("F4").size() 	+multimapInfosecheadcount.get("F5").size() +		multimapInfosecheadcount.get("F7").size();
		//HeadCountTotalINFOSEC=200;
		int HeadCountTotalPANDC=multimapPANDCheadcount.get("F2").size()+	multimapPANDCheadcount.get("F3P1").size()+ multimapPANDCheadcount.get("F3P2").size()
				+	multimapSARDheadcount.get("F4").size() 	+multimapPANDCheadcount.get("F5").size() +		multimapPANDCheadcount.get("F7").size();
		//HeadCountTotalPANDC=300;
		int HeadCountTotalISBL=multimapISBLheadcount.get("F2").size()+	multimapISBLheadcount.get("F3P1").size()+ multimapISBLheadcount.get("F3P2").size()
				+	multimapISBLheadcount.get("F4").size() 		+multimapISBLheadcount.get("F5").size() +		multimapISBLheadcount.get("F7").size();  
		//HeadCountTotalISBL=400;
		int HeadCountOccupiedSeats=multimapOccupiedSeats.get("F2").size()+	multimapOccupiedSeats.get("F3P1").size()+ multimapOccupiedSeats.get("F3P2").size()
				+	multimapOccupiedSeats.get("F4").size() 		+multimapOccupiedSeats.get("F5").size() +multimapOccupiedSeats.get("F7").size();
		
		int HeadCountTotalVacant=multimapTotalVacant.get("F2").size()+	multimapTotalVacant.get("F3P1").size()+ multimapTotalVacant.get("F3P2").size()
				+	multimapTotalVacant.get("F4").size() 		+multimapTotalVacant.get("F5").size() +multimapTotalVacant.get("F7").size();
		
		
		Row dataRow8 = sheet.createRow(10);
		Row dataRow9 = sheet.createRow(11);
		
		for (int c = 0; c < 35; c++) {
			//dataRow8.createCell(c).setCellValue(0);
			dataRow8.createCell(c);
			dataRow8.getCell(c).setCellStyle(totalSeatsStyle);
			
			//dataRow9.createCell(c).setCellValue(0);
			dataRow9.createCell(c);
			dataRow9.getCell(c).setCellStyle(totalCapacityStyle);
		}
		
		dataRow8.getCell(0).setCellValue("Sub Total");
		dataRow8.getCell(0).setCellStyle(headerSeatsStyle);
		dataRow8.getCell(1).setCellValue("");
		dataRow9.getCell(0).setCellValue("Total");
		dataRow9.getCell(0).setCellStyle(headerSeatsStyle);
		dataRow9.getCell(1).setCellValue("");
		
		SeatCountInfo subtotalBuilding=ReportSubTotal.createExcelSubTotal(multiMapTotalBuildingSeat);
		dataRow8.getCell(2).setCellValue(subtotalBuilding.getWs());
		dataRow8.getCell(3).setCellValue(subtotalBuilding.getCabin());
		dataRow8.getCell(4).setCellValue(subtotalBuilding.getOdc());
		dataRow8.getCell(5).setCellValue(subtotalBuilding.getTotal()); 
		
		//sub Total SARD
		SeatCountInfo subtotalSARD=ReportSubTotal.createExcelSubTotal(multimapOccupiedBySARD);
		dataRow8.getCell(6).setCellValue(subtotalSARD.getWs());
		dataRow8.getCell(7).setCellValue(subtotalSARD.getCabin());
		dataRow8.getCell(8).setCellValue(subtotalSARD.getOdc());
		dataRow8.getCell(9).setCellValue(subtotalSARD.getTotal());
		dataRow8.getCell(10).setCellValue(HeadCountTotalSARD);       
		SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

		//sub Total ISBL
		SeatCountInfo subtotalISBL=ReportSubTotal.createExcelSubTotal(multimapOccupiedByISBL);		
		dataRow8.getCell(11).setCellValue(subtotalISBL.getWs());
		dataRow8.getCell(12).setCellValue(subtotalISBL.getCabin());
		dataRow8.getCell(13).setCellValue(subtotalISBL.getOdc());
		dataRow8.getCell(14).setCellValue(subtotalISBL.getTotal());
		dataRow8.getCell(15).setCellValue(HeadCountTotalPANDC);  
		
		//SubTotal Infosec
		SeatCountInfo subtotalInfosec=ReportSubTotal.createExcelSubTotal(multimapOccupiedByINFOSEC);
		if (subtotalInfosec != null) {
			dataRow8.getCell(16).setCellValue(subtotalInfosec.getWs());
			dataRow8.getCell(17).setCellValue(subtotalInfosec.getCabin());
			dataRow8.getCell(18).setCellValue(subtotalInfosec.getOdc());
			dataRow8.getCell(19).setCellValue(subtotalInfosec.getTotal());
			dataRow8.getCell(20).setCellValue(HeadCountTotalISBL);
		}
		// SubTotal P&C
		SeatCountInfo subtotalPandc=ReportSubTotal.createExcelSubTotal(multimapOccupiedByPANDC);
		dataRow8.getCell(21).setCellValue(subtotalPandc.getWs());
		dataRow8.getCell(22).setCellValue(subtotalPandc.getCabin());
		dataRow8.getCell(23).setCellValue(subtotalPandc.getOdc());
		dataRow8.getCell(24).setCellValue(subtotalPandc.getTotal());
		dataRow8.getCell(25).setCellValue(HeadCountTotalINFOSEC);
		

		// SubTotal Occupied
		SeatCountInfo subtotalOccupied=ReportSubTotal.createExcelSubTotal(multimapOccupiedSeats);
		dataRow8.getCell(26).setCellValue(subtotalOccupied.getWs());
		dataRow8.getCell(27).setCellValue(subtotalOccupied.getCabin());
		dataRow8.getCell(28).setCellValue(subtotalOccupied.getOdc());
		dataRow8.getCell(29).setCellValue(subtotalOccupied.getTotal());
		dataRow8.getCell(30).setCellValue(HeadCountOccupiedSeats);

		// SubTotal Vacant
		SeatCountInfo subtotalVacant=ReportSubTotal.createExcelSubTotal(multimapTotalVacant);
		dataRow8.getCell(31).setCellValue(subtotalVacant.getWs());
		dataRow8.getCell(32).setCellValue(subtotalVacant.getCabin()); 
		dataRow8.getCell(33).setCellValue(subtotalVacant.getOdc());
		dataRow8.getCell(34).setCellValue(HeadCountTotalVacant); 
		
		/***************************************
		 * //SubTotal Ends Here
		 **********************************/
		
		/***************************************Total  ****/
		
		///*
		SeatCountInfo totalBuilding=ReportSubTotal.createExcelSubTotal(multiMapTotalBuildingSeat);
		dataRow9.getCell(2).setCellValue(totalBuilding.getWs());
		dataRow9.getCell(3).setCellValue(totalBuilding.getCabin());
		dataRow9.getCell(4).setCellValue(totalBuilding.getOdc());
		dataRow9.getCell(5).setCellValue(totalBuilding.getTotal());        
		
		//*******Total SARD
		SeatCountInfo totalSARD=ReportSubTotal.createExcelSubTotal(multimapOccupiedBySARD);
		dataRow9.getCell(6).setCellValue(subtotalSARD.getWs());
		dataRow9.getCell(7).setCellValue(subtotalSARD.getCabin());
		dataRow9.getCell(8).setCellValue(subtotalSARD.getOdc());
		dataRow9.getCell(9).setCellValue(subtotalSARD.getTotal());
		dataRow9.getCell(10).setCellValue(HeadCountTotalSARD);       
		//SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

		//*******Total ISBL
		SeatCountInfo totalISBL=ReportSubTotal.createExcelSubTotal(multimapOccupiedByISBL);		
		dataRow9.getCell(11).setCellValue(totalISBL.getWs());
		dataRow9.getCell(12).setCellValue(totalISBL.getCabin());
		dataRow9.getCell(13).setCellValue(totalISBL.getOdc());
		dataRow9.getCell(14).setCellValue(totalISBL.getTotal());
		dataRow9.getCell(15).setCellValue(HeadCountTotalPANDC);    
		         
		//*********Total Infosec
		SeatCountInfo totalInfosec=ReportSubTotal.createExcelSubTotal(multimapOccupiedByINFOSEC);
		if (subtotalInfosec != null) {
			dataRow9.getCell(16).setCellValue(totalInfosec.getWs());
			dataRow9.getCell(17).setCellValue(totalInfosec.getCabin());
			dataRow9.getCell(18).setCellValue(totalInfosec.getOdc());
			dataRow9.getCell(19).setCellValue(totalInfosec.getTotal());
			dataRow9.getCell(20).setCellValue(HeadCountTotalISBL);
		}
		//********* Total P&C
		SeatCountInfo totalPandc=ReportSubTotal.createExcelSubTotal(multimapOccupiedByPANDC);
		dataRow9.getCell(21).setCellValue(subtotalPandc.getWs());
		dataRow9.getCell(22).setCellValue(subtotalPandc.getCabin());
		dataRow9.getCell(23).setCellValue(subtotalPandc.getOdc());
		dataRow9.getCell(24).setCellValue(subtotalPandc.getTotal());
		dataRow9.getCell(25).setCellValue(HeadCountTotalINFOSEC);
		

		//********** Total Occupied
		SeatCountInfo totalOccupied=ReportSubTotal.createExcelSubTotal(multimapOccupiedSeats);
		dataRow9.getCell(26).setCellValue(totalOccupied.getWs());
		dataRow9.getCell(27).setCellValue(totalOccupied.getCabin());
		dataRow9.getCell(28).setCellValue(totalOccupied.getOdc());
		dataRow9.getCell(29).setCellValue(totalOccupied.getTotal());
		dataRow9.getCell(30).setCellValue(HeadCountOccupiedSeats);  

		//*********** Total Vacant
		SeatCountInfo totalVacant=ReportSubTotal.createExcelSubTotal(multimapTotalVacant);
		dataRow9.getCell(31).setCellValue(totalVacant.getWs());
		dataRow9.getCell(32).setCellValue(totalVacant.getCabin());
		dataRow9.getCell(33).setCellValue(totalVacant.getOdc());
		dataRow9.getCell(34).setCellValue(HeadCountTotalVacant);  
		
		/***************************************
		 * /Total Ends Here
		 **********************************/
		  
		/*
		SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

		ConditionalFormattingRule rule1 = sheetCF.createConditionalFormattingRule("MOD(ROW(),2)");
		PatternFormatting fill1 = rule1.createPatternFormatting();
		fill1.setFillBackgroundColor(IndexedColors.LIGHT_GREEN.index);
		fill1.setFillPattern(PatternFormatting.SOLID_FOREGROUND); 
		//SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting(); */


		/*
		 * CellRangeAddress[] regions = { CellRangeAddress.valueOf("A2:A4") };
		 * 
		 * sheetCF.addConditionalFormatting(regions, rule1);
		 */
		
		try {
			//FileOutputStream out = new FileOutputStream(new File("reportfloorwise.xlsx"));
			workbook.write(out);
			out.close();
			System.out.println("Excel with cells written successfully");

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
		//return null;
	}
	/*************************************
	 * Excel Ends Created By Thiru
	 **************************************************************************************************************************/
	}
}
