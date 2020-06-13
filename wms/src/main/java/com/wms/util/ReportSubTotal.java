package com.wms.util;

import java.io.ByteArrayInputStream;
import java.io.IOException;

import org.eclipse.collections.api.multimap.bag.MutableBagMultimap;
import org.springframework.beans.factory.annotation.Autowired;

import com.wms.model.report.SeatCountInfo;

public class ReportSubTotal {

	
	public static SeatCountInfo createExcelSubTotal(MutableBagMultimap multiMapTotalBuildingSeat) throws IOException{
	
				
	int ws=multiMapTotalBuildingSeat.get("F2").occurrencesOf("workstation")
			+multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("workstation")
			+multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("workstation")
			+multiMapTotalBuildingSeat.get("F4").occurrencesOf("workstation")
			+multiMapTotalBuildingSeat.get("F5").occurrencesOf("workstation")
			+multiMapTotalBuildingSeat.get("F7").occurrencesOf("workstation");
	
	int cabin=multiMapTotalBuildingSeat.get("F2").occurrencesOf("cabin")
			+multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("cabin")
			+multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("cabin")
			+multiMapTotalBuildingSeat.get("F4").occurrencesOf("cabin")
			+multiMapTotalBuildingSeat.get("F5").occurrencesOf("cabin")
			+multiMapTotalBuildingSeat.get("F7").occurrencesOf("cabin");
	
	int ODC=multiMapTotalBuildingSeat.get("F2").occurrencesOf("ODC")
			+multiMapTotalBuildingSeat.get("F3P1").occurrencesOf("ODC")
			+multiMapTotalBuildingSeat.get("F3P2").occurrencesOf("ODC")
			+multiMapTotalBuildingSeat.get("F4").occurrencesOf("ODC")
			+multiMapTotalBuildingSeat.get("F5").occurrencesOf("ODC")
			+multiMapTotalBuildingSeat.get("F7").occurrencesOf("ODC");
			
	int total=ws+cabin+ODC;
			SeatCountInfo sci=new SeatCountInfo();
			sci.setWs(ws);
			sci.setCabin(cabin);
			sci.setOdc(ODC);
			sci.setTotal(total);
			
	return sci;   
	}
	          	
}
