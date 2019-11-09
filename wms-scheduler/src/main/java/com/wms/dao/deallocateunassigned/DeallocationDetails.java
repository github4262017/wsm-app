package com.wms.dao.deallocateunassigned;

import java.io.Serializable;

public class DeallocationDetails implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String from_id;
	private String to_id;
	private String subject;
	private String attachment;
	private String status;
	private String future;
	private String request_id;
	private String request_status; 
	private String inserted_date;  
	private String modified_date;
	private String start_date;   
	private String end_date;
	
	public DeallocationDetails() {
		// TODO Auto-generated constructor stub
	}
	public DeallocationDetails(String from_id,String to_id,String subject,String attachment,String status,String request_id,String request_status,String inserted_date,String modified_date) {  
		this.from_id=from_id;  
		this.to_id=to_id; 
		this.subject=subject;
		this.attachment=attachment;
		this.status=status;    		  
		this.request_id=request_id; 
		this.request_status=request_status; 
		this.inserted_date=inserted_date; 
		this.modified_date=modified_date; 
	}
	
	public String getFrom_id() {
		return from_id;
	}

	public void setFrom_id(String from_id) {
		this.from_id = from_id;
	}

	public String getTo_id() {
		return to_id;
	}

	public void setTo_id(String to_id) {
		this.to_id = to_id;
	}

	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getAttachment() {
		return attachment;
	}
	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public String getFuture() {
		return future;
	}

	public void setFuture(String future) {
		this.future = future; 
	}	

	public String getRequest_id() {
		return request_id;
	}

	public void setRequest_id(String request_id) {
		this.request_id = request_id;
	}

	public String getRequest_status() {
		return request_status;
	}

	public void setRequest_status(String request_status) {
		this.request_status = request_status;
	}

	public String getInserted_date() {
		return inserted_date;
	}
	public void setInserted_date(String inserted_date) {
		this.inserted_date = inserted_date;
	}
	public String getModified_date() {
		return modified_date;
	}
	public void setModified_date(String modified_date) {
		this.modified_date = modified_date;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	
}
