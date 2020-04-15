package com.wms.dao;

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
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.eclipse.collections.api.multimap.bag.MutableBagMultimap;

import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.report.WorkstationType;

public class CreateExcelAdminReport {
	/*************************************
	 * Excel Starts Created By Thiru
	 **************************************************************************************************************************/
	public static ByteArrayInputStream createExcelHeaders(MutableBagMultimap multiMapTotalBuildingSeat,MutableBagMultimap multimapOccupiedBySARD
			,MutableBagMultimap multimapOccupiedByINFOSEC,MutableBagMultimap multimapOccupiedByPANDC ,MutableBagMultimap multimapOccupiedByISBL) throws IOException
	
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

		/***************************************
		 * Header Starts Here
		 **********************************/

		Cell cell2 = dataRow.createCell(3);
		cell2.setCellValue("Total Building Seats");
		cell2.setCellStyle(headerSeatCapacityStyle);
		// sheet.addMergedRegion(new CellRangeAddress(1,2,2,5));
		// dataRow.createCell(23).setCellValue("Occupied seats");
		// sheet.addMergedRegion(new CellRangeAddress(5,5,5,10));
		dataRow.createCell(28).setCellValue("Occupied seats");
		dataRow.createCell(32).setCellValue("Total Vacant Seats");
		// dataRow.createCell(3).setCellFormula("Total Vacant Seats");

		Row dataRow02 = sheet.createRow(2);
		dataRow02.createCell(7).setCellValue("Occupied by SARD");
		dataRow02.createCell(13).setCellValue("Occupied by ISBL");
		dataRow02.createCell(18).setCellValue("Occupied by Infosec");
		dataRow02.createCell(23).setCellValue("Occupied by P&C");

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
		
		System.out.println("Floor 2 Workstation Count is " + multiMapTotalBuildingSeat.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Workstation Count is " + multiMapTotalBuildingSeat.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 Workstation Count is " + multiMapTotalBuildingSeat.get("F2").occurrencesOf("ODC"));

		try {
			Row dataRow1 = sheet.createRow(4);
			dataRow1.createCell(0).setCellValue("ETV 2nd F");
			dataRow1.createCell(1).setCellValue("SEZ");
			System.out.println("F2");
			// System.out.println("TotalCount:"+innerMapTotal.getWS_Count());
			if (multiMapTotalBuildingSeat != null) {
				dataRow1.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F2").size());  
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
				dataRow1.createCell(10).setCellValue(multimapOccupiedBySARD.get("F2").size());    
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
				dataRow1.createCell(15).setCellValue(multimapOccupiedByISBL.get("F2").size());
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
				dataRow1.createCell(20).setCellValue(multimapOccupiedByINFOSEC.get("F2").size());
			}
			if (multimapOccupiedByPANDC != null) {
				dataRow1.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F2").size());
				dataRow1.createCell(25).setCellValue(multimapOccupiedByPANDC.get("F2").size());

			} /*

			if (innerMapOccupied != null) {
				dataRow1.createCell(26).setCellValue(innerMapOccupied.getWS_Count());
				dataRow1.createCell(27).setCellValue(innerMapOccupied.getCabin_Count());
				dataRow1.createCell(28).setCellValue(innerMapOccupied.getODC_Count());
				dataRow1.createCell(29).setCellValue(innerMapOccupied.getTotal_Count());
				dataRow1.createCell(30).setCellValue(innerMapOccupied.getTotal_Count());
			} else {
				dataRow1.createCell(26).setCellValue(0);
				dataRow1.createCell(27).setCellValue(0);
				dataRow1.createCell(28).setCellValue(0);
				dataRow1.createCell(29).setCellValue(0);
				dataRow1.createCell(30).setCellValue(0);
			}
			if (innerMapVacant != null) {
				dataRow1.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow1.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow1.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow1.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
			} else {
				dataRow1.createCell(31).setCellValue(0);
				dataRow1.createCell(32).setCellValue(0);
				dataRow1.createCell(33).setCellValue(0);
				dataRow1.createCell(34).setCellValue(0);
			} */

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
		System.out.println("F3P1");
		Row dataRow13 = sheet.createRow(5);
		dataRow13.createCell(0).setCellValue("ETV 3rd F");
		dataRow13.createCell(1).setCellValue("SEZ");
		/*
		Map<String, WorkstationType> innerMap31 = floorWiseMap.get("F3P1");
		WorkstationType innerMapTotal31 = totalCountMap.get("F3P1");
		innerMapVacant = vacantCountMap.get("F3P1");
		innerMapOccupied = occupiedCountMap.get("F3P1"); */
		try {
			System.out.println("F3P1");
			//Row dataRow13 = sheet.createRow(5);
			dataRow13.createCell(0).setCellValue("ETV 3rd F");
			dataRow13.createCell(1).setCellValue("SEZ");

			dataRow13.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("workstation"));
			dataRow13.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("cabin"));
			dataRow13.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("ODC"));
			dataRow13.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F3P1").size()); 
	
			if (multimapOccupiedBySARD != null) {
				dataRow13.createCell(6).setCellValue(multimapOccupiedBySARD.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(7).setCellValue(multimapOccupiedBySARD.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(8).setCellValue(multimapOccupiedBySARD.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(9).setCellValue(multimapOccupiedBySARD.get("F3P1").size());
				dataRow13.createCell(10).setCellValue(multimapOccupiedBySARD.get("F3P1").size());
			}
		
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
				
				dataRow13.createCell(11).setCellValue(multimapOccupiedByISBL.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(12).setCellValue(multimapOccupiedByISBL.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(13).setCellValue(multimapOccupiedByISBL.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(14).setCellValue(multimapOccupiedByISBL.get("F3P1").size());
				dataRow13.createCell(15).setCellValue(multimapOccupiedByISBL.get("F3P1").size());

			}
			if (multimapOccupiedByINFOSEC != null) {
				dataRow13.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").size());
				dataRow13.createCell(20).setCellValue(multimapOccupiedByINFOSEC.get("F3P1").size());
			} //
			if (multimapOccupiedByPANDC != null) {
				dataRow13.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F3P1").size());
				dataRow13.createCell(25).setCellValue(multimapOccupiedByPANDC.get("F3P1").size());

			} /*
			dataRow13.createCell(26).setCellValue(innerMapOccupied.getWS_Count());
			dataRow13.createCell(27).setCellValue(innerMapOccupied.getCabin_Count());
			dataRow13.createCell(28).setCellValue(innerMapOccupied.getODC_Count());
			dataRow13.createCell(29).setCellValue(innerMapOccupied.getTotal_Count());
			dataRow13.createCell(30).setCellValue(innerMapOccupied.getTotal_Count());

			if (innerMapVacant != null) {
				dataRow13.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow13.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow13.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow13.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
			} else {
				dataRow13.createCell(31).setCellValue(0);
				dataRow13.createCell(32).setCellValue(0);
				dataRow13.createCell(33).setCellValue(0);
				dataRow13.createCell(34).setCellValue(0);
			}*/

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
			System.out.println("F3P2");
			// 4th Floor details---------------------------------------
			Row dataRow3 = sheet.createRow(6);
			dataRow3.createCell(0).setCellValue("ETV 3rd F");
			dataRow3.createCell(1).setCellValue("SEZ");
			dataRow3.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("workstation"));
			dataRow3.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("cabin"));
			dataRow3.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("ODC"));
			dataRow3.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F3P2").size());
			
			
			if (multimapOccupiedBySARD != null) {
				System.out.println("SARD");
				
				dataRow3.createCell(6).setCellValue(multimapOccupiedBySARD.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(7).setCellValue(multimapOccupiedBySARD.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(8).setCellValue(multimapOccupiedBySARD.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(9).setCellValue(multimapOccupiedBySARD.get("F3P2").size());
				dataRow3.createCell(10).setCellValue(multimapOccupiedBySARD.get("F3P2").size());    

			}
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
				
				dataRow3.createCell(11).setCellValue(multimapOccupiedByISBL.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(12).setCellValue(multimapOccupiedByISBL.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(13).setCellValue(multimapOccupiedByISBL.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(14).setCellValue(multimapOccupiedByISBL.get("F3P2").size());
				dataRow3.createCell(15).setCellValue(multimapOccupiedByISBL.get("F3P2").size());

			}
			if (multimapOccupiedByINFOSEC != null) {
				System.out.println("Infosec");
				
				dataRow3.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").size());
				dataRow3.createCell(20).setCellValue(multimapOccupiedByINFOSEC.get("F3P2").size());

			} //
			if (multimapOccupiedByPANDC!= null) {
				System.out.println("P&C");
				
				dataRow3.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F3P2").size());
				dataRow3.createCell(25).setCellValue(multimapOccupiedByPANDC.get("F3P2").size());

			}  /*
			if (innerMapOccupied != null) {
				dataRow3.createCell(26).setCellValue(innerMapOccupied.getWS_Count());
				dataRow3.createCell(27).setCellValue(innerMapOccupied.getCabin_Count());
				dataRow3.createCell(28).setCellValue(innerMapOccupied.getODC_Count());
				dataRow3.createCell(29).setCellValue(innerMapOccupied.getTotal_Count());
				dataRow3.createCell(30).setCellValue(innerMapOccupied.getTotal_Count());
			} else {
				dataRow3.createCell(26).setCellValue(0);
				dataRow3.createCell(27).setCellValue(0);
				dataRow3.createCell(28).setCellValue(0);
				dataRow3.createCell(29).setCellValue(0);
				dataRow3.createCell(30).setCellValue(0);
			}
			if (innerMapVacant != null) {
				dataRow3.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow3.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow3.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow3.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
			} else {
				dataRow3.createCell(31).setCellValue(0);
				dataRow3.createCell(32).setCellValue(0);
				dataRow3.createCell(33).setCellValue(0);
				dataRow3.createCell(34).setCellValue(0);
			} */

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
			System.out.println("F4");
			// 5th Floor details ---------------------------------------
			Row dataRow4 = sheet.createRow(7);
			dataRow4.createCell(0).setCellValue("ETV 4th floor (New)");
			dataRow4.createCell(1).setCellValue("SEZ");
		
			dataRow4.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("workstation"));
			dataRow4.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("cabin"));
			dataRow4.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F4").occurrencesOf("ODC"));
			dataRow4.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F4").size());
			 
			
			if (multimapOccupiedBySARD != null) {
				dataRow4.createCell(6).setCellValue(multimapOccupiedBySARD.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(7).setCellValue(multimapOccupiedBySARD.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(8).setCellValue(multimapOccupiedBySARD.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(9).setCellValue(multimapOccupiedBySARD.get("F4").size());
				dataRow4.createCell(10).setCellValue(multimapOccupiedBySARD.get("F4").size());
			}
			if (multimapOccupiedByISBL != null) {
				
				dataRow4.createCell(11).setCellValue(multimapOccupiedByISBL.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(12).setCellValue(multimapOccupiedByISBL.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(13).setCellValue(multimapOccupiedByISBL.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(14).setCellValue(multimapOccupiedByISBL.get("F4").size());
				dataRow4.createCell(15).setCellValue(multimapOccupiedByISBL.get("F4").size());

			}
			if (multimapOccupiedByINFOSEC != null) {
				dataRow4.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F4").size());
				dataRow4.createCell(20).setCellValue(multimapOccupiedByINFOSEC.get("F4").size());

			} //
			if (multimapOccupiedByPANDC != null) {
				dataRow4.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F4").size());
				dataRow4.createCell(25).setCellValue(multimapOccupiedByPANDC.get("F4").size());

			} /*
			if (innerMapOccupied != null) {
				dataRow4.createCell(26).setCellValue(innerMapOccupied.getWS_Count());
				dataRow4.createCell(27).setCellValue(innerMapOccupied.getCabin_Count());
				dataRow4.createCell(28).setCellValue(innerMapOccupied.getODC_Count());
				dataRow4.createCell(29).setCellValue(innerMapOccupied.getTotal_Count());
				dataRow4.createCell(30).setCellValue(innerMapOccupied.getTotal_Count());
			} else {
				dataRow4.createCell(26).setCellValue(0);
				dataRow4.createCell(27).setCellValue(0);
				dataRow4.createCell(28).setCellValue(0);
				dataRow4.createCell(29).setCellValue(0);
				dataRow4.createCell(30).setCellValue(0);
			}
			if (innerMapVacant != null) {
				dataRow4.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow4.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow4.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow4.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
			} else {
				dataRow4.createCell(31).setCellValue(0);
				dataRow4.createCell(32).setCellValue(0);
				dataRow4.createCell(33).setCellValue(0);
				dataRow4.createCell(34).setCellValue(0);
			} */

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
			System.out.println("F5");
			// 7th Floor details ---------------------------------------
			Row dataRow5 = sheet.createRow(8);
			dataRow5.createCell(0).setCellValue("ETV 5th F");
			dataRow5.createCell(1).setCellValue("SEZ");

			dataRow5.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("workstation"));
			dataRow5.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("cabin"));
			dataRow5.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F5").occurrencesOf("ODC"));
			dataRow5.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F5").size());     

			if (multimapOccupiedBySARD != null) {
				System.out.println("SARD");
		
				dataRow5.createCell(6).setCellValue(multimapOccupiedBySARD.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(7).setCellValue(multimapOccupiedBySARD.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(8).setCellValue(multimapOccupiedBySARD.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(9).setCellValue(multimapOccupiedBySARD.get("F5").size());
				dataRow5.createCell(10).setCellValue(multimapOccupiedBySARD.get("F5").size());

			}
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");
	
				dataRow5.createCell(11).setCellValue(multimapOccupiedByISBL.get("F5").occurrencesOf("workstation"));      
				dataRow5.createCell(12).setCellValue(multimapOccupiedByISBL.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(13).setCellValue(multimapOccupiedByISBL.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(14).setCellValue(multimapOccupiedByISBL.get("F5").size());
				dataRow5.createCell(15).setCellValue(multimapOccupiedByISBL.get("F5").size());
			}
			if (multimapOccupiedByINFOSEC != null) {
	
				dataRow5.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F5").size());
				dataRow5.createCell(20).setCellValue(multimapOccupiedByINFOSEC.get("F5").size());

			} //
			if (multimapOccupiedByPANDC != null) {

				dataRow5.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F5").size());
				dataRow5.createCell(25).setCellValue(multimapOccupiedByPANDC.get("F5").size());
			} /*
			if (innerMapOccupied != null) {
				dataRow5.createCell(26).setCellValue(innerMapOccupied.getWS_Count());
				dataRow5.createCell(27).setCellValue(innerMapOccupied.getCabin_Count());
				dataRow5.createCell(28).setCellValue(innerMapOccupied.getODC_Count());
				dataRow5.createCell(29).setCellValue(innerMapOccupied.getTotal_Count());
				dataRow5.createCell(30).setCellValue(innerMapOccupied.getTotal_Count());
			} else {
				dataRow5.createCell(26).setCellValue(0);
				dataRow5.createCell(27).setCellValue(0);
				dataRow5.createCell(28).setCellValue(0);
				dataRow5.createCell(29).setCellValue(0);
				dataRow5.createCell(30).setCellValue(0);
			}
			if (innerMapVacant != null) {
				dataRow5.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow5.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow5.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow5.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
			} else {
				dataRow5.createCell(31).setCellValue(0);
				dataRow5.createCell(32).setCellValue(0);
				dataRow5.createCell(33).setCellValue(0);
				dataRow5.createCell(34).setCellValue(0);
			}*/
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
			System.out.println("F7");
			// 7th Floor details ---------------------------------------
			Row dataRow7 = sheet.createRow(9);

			dataRow7.createCell(0).setCellValue("ETV 7th F");
			dataRow7.createCell(1).setCellValue("SEZ");

			dataRow7.createCell(2).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("workstation"));
			dataRow7.createCell(3).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("cabin"));
			dataRow7.createCell(4).setCellValue(multiMapTotalBuildingSeat.get("F7").occurrencesOf("ODC"));
			dataRow7.createCell(5).setCellValue(multiMapTotalBuildingSeat.get("F7").size());      
			
			if (multimapOccupiedBySARD != null) {
				System.out.println("SARD");

				dataRow7.createCell(6).setCellValue(multimapOccupiedBySARD.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(7).setCellValue(multimapOccupiedBySARD.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(8).setCellValue(multimapOccupiedBySARD.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(9).setCellValue(multimapOccupiedBySARD.get("F7").size());   
				dataRow7.createCell(10).setCellValue(multimapOccupiedBySARD.get("F7").size());   

			}
			if (multimapOccupiedByISBL != null) {
				System.out.println("ISBL");

				dataRow7.createCell(11).setCellValue(multimapOccupiedByISBL.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(12).setCellValue(multimapOccupiedByISBL.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(13).setCellValue(multimapOccupiedByISBL.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(14).setCellValue(multimapOccupiedByISBL.get("F7").size());   
				dataRow7.createCell(15).setCellValue(multimapOccupiedByISBL.get("F7").size());   
			}
			if (multimapOccupiedByINFOSEC != null) {
				System.out.println("Infosec");

				dataRow7.createCell(16).setCellValue(multimapOccupiedByINFOSEC.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(17).setCellValue(multimapOccupiedByINFOSEC.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(18).setCellValue(multimapOccupiedByINFOSEC.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(19).setCellValue(multimapOccupiedByINFOSEC.get("F7").size());   
				dataRow7.createCell(20).setCellValue(multimapOccupiedByINFOSEC.get("F7").size());   

			} //
			if (multimapOccupiedByPANDC != null) {
				System.out.println("P&C");

				dataRow7.createCell(21).setCellValue(multimapOccupiedByPANDC.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(22).setCellValue(multimapOccupiedByPANDC.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(23).setCellValue(multimapOccupiedByPANDC.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(24).setCellValue(multimapOccupiedByPANDC.get("F7").size()); 
				dataRow7.createCell(25).setCellValue(multimapOccupiedByPANDC.get("F7").size()); 

			} /*
			if (innerMapOccupied != null) {
				dataRow7.createCell(26).setCellValue(innerMapOccupied.getWS_Count());
				dataRow7.createCell(27).setCellValue(innerMapOccupied.getCabin_Count());
				dataRow7.createCell(28).setCellValue(innerMapOccupied.getODC_Count());
				dataRow7.createCell(29).setCellValue(innerMapOccupied.getTotal_Count());
				dataRow7.createCell(30).setCellValue(innerMapOccupied.getTotal_Count());
			} else {
				dataRow7.createCell(26).setCellValue(0);
				dataRow7.createCell(27).setCellValue(0);
				dataRow7.createCell(28).setCellValue(0);
				dataRow7.createCell(29).setCellValue(0);
				dataRow7.createCell(30).setCellValue(0);
			}
			if (innerMapVacant != null) {
				dataRow7.createCell(31).setCellValue(innerMapVacant.getWS_Count());
				dataRow7.createCell(32).setCellValue(innerMapVacant.getCabin_Count());
				dataRow7.createCell(33).setCellValue(innerMapVacant.getODC_Count());
				dataRow7.createCell(34).setCellValue(innerMapVacant.getTotal_Count());
			} else {
				dataRow7.createCell(31).setCellValue(0);
				dataRow7.createCell(32).setCellValue(0);
				dataRow7.createCell(33).setCellValue(0);
				dataRow7.createCell(34).setCellValue(0);
			}*/

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
		 *********************************

		try {
			System.out.println("SubTotal");
			// SubTotal details ---------------------------------------
			Row dataRow8 = sheet.createRow(10);
			for (int c = 0; c < 35; c++) {
				dataRow8.createCell(c).setCellValue(0);
				dataRow8.getCell(c).setCellStyle(totalCapacityStyle);
			}

			dataRow8.getCell(0).setCellValue("Sub Total");
			dataRow8.getCell(1).setCellValue("");
			// Total Seats
			WorkstationType totalBuildingSeat = totalValueMap.get("totalBuildingSeat");
			dataRow8.getCell(2).setCellValue(totalBuildingSeat.getTotal_WS_Count());
			dataRow8.getCell(3).setCellValue(totalBuildingSeat.getTotal_Cabin_Count());
			dataRow8.getCell(4).setCellValue(totalBuildingSeat.getTotal_ODC_Count());
			dataRow8.getCell(5).setCellValue(totalBuildingSeat.getTotal_Total_Count());

			// Total SARD
			WorkstationType totalSARDSeat = totalValueMap.get("totalSARDSeat");
			dataRow8.getCell(6).setCellValue(totalSARDSeat.getTotal_WS_Count());
			dataRow8.getCell(7).setCellValue(totalSARDSeat.getTotal_Cabin_Count());
			dataRow8.getCell(8).setCellValue(totalSARDSeat.getTotal_ODC_Count());
			dataRow8.getCell(9).setCellValue(totalSARDSeat.getTotal_Total_Count());
			dataRow8.getCell(10).setCellValue(totalSARDSeat.getTotal_Total_Count());

			// Total ISBL
			WorkstationType totalISBLSeat = totalValueMap.get("totalISBLSeat");
			dataRow8.getCell(11).setCellValue(totalISBLSeat.getTotal_WS_Count());
			dataRow8.getCell(12).setCellValue(totalISBLSeat.getTotal_Cabin_Count());
			dataRow8.getCell(13).setCellValue(totalISBLSeat.getTotal_ODC_Count());
			dataRow8.getCell(14).setCellValue(totalISBLSeat.getTotal_Total_Count());
			dataRow8.getCell(15).setCellValue(totalISBLSeat.getTotal_Total_Count());

			// Total Infosec
			WorkstationType totalInfosecSeat = totalValueMap.get("totalInfosecSeat");
			if (totalInfosecSeat != null) {
				dataRow8.getCell(16).setCellValue(totalInfosecSeat.getTotal_WS_Count());
				dataRow8.getCell(17).setCellValue(totalInfosecSeat.getTotal_Cabin_Count());
				dataRow8.getCell(18).setCellValue(totalInfosecSeat.getTotal_ODC_Count());
				dataRow8.getCell(19).setCellValue(totalInfosecSeat.getTotal_Total_Count());
				dataRow8.getCell(20).setCellValue(totalInfosecSeat.getTotal_Total_Count());
			}
			// Total P&C
			WorkstationType totalPCSeat = totalValueMap.get("totalPCSeat");
			dataRow8.getCell(21).setCellValue(totalPCSeat.getTotal_WS_Count());
			dataRow8.getCell(22).setCellValue(totalPCSeat.getTotal_Cabin_Count());
			dataRow8.getCell(23).setCellValue(totalPCSeat.getTotal_ODC_Count());
			dataRow8.getCell(24).setCellValue(totalPCSeat.getTotal_Total_Count());
			dataRow8.getCell(25).setCellValue(totalPCSeat.getTotal_Total_Count());

			// Total Occupied
			WorkstationType totalOccupiedSeat = totalValueMap.get("totalOccupiedSeat");
			dataRow8.getCell(26).setCellValue(totalOccupiedSeat.getTotal_WS_Count());
			dataRow8.getCell(27).setCellValue(totalOccupiedSeat.getTotal_Cabin_Count());
			dataRow8.getCell(28).setCellValue(totalOccupiedSeat.getTotal_ODC_Count());
			dataRow8.getCell(29).setCellValue(totalOccupiedSeat.getTotal_Total_Count());
			dataRow8.getCell(30).setCellValue(totalOccupiedSeat.getTotal_Total_Count());

			// Total Vacant
			WorkstationType totalVacantSeat = totalValueMap.get("totalVacantSeat");
			dataRow8.getCell(31).setCellValue(totalVacantSeat.getTotal_WS_Count());
			dataRow8.getCell(32).setCellValue(totalVacantSeat.getTotal_Cabin_Count());
			dataRow8.getCell(33).setCellValue(totalVacantSeat.getTotal_ODC_Count());
			dataRow8.getCell(34).setCellValue(totalVacantSeat.getTotal_Total_Count()); */
			/***************************************
			 * //SubTotal Ends Here
			 **********************************/
		/*	for (int c = 0; c < 35; c++) {

			}

		} catch (Exception ex1) {
			System.out.println("Error reading file");
			ex1.printStackTrace();
		}
		*/
		// End

		SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

		ConditionalFormattingRule rule1 = sheetCF.createConditionalFormattingRule("MOD(ROW(),2)");
		PatternFormatting fill1 = rule1.createPatternFormatting();
		fill1.setFillBackgroundColor(IndexedColors.LIGHT_GREEN.index);
		fill1.setFillPattern(PatternFormatting.SOLID_FOREGROUND);

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
