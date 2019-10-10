package com.wms.scheduler;

import java.util.Date;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.wms.dao.bulkupload.BatchJobTriggerDAO;
import com.wms.dao.bulkupload.UploadJob;
import com.wms.dao.bulkupload.UploadJobDetails;
import com.wms.dao.bulkupload.assign.EmployeeSeatAssignDetails; 

@Service
@EnableScheduling     
public class BulkUploadScheduler {
	
	private final static Logger LOGGER = LoggerFactory.getLogger(EmailScheduler.class);
	       
	@Autowired
	private BatchJobTriggerDAO batchJobTriggerDAO; 
	
	@Value("${wms.bulkupload.allocation.corePoolSize}")  
	private int corePoolSize;
	
	//private ThreadPoolExecutor executor = new ThreadPoolExecutor(corePoolSize, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));
	private ThreadPoolExecutor executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);     

	@Scheduled(fixedDelay = 30000)
	public void fixedDelayTask() {
		LOGGER.debug(new Date() + " This runs in a BulkUploadScheduler fixed delay");
		System.out.println(new Date() + " This runs in a BulkUploadScheduler fixed delay");
	  		List<UploadJobDetails> jobList = batchJobTriggerDAO.getBatchJobs();
	  		if(jobList!=null) {
	  			System.out.println(" About to send pending batch Size"+ jobList.size());
	  			for (UploadJobDetails jobDetails : jobList) {	 			
	  				UploadJob uploadJob = new UploadJob(jobDetails,batchJobTriggerDAO);     
	  				executor.execute(uploadJob);    
	  			}   
	  		}    
	}

}
