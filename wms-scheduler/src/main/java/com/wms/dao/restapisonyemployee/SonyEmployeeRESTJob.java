package com.wms.dao.restapisonyemployee;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import com.wms.consumingrest.ConsumingRestApplication;

public class SonyEmployeeRESTJob implements Runnable { 
	
	ConsumingRestApplication crs = new ConsumingRestApplication();
	public SonyEmployeeRESTJob() {
	}
	
	@Override
	public void run() {
		
	try {		
				//crs.withSSLTesting();
				
				//leveluplunchPROXY(); 
				
			} catch (Exception e) {
				System.out.println("Exception"+e); 
			}
			//TODO 
		}	
		
}
