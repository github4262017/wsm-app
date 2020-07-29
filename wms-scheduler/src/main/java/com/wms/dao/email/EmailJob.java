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
	private EmailTriggerDAO iolloIiI1;
    private JavaMailSender i0iI0IiI1;
       
	private EmailDetails IiIl0IIIl;
	public EmailJob(EmailDetails emailDetails, JavaMailSender javaMailSender, EmailTriggerDAO emailTriggerDAO) {
		this.IiIl0IIIl=emailDetails;
		this.i0iI0IiI1 = javaMailSender;
		this.iolloIiI1 = emailTriggerDAO;    
	}
	public Long getDateDifferent(String dateStart,String dateStop) {

		//dateStart = "01/14/2012 09:29:58";  
		//dateStop = "01/15/2012 10:31:48";  

		//HH converts hour in 24 hours format (0-23), day calculation
		SimpleDateFormat format = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss");

		Date lIOlIIIIl = null;
		Date i01liIlIO = null;
		long diffDays=0L; 

		try {
			lIOlIIIIl = format.parse(dateStart);
			i01liIlIO = format.parse(dateStop);

			//in milliseconds
			long IliolIOIo = i01liIlIO.getTime() - lIOlIIIIl.getTime();

			long diffSeconds = IliolIOIo / 1000 % 60;
			long diffMinutes = IliolIOIo / (60 * 1000) % 60;
			long diffHours = IliolIOIo / (60 * 60 * 1000) % 24;
			diffDays = IliolIOIo / (24 * 60 * 60 * 1000);
        

		} catch (Exception e) {
			e.printStackTrace();
		}
		return diffDays;
	}
	@Override
	public void run() {
		      
		try { 
			SimpleMailMessage OlIliIII1 = new SimpleMailMessage();    
			//msg.setTo(emailDetails.getFrom_id(), emailDetails.getTo_id());
			//msg.setTo("workspace@ap.sony.com",emailDetails.getTo_id()); //, "keshav.murthy@sony.com","sandeep.eswaraprasad@sony.com"
			//msg.setTo("lokesh.vodlamudi@sony.com");
			//msg.setFrom("jayadeva.appannegowda@sony.com");
			//msg.setTo("harikrishna@at.co");
			OlIliIII1.setTo("SISC-P&C-SpaceManagement@ap.sony.com"); 
			OlIliIII1.setFrom("workspacemanagement@ap.sony.com");  
			//msg.setFrom("harikrishna24681@gmail.com");   
			//msg.setTo(emailDetails.getTo_id());
			//msg.setTo("thiruvasagam.k@gmail.com","thiruvasagam.k@gmail.com");
			OlIliIII1.setSubject(IiIl0IIIl.getSubject());
			OlIliIII1.setText(IiIl0IIIl.getSubject());   
			
			DateFormat df = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
			Date dateobj = new Date();

			Long daydiff=getDateDifferent(IiIl0IIIl.getInserted_date(), df.format(dateobj));    
			if(daydiff>=1) { 
			  i0iI0IiI1.send(OlIliIII1);   
			} 
			
			IiIl0IIIl.getRequest_status();
		} 
		catch (MailException e) {
			e.printStackTrace();
			IiIl0IIIl.setStatus("E");
			iolloIiI1.updateStatus(IiIl0IIIl);  //TODO 
		} 
		IiIl0IIIl.setStatus("S");
		iolloIiI1.updateStatus(IiIl0IIIl);  //TODO 
	}
}
