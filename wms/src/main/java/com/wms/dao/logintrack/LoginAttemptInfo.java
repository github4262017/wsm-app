package com.wms.dao.logintrack;

import java.io.Serializable;
import java.sql.Timestamp;

public class LoginAttemptInfo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 
	private String email_id;
	private Timestamp login_time;
	private Timestamp logout_time;
	private String ip_address;
	private int no_attempts;
	
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	
	public Timestamp getLogin_time() {
		return login_time;
	}
	public void setLogin_time(Timestamp login_time) {
		this.login_time = login_time;
	}
	public Timestamp getLogout_time() {
		return logout_time;
	}
	public void setLogout_time(Timestamp logout_time) {
		this.logout_time = logout_time;
	}
	public String getIp_address() {
		return ip_address;
	}
	public void setIp_address(String ip_address) {
		this.ip_address = ip_address;
	}
	public int getNo_attempts() {
		return no_attempts;
	}
	public void setNo_attempts(int no_attempts) {
		this.no_attempts = no_attempts;
	}
	
}
