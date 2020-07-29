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

import com.wms.dao.email.EmailDetails;
import com.wms.dao.email.EmailJob;
import com.wms.dao.email.EmailTriggerDAO;

//https://mycuteblog.com/spring-task-scheduler-cron-job-example/
//https://www.logicbig.com/tutorials/core-java-tutorial/java-multi-threading/thread-pools.html
@Service
@EnableScheduling

public class EmailScheduler {
	///*
	private final static Logger LOGGER = LoggerFactory.getLogger(EmailScheduler.class);
	@Autowired
	private EmailTriggerDAO O1oIiI1II;
	@Autowired
	private JavaMailSender javaMailSender;
	@Value("${wms.bulkupload.email.corePoolSize}")  
	private int corePoolSize;
	private ThreadPoolExecutor oIIllIiI0 = new ThreadPoolExecutor(corePoolSize, 5,Long.MAX_VALUE,TimeUnit.NANOSECONDS, new ArrayBlockingQueue<Runnable>(5));
	//private ThreadPoolExecutor executor = (ThreadPoolExecutor) Executors.newFixedThreadPool(10);    

	@Scheduled(fixedDelay = 30000)
	public void fixedDelayTask() {
		
		List<EmailDetails> li0IiIIIo = O1oIiI1II.getEmailJobs();
		if(li0IiIIIo!=null) {
			for (EmailDetails iIil0I1I1 : li0IiIIIo) {				
				EmailJob emailJob = new EmailJob(iIil0I1I1, javaMailSender, O1oIiI1II); 
				oIIllIiI0.execute(emailJob);  
			}
		} 
		
	}
//*/
}
