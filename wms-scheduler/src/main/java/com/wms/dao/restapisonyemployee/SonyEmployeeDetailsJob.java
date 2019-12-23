package com.wms.dao.restapisonyemployee;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import com.wms.constant.SchedulerConstant;
import com.wms.consumingrest.SonyEmployeeDetailsREST;
import com.wms.dao.bulkupload.BatchJobTriggerDAO;
import com.wms.dao.bulkupload.UploadJob;
import com.wms.dao.bulkupload.UploadJobDetails;
import com.wms.dao.bulkupload.allocation.AllocationSheetDetails;
import com.wms.model.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;

public class SonyEmployeeDetailsJob implements Runnable{

	@Value("${wms.batchupdate.size}")
	private int batchupdateSize;		
	
	private SonyEmployeeRestDAO sonyEmployeeRestDAO;
	private SonyEmployeeDetailsREST sonyEmployeeDetailsREST;
	List<SonyEmployeeDetailsREST> sonyEmployeeDetailsList;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(SonyEmployeeDetailsJob.class);
	public SonyEmployeeDetailsJob(List<SonyEmployeeDetailsREST> sonyEmployeeDetailsList) {
		this.sonyEmployeeDetailsList = sonyEmployeeDetailsList; 
		//this.sonyEmployeeRestDAO = sonyEmployeeRestDAO;
	}   
 
	@Override
	public void run() {
		System.out.println("Processing Request ["+sonyEmployeeDetailsREST.getGid() + "] for upload Type [ " +sonyEmployeeDetailsREST.getEmployee_name()+" ]");
		sonyEmployeeDetails(sonyEmployeeDetailsList);  	 		
	}
	private void sonyEmployeeDetails(List<SonyEmployeeDetailsREST> sonyEmployeeDetailsREST) {

		List<EmployeeDetails1> sonyEmployeedetailsList = sonyEmployeeRestDAO.getProjectDetails();
		
		for (EmployeeDetails1 employeeDetails : sonyEmployeedetailsList) {	 			
			String gid=sonyEmployeedetailsList.get(1).getGid();
				try { 
					sonyEmployeeRestDAO.UpateSonyEmployeeDetails(sonyEmployeeDetailsREST, 2,gid); 
								
				} catch (Exception e) {
					System.out.println("IOException" + e);
					// TODO Auto-generated catch block
					e.printStackTrace(); 
				}
			} 
		    
		System.out.println("sonyEmployeeDetailsREST"+sonyEmployeeDetailsREST.get(0).getGid());    
		//sonyEmployeeDetailsREST.batchInsert(UploadSheetDetailsList, UploadSheetDetailsList.size());
		
	} 
}
