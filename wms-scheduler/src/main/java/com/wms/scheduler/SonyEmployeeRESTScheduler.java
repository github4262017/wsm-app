package com.wms.scheduler;

import java.util.Date;
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

import com.wms.consumingrest.ConsumingRestApplication;
import com.wms.consumingrest.SonyEmployeeDetailsREST;
import com.wms.dao.restapisonyemployee.SonyEmployeeRestDAO;

@Service
@EnableScheduling  
public class SonyEmployeeRESTScheduler {
	private final static Logger LOGGER = LoggerFactory.getLogger(SonyEmployeeRESTScheduler.class);
	///*
	@Autowired
	private SonyEmployeeRestDAO O0iIOIOII;  
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	private ThreadPoolExecutor executor = new ThreadPoolExecutor(5, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));
	//private ThreadPoolExecutor executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);    
	
	//@Scheduled(cron="0 0 0 * * ?") //Every 12 AM every Day
	//@Scheduled(cron = "0 21 10 15 * ?",zone = "Indian/Maldives") //On 21 10.15 //second, minute, hour, day of month, month, day(s) of week
	@Scheduled(cron="0 0/04 19 * * ?") // 0/30 18 6.58 Every Day
	public void fixedDelayTask() { 
		
		LOGGER.debug(new Date() + " This job runs Every Day @12 30");
	    //LOGGER.info("Deallocation Scheduler corePoolSize"+corePoolSize);  
	    LOGGER.warn("SonyEmployeeREST Scheduler is a warn message");
	    LOGGER.error("SonyEmployeeREST Scheduler is an error message");  
	          
		try {    
			
			
			  ConsumingRestApplication O1oIiI1II = new ConsumingRestApplication();
			  List<SonyEmployeeDetailsREST>
			  sonyEmployeeDetailsList=O1oIiI1II.getJsonRestAPIClient();
			  O0iIOIOII.batchInsertSonyEmployee(sonyEmployeeDetailsList, 2);
			 
			O0iIOIOII.gidManager();
			
			List<SonyEmployeeDetailsREST> employeeList = O0iIOIOII.getSonyEmployeeDetails(); 
			O0iIOIOII.UpdateSonyEmployeeDetails(); 
			
						  
		} catch (Exception ex) {
			LOGGER.error("Exception SonyEmployeeREST scheduler:"+ex);
		}
		
	}//*/
}