package com.wms.dao.deallocateunassigned;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;


public class EmailDeallocationJob implements Runnable { 
		
	//https://myaccount.google.com/lesssecureapps?pli=1 change it to ON
	//https://www.google.com/settings/security/lesssecureapps
	private DeallocationTriggerDAO deallocationTriggerDAO;
    private JavaMailSender javaMailSender;
    
	private DeallocationDetails deallocationDetails;
	public EmailDeallocationJob(DeallocationDetails deallocationDetails, JavaMailSender javaMailSender, DeallocationTriggerDAO deallocationTriggerDAO) {
		this.deallocationDetails=deallocationDetails;
		this.javaMailSender = javaMailSender; 
		this.deallocationTriggerDAO = deallocationTriggerDAO;
	}
	public Long getDateDifferent(String dateStart,String dateStop) {

		//dateStart = "01/14/2012 09:29:58";
		//dateStop = "01/15/2012 10:31:48";  

		//HH converts hour in 24 hours format (0-23), day calculation
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

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
			//msg.setTo("lokesh.vodlamudi@sony.com"); 
			//msg.setTo(deallocationDetails.getTo_id());       
			//msg.setFrom("workspacemanagement@ap.sony.com"); 
			msg.setTo("thiruvasagam.k@gmail.com"); 
			msg.setSubject("This seat"+deallocationDetails.getWorkstation_no()+" has been de-allocated"); 
			msg.setText("This seat has not been assigned after 7 days of Allocation. This seat"+deallocationDetails.getWorkstation_no()+" has been de-allocated");
			//msg.setText(deallocationDetails.getSubject());  
			
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date dateobj = new Date();
			System.out.println("current date :"+df.format(dateobj));
			System.out.println("dealloc date :"+deallocationDetails.getEnd_date());
			 
			Long daydiff=getDateDifferent(deallocationDetails.getEnd_date(), df.format(dateobj));
			//Long daydiff=getDateDifferent(deallocationDetails.getEnd_time(), "2019-11-18 15:32:50");
			
			System.out.println("daydiff 7days"+daydiff);
			if(daydiff==0) {       
			  javaMailSender.send(msg);   
			                          
			  //Added to do Deallocation after 7 days
			  System.out.println("Sending De-allocation Email To"+this.deallocationDetails.getTo_id());
			  deallocationTriggerDAO.updateDeallocationSeat(deallocationDetails);
			  //deallocationTriggerDAO.updateUnAssignedSeat(deallocationDetails);
			  deallocationTriggerDAO.batchUpdateDeAllocateWorkstationStatus(deallocationDetails, 5);
			  //deallocationTriggerDAO.batchInsertRecordsDeallocationAutomation(deallocationDetails);//batchSize
			}else if(daydiff==5) {
				msg.setSubject("This seat"+deallocationDetails.getWorkstation_no()+" will be de-allocated"); 
				msg.setText("This seat will be de-allocated after 7 days of Allocation. This seat"+deallocationDetails.getWorkstation_no()+" has not been assigned");
				javaMailSender.send(msg);
			}  
			Map<String,DeallocationRequests> deallocationSeats=deallocationTriggerDAO.getAllocatedSeats();
			//deallocationSeats.forEach((key,value) -> System.out.println("Request"+key + " = " + value.getWorkstation_no()));
			for (String key : deallocationSeats.keySet()) {
			      System.out.println("Key : " + key + " value : " + deallocationSeats.get(key).getWorkstation_no());
			      //deallocationTriggerDAO.batchInsertRecordsDeallocationAutomation(deallocationSeats);//batchSize
			    }
			System.out.println("deallocationDetails.getRequest_status()"+this.deallocationDetails.getRequest_status());       
		} 
		catch (MailException e) {
			e.printStackTrace();
			System.out.println("MailException :"+e);     
			deallocationDetails.setStatus("E");
			deallocationTriggerDAO.updateStatus(deallocationDetails);  //TODO 
		} 
		System.out.println("Email Job source"+deallocationDetails.getRequest_status());      
		deallocationDetails.setStatus("S");
		deallocationTriggerDAO.updateStatus(deallocationDetails);  //TODO 
	}
}
