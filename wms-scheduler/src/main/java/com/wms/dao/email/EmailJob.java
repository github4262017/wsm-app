package com.wms.dao.email;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import com.wms.util.WMSDateUtil;


public class EmailJob implements Runnable { 
		
	//https://myaccount.google.com/lesssecureapps?pli=1 change it to ON
	//https://www.google.com/settings/security/lesssecureapps
	private EmailTriggerDAO emailTriggerDAO;
    private JavaMailSender javaMailSender;
    
	private EmailDetails emailDetails;
	public EmailJob(EmailDetails emailDetails, JavaMailSender javaMailSender, EmailTriggerDAO emailTriggerDAO) {
		this.emailDetails=emailDetails;
		this.javaMailSender = javaMailSender;
		this.emailTriggerDAO = emailTriggerDAO;
	}
	public Long getDateDifferent(String dateStart,String dateStop) {

		//dateStart = "01/14/2012 09:29:58";
		//dateStop = "01/15/2012 10:31:48";  

		//HH converts hour in 24 hours format (0-23), day calculation
		SimpleDateFormat format = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss");

		Date d1 = null;
		Date d2 = null;
		long diffDays=0L; 

		try {
			d1 = format.parse(dateStart);
			d2 = format.parse(dateStop);

			//in milliseconds
			long diff = d2.getTime() - d1.getTime();

			long diffSeconds = diff / 1000 % 60;
			long diffMinutes = diff / (60 * 1000) % 60;
			long diffHours = diff / (60 * 60 * 1000) % 24;
			diffDays = diff / (24 * 60 * 60 * 1000);

			System.out.print(diffDays + " days, ");
			System.out.print(diffHours + " hours, ");
			System.out.print(diffMinutes + " minutes, ");
			System.out.print(diffSeconds + " seconds.");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return diffDays;
	}
	@Override
	public void run() {
		
		try {
			SimpleMailMessage msg = new SimpleMailMessage();    
			msg.setTo(emailDetails.getFrom_id(), emailDetails.getTo_id());

			msg.setSubject(emailDetails.getSubject());
			msg.setText("Hello World \n WMS Email"); 
			
			DateFormat df = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
			Date dateobj = new Date();
			System.out.println("current date :"+df.format(dateobj));

			
			Long daydiff=getDateDifferent(emailDetails.getInserted_date(), df.format(dateobj));    
			System.out.println("daydiff"+daydiff);
			if(daydiff>1) { 
			  javaMailSender.send(msg);   
			  System.out.println("Sending Email To"+this.emailDetails.getTo_id());
			} 
			
			System.out.println("emailDetails.getInserted_date()"+this.emailDetails.getInserted_date());       
			
			emailDetails.getRequest_status();
		} 
		catch (MailException e) {
			e.printStackTrace();
			System.out.println("MailException :"+e);     
			emailDetails.setStatus("E");
			emailTriggerDAO.updateStatus(emailDetails);  //TODO 
		} 
		System.out.println("Email Job source"+emailDetails.getRequest_status());      
		emailDetails.setStatus("S");
		emailTriggerDAO.updateStatus(emailDetails);  //TODO 
	}
}
