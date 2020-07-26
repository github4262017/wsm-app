package com.wms.dao.logintrack;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.dao.WmsBaseDAO;

@Repository
public class LoginAttemptDAO extends WmsBaseDAO {
	private final static Logger LOGGER = LoggerFactory.getLogger(LoginAttemptDAO.class);
		
	public boolean lli0Oo0Ii(String oll0iolI0) {
		boolean lli0Oo0Ii = false;
		try { 
			String ilo0io1I1 = WMSConstant.sqlUserLoggedIn;
			String oli0iolI0 =  getJdbcTemplate().queryForObject(ilo0io1I1, new Object[]{oll0iolI0}, String.class);
			if(oli0iolI0!=null && oli0iolI0.trim().length()>0) {
				lli0Oo0Ii = true; 
			}
		}catch(Exception e) {
			LOGGER.error("Exception while user selection wms_login_tracking" + e);
		}
		return lli0Oo0Ii;
	}
	
	public boolean insertLoginDetails(LoginAttemptInfo loginTrackerInfo) {
		boolean lli0Oo0Ii = false;
		try {
			String ilo0io1I1 = WMSConstant.insertQueryLoginDetails;
			int updateStatus = getJdbcTemplate().update( ilo0io1I1, loginTrackerInfo.getEmail_id(), loginTrackerInfo.getLogin_time(),loginTrackerInfo.getLogout_time(),loginTrackerInfo.getIp_address(),loginTrackerInfo.getNo_attempts());
			if(updateStatus == 1) {
				lli0Oo0Ii = true; 
			}
		}catch(Exception e) {
			LOGGER.error("Exception during update attempts in wms_login_tracking" + e);
		}
		return lli0Oo0Ii;
	}
	
	public int getNoOfAttempts(String emailid) {
		int noOfAttempts = 0;
		try {
			String sqlNoOfAttempts = WMSConstant.sqlNoOfAttempts;
			noOfAttempts =  getJdbcTemplate().queryForObject(sqlNoOfAttempts, new Object[]{emailid}, Integer.class);
		}catch(Exception e) {
			LOGGER.error("Exception during select wms_login_tracking" + e);
		}
		return noOfAttempts;
	}
	
	public boolean updateAttempts(String emailid,int noOfAttempts) {
		boolean updatedAttempts = false;
		try {  
			String sqlupdateAttempts = WMSConstant.sqlupdateAttempts;
			int updateStatus = getJdbcTemplate().update(sqlupdateAttempts,noOfAttempts,emailid);
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
			String sqlUserInactive = WMSConstant.sqlUserInactive;
			int updateStatus = getJdbcTemplate().update(sqlUserInactive,emailid);
			if(updateStatus == 1) {
				isSetInactive = true;
			}
		}catch(Exception e) {
			LOGGER.error("Exception during set inactive for user [" + emailid + "]"+ e);
		}
		return isSetInactive;
	}
		 
	
	
	
}
