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
	
	private SonyEmployeeRestDAO IiIl0IIIl;
	private SonyEmployeeDetailsREST iiol0I1II;
	List<SonyEmployeeDetailsREST> iIil0I1I1;
	
	private final static Logger LOGGER = LoggerFactory.getLogger(SonyEmployeeDetailsJob.class);
	public SonyEmployeeDetailsJob(List<SonyEmployeeDetailsREST> OoIllIoIo) {
		this.iIil0I1I1 = OoIllIoIo; 
		//this.sonyEmployeeRestDAO = sonyEmployeeRestDAO;
	}   
 
	@Override
	public void run() {
		sonyEmployeeDetails(iIil0I1I1);  	 		
	}
	private void sonyEmployeeDetails(List<SonyEmployeeDetailsREST> lilliIiI0) {

		List<EmployeeDetails1> O1oIiI1II = IiIl0IIIl.getProjectDetails();
		
		for (EmployeeDetails1 iIil0I1I1 : O1oIiI1II) {	 		  	
			String gid=O1oIiI1II.get(1).getGid();
				try { 
					IiIl0IIIl.UpateSonyEmployeeDetails(lilliIiI0, 2,gid); 
								
				} catch (Exception e) {
					System.out.println("IOException" + e);
					// TODO Auto-generated catch block
					e.printStackTrace(); 
				}
			} 
		    
		
	} 
}
