package com.wms.scheduler;

import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

///*
import com.wms.dao.deallocation.DeAllocation;
import com.wms.dao.deallocation.DeallocateTriggerDAO;
//*/
@Service
@EnableScheduling 
public class DeallocationScheduler { 
	///* 
	private final static Logger LOGGER = LoggerFactory.getLogger(EmailScheduler.class);
	@Autowired
	private JavaMailSender javaMailSender;
	
	@Autowired
	private DeallocateTriggerDAO dTriggerDAO;  
	
	private ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));

	@Scheduled(cron="0 0/30 7 * * ?") //Every 12 AM every Day   
	public void fixedDelayTask() {                           
		
	    LOGGER.warn("Automate Deallocation Scheduler is a warn message");
	    
		try {
			List<DeAllocation> deallocationDetails = dTriggerDAO.getDeallocationJobs();  
			if(deallocationDetails!=null) { ///*
				LOGGER.error("Send pending Deallocations"+deallocationDetails.size());
				for (DeAllocation deallocationDetail : deallocationDetails) {	
					dTriggerDAO.setDeallocationSeats(deallocationDetail);   
				} 
			}
		} catch (Exception ex) {
			LOGGER.error("Exception Deallocation seat scheduler:"+ex);
		}
		
	}
}
