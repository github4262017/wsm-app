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
	public static ByteArrayInputStream createExcelHeaders(MutableBagMultimap IlI0OIlI1,MutableBagMultimap i1IoiI0I0
			,MutableBagMultimap loliiI0I1,MutableBagMultimap IO10lIOIl ,MutableBagMultimap Io10OIIIo
			,MutableBagMultimap I1I0OI0Io,MutableBagMultimap ilO0IIoIo,MutableBagMultimap ioO0OIIIl
			,MutableBagMultimap iOl11IOIi,MutableBagMultimap o11ilIOIi,MutableBagMultimap oII1iI1II) throws IOException
      
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

		CellStyle lol00IiIo = workbook.createCellStyle();
		// Setting Background color
		lol00IiIo.setBottomBorderColor(IndexedColors.BLACK.getIndex());
		lol00IiIo.setFillForegroundColor(IndexedColors.LIGHT_GREEN.getIndex());  
        lol00IiIo.setFillPattern(FillPatternType.SOLID_FOREGROUND); 
        
        CellStyle oII1iI1I0 = workbook.createCellStyle();
        oII1iI1I0.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        oII1iI1I0.setFillForegroundColor(IndexedColors.PALE_BLUE.getIndex());  
        oII1iI1I0.setFillPattern(FillPatternType.SOLID_FOREGROUND); 
        
        CellStyle loliiI0I0 = workbook.createCellStyle();
        loliiI0I0.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        loliiI0I0.setFillForegroundColor(IndexedColors.ROSE.getIndex());  
        loliiI0I0.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        
        CellStyle I0il0I1IO = workbook.createCellStyle();
        I0il0I1IO.setBottomBorderColor(IndexedColors.BLACK.getIndex());
        I0il0I1IO.setFillForegroundColor(IndexedColors.YELLOW.getIndex());  
        I0il0I1IO.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        
        CellStyle headerSeatsStyle = workbook.createCellStyle();
        headerSeatsStyle.setBottomBorderColor(IndexedColors.BLACK.getIndex());
       // headerSeatsStyle.setFillForegroundColor(IndexedColors.YELLOW.getIndex());  
       // headerSeatsStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
         
        XSSFFont font = workbook.createFont();//Create font
        font.setBold(true);//Make font bold
        
        lol00IiIo.setFont(font);//set it to bold 
        oII1iI1I0.setFont(font);
        loliiI0I0.setFont(font);
        I0il0I1IO.setFont(font);
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
		cell1.setCellStyle(lol00IiIo);

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
		celltbs.setCellStyle(oII1iI1I0);  
		
		//Cell cellOcps = dataRow.createCell(28);
		//cellOcps.setCellValue("Occupied seats"); 
		sheet.addMergedRegion(new CellRangeAddress(1,1,6,25));  
		//cellOcps.setCellStyle(headerOccupiedSeatsStyle);  
		for (int c = 6; c < 31; c++) {
			dataRow.createCell(c);
			dataRow.createCell(28).setCellValue("Occupied seats");
			dataRow.getCell(28).setCellStyle(loliiI0I0);
			dataRow.getCell(c).setCellStyle(loliiI0I0);
			
		}
		
		Cell cellVacants0 = dataRow.createCell(31);
		Cell cellVacants = dataRow.createCell(32);
		Cell cellVacants1 = dataRow.createCell(33);
		Cell cellVacants2 = dataRow.createCell(34);
		cellVacants.setCellValue("Total Vacant Seats");
		//sheet.addMergedRegion(new CellRangeAddress(1,1,28,30)); 
		
		sheet.addMergedRegion(CellRangeAddress.valueOf("AF1:AI1"));  
		cellVacants.setCellStyle(I0il0I1IO);
		cellVacants1.setCellStyle(I0il0I1IO);
		cellVacants2.setCellStyle(I0il0I1IO);
		cellVacants0.setCellStyle(I0il0I1IO); 
		// dataRow.createCell(3).setCellFormula("Total Vacant Seats");

		Row o0ollIOIl  = sheet.createRow(2);
		o0ollIOIl .createCell(7).setCellValue("Occupied by SARD");   
		o0ollIOIl .createCell(13).setCellValue("Occupied by P&C");
		o0ollIOIl .createCell(18).setCellValue("Occupied by ISBL");
		o0ollIOIl .createCell(23).setCellValue("Occupied by Infosec");

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
			if (IlI0OIlI1 != null) {
				dataRow1.createCell(2).setCellValue(IlI0OIlI1.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(3).setCellValue(IlI0OIlI1.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(4).setCellValue(IlI0OIlI1.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(5).setCellValue(IlI0OIlI1.get("F2").occurrencesOf("workstation")+IlI0OIlI1.get("F2").occurrencesOf("cabin")+IlI0OIlI1.get("F2").occurrencesOf("ODC")); 
				dataRow1.getCell(5).setCellStyle(buildingtotalStyle);
			} else {
				dataRow1.createCell(2).setCellValue(0); 
				dataRow1.createCell(3).setCellValue(0);
				dataRow1.createCell(4).setCellValue(0);
				dataRow1.createCell(5).setCellValue(0);
			}			
			if (i1IoiI0I0 != null) { 
								
				dataRow1.createCell(6).setCellValue(i1IoiI0I0.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(7).setCellValue(i1IoiI0I0.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(8).setCellValue(i1IoiI0I0.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(9).setCellValue(i1IoiI0I0.get("F2").size());
				dataRow1.createCell(10).setCellValue(ioO0OIIIl.get("F2").size());    
			} else if (i1IoiI0I0.equals(null)) { 
				dataRow1.createCell(6).setCellValue(0);
				dataRow1.createCell(7).setCellValue(0);
				dataRow1.createCell(8).setCellValue(0);
				dataRow1.createCell(9).setCellValue(0);
				dataRow1.createCell(10).setCellValue(0);
			}
            
			// if(innerMapAll.get("ISBL")!=null) {
			if (Io10OIIIo != null) {
				System.out.println("ISBL");
				//WorkstationType wsInfo = innerMapAll.get("ISBL");
				
				// 2nd Floor details---------------------------------------
				dataRow1.createCell(11).setCellValue(Io10OIIIo.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(12).setCellValue(Io10OIIIo.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(13).setCellValue(Io10OIIIo.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(14).setCellValue(Io10OIIIo.get("F2").size());
				dataRow1.createCell(15).setCellValue(o11ilIOIi.get("F2").size());
			} else {
				dataRow1.createCell(6).setCellValue(0);
				dataRow1.createCell(7).setCellValue(0);
				dataRow1.createCell(8).setCellValue(0);
				dataRow1.createCell(9).setCellValue(0);
				dataRow1.createCell(10).setCellValue(0);
			}
			if (loliiI0I1 != null) {
				
				dataRow1.createCell(16).setCellValue(loliiI0I1.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(17).setCellValue(loliiI0I1.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(18).setCellValue(loliiI0I1.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(19).setCellValue(loliiI0I1.get("F2").size());
				dataRow1.createCell(20).setCellValue(iOl11IOIi.get("F2").size());
			}
			if (IO10lIOIl != null) {
				dataRow1.createCell(21).setCellValue(IO10lIOIl.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(22).setCellValue(IO10lIOIl.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(23).setCellValue(IO10lIOIl.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(24).setCellValue(IO10lIOIl.get("F2").size());
				dataRow1.createCell(25).setCellValue(oII1iI1II.get("F2").size());

			} 

			if (I1I0OI0Io != null) {
				dataRow1.createCell(26).setCellValue(I1I0OI0Io.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(27).setCellValue(I1I0OI0Io.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(28).setCellValue(I1I0OI0Io.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(29).setCellValue(I1I0OI0Io.get("F2").size());
				dataRow1.createCell(30).setCellValue(I1I0OI0Io.get("F2").size()); 
				
				dataRow1.getCell(30).setCellStyle(loliiI0I0);
			} 
			if (ilO0IIoIo != null) {
				dataRow1.createCell(31).setCellValue(ilO0IIoIo.get("F2").occurrencesOf("workstation"));
				dataRow1.createCell(32).setCellValue(ilO0IIoIo.get("F2").occurrencesOf("cabin"));
				dataRow1.createCell(33).setCellValue(ilO0IIoIo.get("F2").occurrencesOf("ODC"));
				dataRow1.createCell(34).setCellValue(ilO0IIoIo.get("F2").size());
				
				dataRow1.getCell(34).setCellStyle(I0il0I1IO);
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
			

			dataRow13.createCell(2).setCellValue(IlI0OIlI1.get("F3P1").occurrencesOf("workstation"));
			dataRow13.createCell(3).setCellValue(IlI0OIlI1.get("F3P1").occurrencesOf("cabin"));
			dataRow13.createCell(4).setCellValue(IlI0OIlI1.get("F3P1").occurrencesOf("ODC"));
			dataRow13.createCell(5).setCellValue(IlI0OIlI1.get("F3P1").occurrencesOf("workstation")+IlI0OIlI1.get("F3P1").occurrencesOf("cabin")+IlI0OIlI1.get("F3P1").occurrencesOf("ODC")); 
			dataRow13.getCell(5).setCellStyle(buildingtotalStyle);
	
			if (i1IoiI0I0 != null) {
				dataRow13.createCell(6).setCellValue(i1IoiI0I0.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(7).setCellValue(i1IoiI0I0.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(8).setCellValue(i1IoiI0I0.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(9).setCellValue(i1IoiI0I0.get("F3P1").size());
				dataRow13.createCell(10).setCellValue(ioO0OIIIl.get("F3P1").size());
			}
		
			if (Io10OIIIo != null) {
				System.out.println("ISBL");
				
				dataRow13.createCell(11).setCellValue(Io10OIIIo.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(12).setCellValue(Io10OIIIo.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(13).setCellValue(Io10OIIIo.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(14).setCellValue(Io10OIIIo.get("F3P1").size());
				dataRow13.createCell(15).setCellValue(o11ilIOIi.get("F3P1").size());

			}
			if (loliiI0I1 != null) {
				dataRow13.createCell(16).setCellValue(loliiI0I1.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(17).setCellValue(loliiI0I1.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(18).setCellValue(loliiI0I1.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(19).setCellValue(loliiI0I1.get("F3P1").size());
				dataRow13.createCell(20).setCellValue(iOl11IOIi.get("F3P1").size());
			} //
			if (IO10lIOIl != null) {
				dataRow13.createCell(21).setCellValue(IO10lIOIl.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(22).setCellValue(IO10lIOIl.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(23).setCellValue(IO10lIOIl.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(24).setCellValue(IO10lIOIl.get("F3P1").size());
				dataRow13.createCell(25).setCellValue(oII1iI1II.get("F3P1").size());

			} 
			if (I1I0OI0Io != null) {
			dataRow13.createCell(26).setCellValue(I1I0OI0Io.get("F3P1").occurrencesOf("workstation"));
			dataRow13.createCell(27).setCellValue(I1I0OI0Io.get("F3P1").occurrencesOf("cabin"));
			dataRow13.createCell(28).setCellValue(I1I0OI0Io.get("F3P1").occurrencesOf("ODC"));
			dataRow13.createCell(29).setCellValue(I1I0OI0Io.get("F3P1").size());
			dataRow13.createCell(30).setCellValue(I1I0OI0Io.get("F3P1").size());
			
			dataRow13.getCell(30).setCellStyle(loliiI0I0);
			}
			if (ilO0IIoIo != null) {
				dataRow13.createCell(31).setCellValue(ilO0IIoIo.get("F3P1").occurrencesOf("workstation"));
				dataRow13.createCell(32).setCellValue(ilO0IIoIo.get("F3P1").occurrencesOf("cabin"));
				dataRow13.createCell(33).setCellValue(ilO0IIoIo.get("F3P1").occurrencesOf("ODC"));
				dataRow13.createCell(34).setCellValue(ilO0IIoIo.get("F3P1").size());  
				
				dataRow13.getCell(34).setCellStyle(I0il0I1IO);
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
			dataRow3.createCell(2).setCellValue(IlI0OIlI1.get("F3P2").occurrencesOf("workstation"));
			dataRow3.createCell(3).setCellValue(IlI0OIlI1.get("F3P2").occurrencesOf("cabin"));
			dataRow3.createCell(4).setCellValue(IlI0OIlI1.get("F3P2").occurrencesOf("ODC"));
			dataRow3.createCell(5).setCellValue(IlI0OIlI1.get("F3P2").occurrencesOf("workstation")+IlI0OIlI1.get("F3P2").occurrencesOf("cabin")+IlI0OIlI1.get("F3P2").occurrencesOf("ODC"));
			
			dataRow3.getCell(5).setCellStyle(buildingtotalStyle);
			
			if (i1IoiI0I0 != null) {
				System.out.println("SARD");
				
				dataRow3.createCell(6).setCellValue(i1IoiI0I0.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(7).setCellValue(i1IoiI0I0.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(8).setCellValue(i1IoiI0I0.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(9).setCellValue(i1IoiI0I0.get("F3P2").size());
				dataRow3.createCell(10).setCellValue(ioO0OIIIl.get("F3P2").size());    

			}
			if (Io10OIIIo != null) {
				System.out.println("ISBL");
				
				dataRow3.createCell(11).setCellValue(Io10OIIIo.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(12).setCellValue(Io10OIIIo.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(13).setCellValue(Io10OIIIo.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(14).setCellValue(Io10OIIIo.get("F3P2").size());
				dataRow3.createCell(15).setCellValue(o11ilIOIi.get("F3P2").size());

			}
			if (loliiI0I1 != null) {
				System.out.println("Infosec");
				
				dataRow3.createCell(16).setCellValue(loliiI0I1.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(17).setCellValue(loliiI0I1.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(18).setCellValue(loliiI0I1.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(19).setCellValue(loliiI0I1.get("F3P2").size());
				dataRow3.createCell(20).setCellValue(iOl11IOIi.get("F3P2").size());

			} //
			if (IO10lIOIl!= null) {
				System.out.println("P&C");
				
				dataRow3.createCell(21).setCellValue(IO10lIOIl.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(22).setCellValue(IO10lIOIl.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(23).setCellValue(IO10lIOIl.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(24).setCellValue(IO10lIOIl.get("F3P2").size());
				dataRow3.createCell(25).setCellValue(oII1iI1II.get("F3P2").size());

			}  
			if (I1I0OI0Io != null) {
				dataRow3.createCell(26).setCellValue(I1I0OI0Io.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(27).setCellValue(I1I0OI0Io.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(28).setCellValue(I1I0OI0Io.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(29).setCellValue(I1I0OI0Io.get("F3P2").size());
				dataRow3.createCell(30).setCellValue(I1I0OI0Io.get("F3P2").size());
				
				dataRow3.getCell(30).setCellStyle(loliiI0I0);
			} 
			if (ilO0IIoIo != null) {
				dataRow3.createCell(31).setCellValue(ilO0IIoIo.get("F3P2").occurrencesOf("workstation"));
				dataRow3.createCell(32).setCellValue(ilO0IIoIo.get("F3P2").occurrencesOf("cabin"));
				dataRow3.createCell(33).setCellValue(ilO0IIoIo.get("F3P2").occurrencesOf("ODC"));
				dataRow3.createCell(34).setCellValue(ilO0IIoIo.get("F3P2").size());
				
				dataRow3.getCell(34).setCellStyle(I0il0I1IO);
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
		
			dataRow4.createCell(2).setCellValue(IlI0OIlI1.get("F4").occurrencesOf("workstation"));
			dataRow4.createCell(3).setCellValue(IlI0OIlI1.get("F4").occurrencesOf("cabin"));
			dataRow4.createCell(4).setCellValue(IlI0OIlI1.get("F4").occurrencesOf("ODC"));
			dataRow4.createCell(5).setCellValue(IlI0OIlI1.get("F4").occurrencesOf("workstation")+IlI0OIlI1.get("F4").occurrencesOf("cabin")+IlI0OIlI1.get("F4").occurrencesOf("ODC"));
			 
			dataRow4.getCell(5).setCellStyle(buildingtotalStyle);
			
			if (i1IoiI0I0 != null) {
				dataRow4.createCell(6).setCellValue(i1IoiI0I0.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(7).setCellValue(i1IoiI0I0.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(8).setCellValue(i1IoiI0I0.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(9).setCellValue(i1IoiI0I0.get("F4").size());
				dataRow4.createCell(10).setCellValue(ioO0OIIIl.get("F4").size());
			}
			if (Io10OIIIo != null) {
				
				dataRow4.createCell(11).setCellValue(Io10OIIIo.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(12).setCellValue(Io10OIIIo.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(13).setCellValue(Io10OIIIo.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(14).setCellValue(Io10OIIIo.get("F4").size());
				dataRow4.createCell(15).setCellValue(o11ilIOIi.get("F4").size());

			}
			if (loliiI0I1 != null) {
				dataRow4.createCell(16).setCellValue(loliiI0I1.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(17).setCellValue(loliiI0I1.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(18).setCellValue(loliiI0I1.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(19).setCellValue(loliiI0I1.get("F4").size());
				dataRow4.createCell(20).setCellValue(iOl11IOIi.get("F4").size());

			} //
			if (IO10lIOIl != null) {
				dataRow4.createCell(21).setCellValue(IO10lIOIl.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(22).setCellValue(IO10lIOIl.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(23).setCellValue(IO10lIOIl.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(24).setCellValue(IO10lIOIl.get("F4").size());
				dataRow4.createCell(25).setCellValue(oII1iI1II.get("F4").size());

			} 
			if (I1I0OI0Io != null) {
				dataRow4.createCell(26).setCellValue(I1I0OI0Io.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(27).setCellValue(I1I0OI0Io.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(28).setCellValue(I1I0OI0Io.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(29).setCellValue(I1I0OI0Io.get("F4").size());
				dataRow4.createCell(30).setCellValue(I1I0OI0Io.get("F4").size());
				dataRow4.getCell(30).setCellStyle(loliiI0I0);
			} 
			if (ilO0IIoIo != null) {
				dataRow4.createCell(31).setCellValue(ilO0IIoIo.get("F4").occurrencesOf("workstation"));
				dataRow4.createCell(32).setCellValue(ilO0IIoIo.get("F4").occurrencesOf("cabin"));
				dataRow4.createCell(33).setCellValue(ilO0IIoIo.get("F4").occurrencesOf("ODC"));
				dataRow4.createCell(34).setCellValue(ilO0IIoIo.get("F4").size());
				
				dataRow4.getCell(34).setCellStyle(I0il0I1IO);
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

			dataRow5.createCell(2).setCellValue(IlI0OIlI1.get("F5").occurrencesOf("workstation"));
			dataRow5.createCell(3).setCellValue(IlI0OIlI1.get("F5").occurrencesOf("cabin"));
			dataRow5.createCell(4).setCellValue(IlI0OIlI1.get("F5").occurrencesOf("ODC"));
			dataRow5.createCell(5).setCellValue(IlI0OIlI1.get("F5").occurrencesOf("workstation")+IlI0OIlI1.get("F5").occurrencesOf("cabin")+IlI0OIlI1.get("F5").occurrencesOf("ODC")); 
			
			dataRow5.getCell(5).setCellStyle(buildingtotalStyle);

			if (i1IoiI0I0 != null) {
				System.out.println("SARD");
		
				dataRow5.createCell(6).setCellValue(i1IoiI0I0.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(7).setCellValue(i1IoiI0I0.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(8).setCellValue(i1IoiI0I0.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(9).setCellValue(i1IoiI0I0.get("F5").size());
				dataRow5.createCell(10).setCellValue(ioO0OIIIl.get("F5").size());

			}
			if (Io10OIIIo != null) {
				System.out.println("ISBL");
	
				dataRow5.createCell(11).setCellValue(Io10OIIIo.get("F5").occurrencesOf("workstation"));      
				dataRow5.createCell(12).setCellValue(Io10OIIIo.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(13).setCellValue(Io10OIIIo.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(14).setCellValue(Io10OIIIo.get("F5").size());
				dataRow5.createCell(15).setCellValue(o11ilIOIi.get("F5").size());
			}
			if (loliiI0I1 != null) {
	
				dataRow5.createCell(16).setCellValue(loliiI0I1.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(17).setCellValue(loliiI0I1.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(18).setCellValue(loliiI0I1.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(19).setCellValue(loliiI0I1.get("F5").size());
				dataRow5.createCell(20).setCellValue(iOl11IOIi.get("F5").size());

			} //
			if (IO10lIOIl != null) {

				dataRow5.createCell(21).setCellValue(IO10lIOIl.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(22).setCellValue(IO10lIOIl.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(23).setCellValue(IO10lIOIl.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(24).setCellValue(IO10lIOIl.get("F5").size());
				dataRow5.createCell(25).setCellValue(oII1iI1II.get("F5").size());
			} 
			if (I1I0OI0Io != null) {
				dataRow5.createCell(26).setCellValue(I1I0OI0Io.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(27).setCellValue(I1I0OI0Io.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(28).setCellValue(I1I0OI0Io.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(29).setCellValue(I1I0OI0Io.get("F5").size());
				dataRow5.createCell(30).setCellValue(I1I0OI0Io.get("F5").size());
				
				dataRow5.getCell(30).setCellStyle(loliiI0I0);
			} 
			if (ilO0IIoIo != null) {
				dataRow5.createCell(31).setCellValue(ilO0IIoIo.get("F5").occurrencesOf("workstation"));
				dataRow5.createCell(32).setCellValue(ilO0IIoIo.get("F5").occurrencesOf("cabin"));
				dataRow5.createCell(33).setCellValue(ilO0IIoIo.get("F5").occurrencesOf("ODC"));
				dataRow5.createCell(34).setCellValue(ilO0IIoIo.get("F5").size());
				
				dataRow5.getCell(34).setCellStyle(I0il0I1IO);
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

			dataRow7.createCell(2).setCellValue(IlI0OIlI1.get("F7").occurrencesOf("workstation"));
			dataRow7.createCell(3).setCellValue(IlI0OIlI1.get("F7").occurrencesOf("cabin"));
			dataRow7.createCell(4).setCellValue(IlI0OIlI1.get("F7").occurrencesOf("ODC"));
			dataRow7.createCell(5).setCellValue(IlI0OIlI1.get("F7").occurrencesOf("workstation")+IlI0OIlI1.get("F7").occurrencesOf("cabin")+IlI0OIlI1.get("F7").occurrencesOf("ODC"));      
			
			dataRow7.getCell(5).setCellStyle(buildingtotalStyle);
			
			if (i1IoiI0I0 != null) {
				System.out.println("SARD");

				dataRow7.createCell(6).setCellValue(i1IoiI0I0.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(7).setCellValue(i1IoiI0I0.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(8).setCellValue(i1IoiI0I0.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(9).setCellValue(i1IoiI0I0.get("F7").size());   
				dataRow7.createCell(10).setCellValue(ioO0OIIIl.get("F7").size());   

			}
			if (Io10OIIIo != null) {
				System.out.println("ISBL");

				dataRow7.createCell(11).setCellValue(Io10OIIIo.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(12).setCellValue(Io10OIIIo.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(13).setCellValue(Io10OIIIo.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(14).setCellValue(Io10OIIIo.get("F7").size());   
				dataRow7.createCell(15).setCellValue(o11ilIOIi.get("F7").size());   
			}
			if (loliiI0I1 != null) {
				System.out.println("Infosec");

				dataRow7.createCell(16).setCellValue(loliiI0I1.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(17).setCellValue(loliiI0I1.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(18).setCellValue(loliiI0I1.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(19).setCellValue(loliiI0I1.get("F7").size());   
				dataRow7.createCell(20).setCellValue(iOl11IOIi.get("F7").size());   

			} //
			if (IO10lIOIl != null) {
				System.out.println("P&C");

				dataRow7.createCell(21).setCellValue(IO10lIOIl.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(22).setCellValue(IO10lIOIl.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(23).setCellValue(IO10lIOIl.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(24).setCellValue(IO10lIOIl.get("F7").size()); 
				dataRow7.createCell(25).setCellValue(oII1iI1II.get("F7").size()); 

			} 
			if (I1I0OI0Io != null) {
				dataRow7.createCell(26).setCellValue(I1I0OI0Io.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(27).setCellValue(I1I0OI0Io.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(28).setCellValue(I1I0OI0Io.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(29).setCellValue(I1I0OI0Io.get("F7").size());
				dataRow7.createCell(30).setCellValue(I1I0OI0Io.get("F7").size());
				
				dataRow7.getCell(30).setCellStyle(loliiI0I0);
			} else {
				dataRow7.createCell(26).setCellValue(0);
				dataRow7.createCell(27).setCellValue(0);
				dataRow7.createCell(28).setCellValue(0);
				dataRow7.createCell(29).setCellValue(0);
				dataRow7.createCell(30).setCellValue(0);
			}
			if (ilO0IIoIo != null) {
				dataRow7.createCell(31).setCellValue(ilO0IIoIo.get("F7").occurrencesOf("workstation"));
				dataRow7.createCell(32).setCellValue(ilO0IIoIo.get("F7").occurrencesOf("cabin"));
				dataRow7.createCell(33).setCellValue(ilO0IIoIo.get("F7").occurrencesOf("ODC"));
				dataRow7.createCell(34).setCellValue(ilO0IIoIo.get("F7").size());
				
				dataRow7.getCell(34).setCellStyle(I0il0I1IO);
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
		int HeadCountTotalSARD=ioO0OIIIl.get("F2").size()+	ioO0OIIIl.get("F3P1").size()+ ioO0OIIIl.get("F3P2").size()
				+	ioO0OIIIl.get("F4").size() 	+ioO0OIIIl.get("F5").size() +		ioO0OIIIl.get("F7").size();
		//HeadCountTotalSARD=100;
		int HeadCountTotalINFOSEC=oII1iI1II.get("F2").size()+	oII1iI1II.get("F3P1").size()+ oII1iI1II.get("F3P2").size()
				+	oII1iI1II.get("F4").size() 	+oII1iI1II.get("F5").size() +		oII1iI1II.get("F7").size();
		//HeadCountTotalINFOSEC=200;
		int HeadCountTotalPANDC=o11ilIOIi.get("F2").size()+	o11ilIOIi.get("F3P1").size()+ o11ilIOIi.get("F3P2").size()
				+	ioO0OIIIl.get("F4").size() 	+o11ilIOIi.get("F5").size() +		o11ilIOIi.get("F7").size();
		//HeadCountTotalPANDC=300;
		int HeadCountTotalISBL=iOl11IOIi.get("F2").size()+	iOl11IOIi.get("F3P1").size()+ iOl11IOIi.get("F3P2").size()
				+	iOl11IOIi.get("F4").size() 		+iOl11IOIi.get("F5").size() +		iOl11IOIi.get("F7").size();  
		//HeadCountTotalISBL=400;
		int HeadCountOccupiedSeats=I1I0OI0Io.get("F2").size()+	I1I0OI0Io.get("F3P1").size()+ I1I0OI0Io.get("F3P2").size()
				+	I1I0OI0Io.get("F4").size() 		+I1I0OI0Io.get("F5").size() +I1I0OI0Io.get("F7").size();
		
		int HeadCountTotalVacant=ilO0IIoIo.get("F2").size()+	ilO0IIoIo.get("F3P1").size()+ ilO0IIoIo.get("F3P2").size()
				+	ilO0IIoIo.get("F4").size() 		+ilO0IIoIo.get("F5").size() +ilO0IIoIo.get("F7").size();
		
		
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
		
		SeatCountInfo subtotalBuilding=ReportSubTotal.createExcelSubTotal(IlI0OIlI1);
		dataRow8.getCell(2).setCellValue(subtotalBuilding.getWs());
		dataRow8.getCell(3).setCellValue(subtotalBuilding.getCabin());
		dataRow8.getCell(4).setCellValue(subtotalBuilding.getOdc());
		dataRow8.getCell(5).setCellValue(subtotalBuilding.getTotal()); 
		
		//sub Total SARD
		SeatCountInfo subtotalSARD=ReportSubTotal.createExcelSubTotal(i1IoiI0I0);
		dataRow8.getCell(6).setCellValue(subtotalSARD.getWs());
		dataRow8.getCell(7).setCellValue(subtotalSARD.getCabin());
		dataRow8.getCell(8).setCellValue(subtotalSARD.getOdc());
		dataRow8.getCell(9).setCellValue(subtotalSARD.getTotal());
		dataRow8.getCell(10).setCellValue(HeadCountTotalSARD);       
		SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

		//sub Total ISBL
		SeatCountInfo subtotalISBL=ReportSubTotal.createExcelSubTotal(Io10OIIIo);		
		dataRow8.getCell(11).setCellValue(subtotalISBL.getWs());
		dataRow8.getCell(12).setCellValue(subtotalISBL.getCabin());
		dataRow8.getCell(13).setCellValue(subtotalISBL.getOdc());
		dataRow8.getCell(14).setCellValue(subtotalISBL.getTotal());
		dataRow8.getCell(15).setCellValue(HeadCountTotalPANDC);  
		
		//SubTotal Infosec
		SeatCountInfo subtotalInfosec=ReportSubTotal.createExcelSubTotal(loliiI0I1);
		if (subtotalInfosec != null) {
			dataRow8.getCell(16).setCellValue(subtotalInfosec.getWs());
			dataRow8.getCell(17).setCellValue(subtotalInfosec.getCabin());
			dataRow8.getCell(18).setCellValue(subtotalInfosec.getOdc());
			dataRow8.getCell(19).setCellValue(subtotalInfosec.getTotal());
			dataRow8.getCell(20).setCellValue(HeadCountTotalISBL);
		}
		// SubTotal P&C
		SeatCountInfo subtotalPandc=ReportSubTotal.createExcelSubTotal(IO10lIOIl);
		dataRow8.getCell(21).setCellValue(subtotalPandc.getWs());
		dataRow8.getCell(22).setCellValue(subtotalPandc.getCabin());
		dataRow8.getCell(23).setCellValue(subtotalPandc.getOdc());
		dataRow8.getCell(24).setCellValue(subtotalPandc.getTotal());
		dataRow8.getCell(25).setCellValue(HeadCountTotalINFOSEC);
		

		// SubTotal Occupied
		SeatCountInfo subtotalOccupied=ReportSubTotal.createExcelSubTotal(I1I0OI0Io);
		dataRow8.getCell(26).setCellValue(subtotalOccupied.getWs());
		dataRow8.getCell(27).setCellValue(subtotalOccupied.getCabin());
		dataRow8.getCell(28).setCellValue(subtotalOccupied.getOdc());
		dataRow8.getCell(29).setCellValue(subtotalOccupied.getTotal());
		dataRow8.getCell(30).setCellValue(HeadCountOccupiedSeats);

		// SubTotal Vacant
		SeatCountInfo subtotalVacant=ReportSubTotal.createExcelSubTotal(ilO0IIoIo);
		dataRow8.getCell(31).setCellValue(subtotalVacant.getWs());
		dataRow8.getCell(32).setCellValue(subtotalVacant.getCabin()); 
		dataRow8.getCell(33).setCellValue(subtotalVacant.getOdc());
		dataRow8.getCell(34).setCellValue(HeadCountTotalVacant); 
		
		/***************************************
		 * //SubTotal Ends Here
		 **********************************/
		
		/***************************************Total  ****/
		
		///*
		SeatCountInfo totalBuilding=ReportSubTotal.createExcelSubTotal(IlI0OIlI1);
		dataRow9.getCell(2).setCellValue(totalBuilding.getWs());
		dataRow9.getCell(3).setCellValue(totalBuilding.getCabin());
		dataRow9.getCell(4).setCellValue(totalBuilding.getOdc());
		dataRow9.getCell(5).setCellValue(totalBuilding.getTotal());        
		
		//*******Total SARD
		SeatCountInfo totalSARD=ReportSubTotal.createExcelSubTotal(i1IoiI0I0);
		dataRow9.getCell(6).setCellValue(subtotalSARD.getWs());
		dataRow9.getCell(7).setCellValue(subtotalSARD.getCabin());
		dataRow9.getCell(8).setCellValue(subtotalSARD.getOdc());
		dataRow9.getCell(9).setCellValue(subtotalSARD.getTotal());
		dataRow9.getCell(10).setCellValue(HeadCountTotalSARD);       
		//SheetConditionalFormatting sheetCF = sheet.getSheetConditionalFormatting();

		//*******Total ISBL
		SeatCountInfo totalISBL=ReportSubTotal.createExcelSubTotal(Io10OIIIo);		
		dataRow9.getCell(11).setCellValue(totalISBL.getWs());
		dataRow9.getCell(12).setCellValue(totalISBL.getCabin());
		dataRow9.getCell(13).setCellValue(totalISBL.getOdc());
		dataRow9.getCell(14).setCellValue(totalISBL.getTotal());
		dataRow9.getCell(15).setCellValue(HeadCountTotalPANDC);    
		         
		//*********Total Infosec
		SeatCountInfo totalInfosec=ReportSubTotal.createExcelSubTotal(loliiI0I1);
		if (subtotalInfosec != null) {
			dataRow9.getCell(16).setCellValue(totalInfosec.getWs());
			dataRow9.getCell(17).setCellValue(totalInfosec.getCabin());
			dataRow9.getCell(18).setCellValue(totalInfosec.getOdc());
			dataRow9.getCell(19).setCellValue(totalInfosec.getTotal());
			dataRow9.getCell(20).setCellValue(HeadCountTotalISBL);
		}
		//********* Total P&C
		SeatCountInfo totalPandc=ReportSubTotal.createExcelSubTotal(IO10lIOIl);
		dataRow9.getCell(21).setCellValue(subtotalPandc.getWs());
		dataRow9.getCell(22).setCellValue(subtotalPandc.getCabin());
		dataRow9.getCell(23).setCellValue(subtotalPandc.getOdc());
		dataRow9.getCell(24).setCellValue(subtotalPandc.getTotal());
		dataRow9.getCell(25).setCellValue(HeadCountTotalINFOSEC);
		

		//********** Total Occupied
		SeatCountInfo totalOccupied=ReportSubTotal.createExcelSubTotal(I1I0OI0Io);
		dataRow9.getCell(26).setCellValue(totalOccupied.getWs());
		dataRow9.getCell(27).setCellValue(totalOccupied.getCabin());
		dataRow9.getCell(28).setCellValue(totalOccupied.getOdc());
		dataRow9.getCell(29).setCellValue(totalOccupied.getTotal());
		dataRow9.getCell(30).setCellValue(HeadCountOccupiedSeats);  

		//*********** Total Vacant
		SeatCountInfo totalVacant=ReportSubTotal.createExcelSubTotal(ilO0IIoIo);
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
