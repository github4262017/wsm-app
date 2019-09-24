package com.wms.dao.bulkupload;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import com.wms.constant.SchedulerConstant;
import com.wms.request.allocation.AllocationRequest; 

public class UploadJob implements Runnable {

	private BatchJobTriggerDAO batchJobTriggerDAO;
	private UploadJobDetails uploadJobDetails;
	private UploadJobDetails allocationRequest;
	
	private String from_id ;
	private String to_id ;
	
	String type=null;

	public UploadJob(UploadJobDetails uploadJobDetails, BatchJobTriggerDAO batchJobTriggerDAO) {
		this.batchJobTriggerDAO = batchJobTriggerDAO;
		this.uploadJobDetails = uploadJobDetails;
	}

	@Override
	public void run() {

		System.out.println("Process Job ID ... "+uploadJobDetails.getRequest_id());
		uploadJobDetails.setStatus(SchedulerConstant.BULKUPLOAD_PROCESSED_STATUS);

		String filePath = uploadJobDetails.getFile_path();
		System.out.println("FilePath" + filePath);
		File file = new File(filePath);

		List<UploadSheetDetails> mandatoryMissedList = new ArrayList<UploadSheetDetails>();
		List<UploadSheetDetails> UploadSheetDetailsList = null;
		try (Reader reader = new FileReader(file);) {
			@SuppressWarnings("unchecked")
			CsvToBean<UploadSheetDetails> csvToBean = new CsvToBeanBuilder<UploadSheetDetails>(reader)
					.withType(UploadSheetDetails.class).withIgnoreLeadingWhiteSpace(true).build();
			UploadSheetDetailsList = csvToBean.parse();

			Iterator<UploadSheetDetails> UploadSheetDetailsListClone = UploadSheetDetailsList.iterator();

			while (UploadSheetDetailsListClone.hasNext()) {

				UploadSheetDetails UploadSheetDetails = UploadSheetDetailsListClone.next();

				if (UploadSheetDetails.getFloor_id() == null || UploadSheetDetails.getSeat_number().isEmpty()) {
					mandatoryMissedList.add(UploadSheetDetails);
					UploadSheetDetailsListClone.remove();
				}
			}

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("FileNotFoundException" + e);
			e.printStackTrace();
		} catch (IOException e) {
			System.out.println("IOException" + e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("File Size in a batch"+ mandatoryMissedList.size());
		
		batchJobTriggerDAO.batchInsert(UploadSheetDetailsList, 3);
		batchJobTriggerDAO.updateStatus(uploadJobDetails);
		
		
		AllocationRequest aR= new AllocationRequest();
		aR.setRequest_id(uploadJobDetails.getRequest_id());
		aR.setStatus(uploadJobDetails.getStatus()); 
		batchJobTriggerDAO.bulkUploadSeatAllocation(aR);  	
		
		  
	}
	
}
