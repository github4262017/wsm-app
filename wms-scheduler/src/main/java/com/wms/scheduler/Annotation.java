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
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.wms.dao.email.EmailDetails;
import com.wms.dao.email.EmailJob;
import com.wms.dao.email.EmailTriggerDAO;

//https://mycuteblog.com/spring-task-scheduler-cron-job-example/
//https://www.logicbig.com/tutorials/core-java-tutorial/java-multi-threading/thread-pools.html
@Service
@EnableScheduling

public class Annotation {
	private final static Logger LOGGER = LoggerFactory.getLogger(Annotation.class);
	@Autowired
	private EmailTriggerDAO emailTriggerDAO;
	@Autowired
	private JavaMailSender javaMailSender;
	@Value("${wms.default.corePoolSize}")  
	private int corePoolSize;
	private ThreadPoolExecutor executor = new ThreadPoolExecutor(corePoolSize, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));
	//private ThreadPoolExecutor executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);    

	@Scheduled(fixedDelay = 30000)
	public void fixedDelayTask() {
		
		LOGGER.debug(new Date() + " This runs in a fixed delay");
	    LOGGER.info("This is an info corePoolSize"+corePoolSize);  
	    LOGGER.warn("This is a warn message");
	    LOGGER.error("This is an error message");
	    
		//System.out.println(new Date() + " This runs in a fixed delay");
		List<EmailDetails> emailDetails = emailTriggerDAO.getEmailJobs();
		if(emailDetails!=null) {
			System.out.println(" About to send pending email Size"+ emailDetails.size());
			for (EmailDetails emailDetail : emailDetails) {				
				EmailJob emailJob = new EmailJob(emailDetail, javaMailSender, emailTriggerDAO); 
				executor.execute(emailJob);
			}
		} 
		
	}

}
