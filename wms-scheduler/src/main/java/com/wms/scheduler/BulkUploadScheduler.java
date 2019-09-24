package com.wms.scheduler;

import java.util.Date;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.wms.dao.bulkupload.BatchJobTriggerDAO;
import com.wms.dao.bulkupload.UploadJob;
import com.wms.dao.bulkupload.UploadJobDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.dao.allocation.*; 

@Service
@EnableScheduling     
public class BulkUploadScheduler {
	
	private final static Logger LOGGER = LoggerFactory.getLogger(Annotation.class);
	       
	@Autowired
	private BatchJobTriggerDAO batchJobTriggerDAO; 
	
	/*
	  @Autowired private AllocationRequest allocationRequest;
	 */
	
	@Value("${wms.default.bulkUpload.corePoolSize}")  
	private int corePoolSize;
	
	private ThreadPoolExecutor executor = new ThreadPoolExecutor(corePoolSize, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));
	//private ThreadPoolExecutor executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);    

	@Scheduled(fixedDelay = 30000)
	public void fixedDelayTask() {
		LOGGER.debug(new Date() + " This runs in a BulkUploadScheduler fixed delay");
		System.out.println(new Date() + " This runs in a BulkUploadScheduler fixed delay");
	  		List<UploadJobDetails> jobList = batchJobTriggerDAO.getBatchJobs();
	  		//BulkAllocation  bulkallocation =new BulkAllocation();
	  		if(jobList!=null) {
	  			System.out.println(" About to send pending batch Size"+ jobList.size());
	  			for (UploadJobDetails jobDetails : jobList) {	 			
	  				UploadJob uploadJob = new UploadJob(jobDetails,batchJobTriggerDAO);     
	  				executor.execute(uploadJob); 
	  			}   
	  		}/*
	  		try {	  
	  			AllocationRequest.setRequest_id("");
	  			allocationDAO.bulkUploadSeatAllocation(allocationRequest);
			} catch (Exception e) {
				System.out.println("Scheduler Bulk Upload :"+e);
			} */ 
	  	
	  				
	}

}
