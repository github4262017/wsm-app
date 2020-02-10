package com.wms.dao.logintrack;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.wms.dao.WmsBaseDAO;

@Repository
public class LoginAttemptDAO extends WmsBaseDAO {
	private final static Logger LOGGER = LoggerFactory.getLogger(LoginAttemptDAO.class);
		
	public boolean isUserLoggedIn(String emailid) {
		boolean isUserLoggedIn = false;
		try {
			String sql = "SELECT email_id FROM wms_login_tracking WHERE email_id = ?";
			String emailId =  getJdbcTemplate().queryForObject(sql, new Object[]{emailid}, String.class);
			if(emailId!=null && emailId.trim().length()>0) {
				isUserLoggedIn = true;
			}
		}catch(Exception e) {
			LOGGER.error("Exception while user selection wms_login_tracking" + e);
		}
		return isUserLoggedIn;
	}
	
	public boolean insertLoginDetails(LoginAttemptInfo loginTrackerInfo) {
		boolean insertLoginDetails = false;
		try {
			String insertQuery = "INSERT INTO wms_login_tracking (email_id, login_time, logout_time, ip_address, no_attempts) VALUES (?,?,?,?,?)";
			int updateStatus = getJdbcTemplate().update( insertQuery, loginTrackerInfo.getEmail_id(), loginTrackerInfo.getLogin_time(),loginTrackerInfo.getLogout_time(),loginTrackerInfo.getIp_address(),loginTrackerInfo.getNo_attempts());
			if(updateStatus == 1) {
				insertLoginDetails = true;
			}
		}catch(Exception e) {
			LOGGER.error("Exception during update attempts in wms_login_tracking" + e);
		}
		return insertLoginDetails;
	}
	
	public int getNoOfAttempts(String emailid) {
		int noOfAttempts = 0;
		try {
			String sql = "SELECT no_attempts FROM wms_login_tracking WHERE email_id = ?";
			noOfAttempts =  getJdbcTemplate().queryForObject(sql, new Object[]{emailid}, Integer.class);
		}catch(Exception e) {
			LOGGER.error("Exception during select wms_login_tracking" + e);
		}
		return noOfAttempts;
	}
	
	public boolean updateAttempts(String emailid,int noOfAttempts) {
		boolean updatedAttempts = false;
		try {
			String sql = "UPDATE wms_login_tracking SET no_attempts = ? WHERE email_id = ?";
			int updateStatus = getJdbcTemplate().update(sql,noOfAttempts,emailid);
			if(updateStatus == 1) {
				updatedAttempts = true;
			}
		}catch(Exception e) {
			LOGGER.error("Exception during update attempts in wms_login_tracking" + e);
		}
		return updatedAttempts;
	}
	
	public boolean setUserInactive(String emailid) {
		boolean isSetInactive = false;
		try {
			String sql = "UPDATE user SET active = 0 WHERE email = ?";
			int updateStatus = getJdbcTemplate().update(sql,emailid);
			if(updateStatus == 1) {
				isSetInactive = true;
			}
		}catch(Exception e) {
			LOGGER.error("Exception during set inactive for user [" + emailid + "]"+ e);
		}
		return isSetInactive;
	}
		 
	
	
	
}
