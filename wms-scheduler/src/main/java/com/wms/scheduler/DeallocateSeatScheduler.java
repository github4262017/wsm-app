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
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.wms.dao.deallocateunassigned.DeallocationDetails;
import com.wms.dao.deallocateunassigned.DeallocationTriggerDAO;
import com.wms.dao.deallocateunassigned.EmailDeallocationJob;

/*import com.wms.dao.deallocateunassigned.DeallocationDetails;
import com.wms.dao.deallocateunassigned.DeallocationTriggerDAO;
import com.wms.dao.deallocateunassigned.EmailDeallocationJob;*/
@Service
@EnableScheduling 
public class DeallocateSeatScheduler { 
	/* 
	private final static Logger LOGGER = LoggerFactory.getLogger(EmailScheduler.class);
	@Autowired
	private DeallocationTriggerDAO deallocationTriggerDAO;
	@Autowired
	private JavaMailSender javaMailSender;
	
	
	private ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));
	//private ThreadPoolExecutor executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);    

	@Scheduled(fixedDelay = 30000)
	public void fixedDelayTask() {
		
		LOGGER.debug(new Date() + " This runs in a fixed delay");
	    //LOGGER.info("Deallocation Scheduler corePoolSize"+corePoolSize);  
	    LOGGER.warn("Deallocation Scheduler is a warn message");
	    LOGGER.error("Deallocation Scheduler is an error message");
	    
		try {
			List<DeallocationDetails> deallocationDetails = deallocationTriggerDAO.getSeatDeallocationJobs();
			if(deallocationDetails!=null) { 
				LOGGER.error("Send pending email Deallocations"+deallocationDetails.size());
				for (DeallocationDetails deallocationDetail : deallocationDetails) {				
					EmailDeallocationJob emailJob = new EmailDeallocationJob(deallocationDetail, javaMailSender, deallocationTriggerDAO); 
					executor.execute(emailJob); 
				}
			}
		} catch (Exception ex) {
			LOGGER.error("Exception Deallocation seat scheduler:"+ex);
		}
		
	}*/  
}
