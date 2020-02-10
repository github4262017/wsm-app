package com.wms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.wms.dao.logintrack.LoginAttemptDAO;
import com.wms.dao.logintrack.LoginAttemptInfo;
import com.wms.util.WMSDateUtil;

@Service 
public class LoginAttemptService {
	@Autowired
	LoginAttemptDAO loginTrackDAO;
	
	@Value("${wms.user.login.attempts}")
	private int MAX_LOGIN_ATTEMPTS;  
	
	public boolean isUserLoggedIn(String emailid) {
		return loginTrackDAO.isUserLoggedIn(emailid);
	}
	
	public boolean setLoginDetails(LoginAttemptInfo loginTrackerInfo) {
		return loginTrackDAO.insertLoginDetails(loginTrackerInfo);
	}
	
	public int getUserAttempts(String emailid) {
		return loginTrackDAO.getNoOfAttempts(emailid);
	}
	
	public boolean updateAttempts(String emailid,int noOfAttempts) {
		return loginTrackDAO.updateAttempts(emailid, noOfAttempts);
	}
	
	public boolean setLoginTrackDetails(String emailid) {
		boolean isUserInactive = false;
		try {
			boolean isUserLogged =  loginTrackDAO.isUserLoggedIn(emailid);
			if(isUserLogged) {
				int noOfAttempts = loginTrackDAO.getNoOfAttempts(emailid);
				if (noOfAttempts > MAX_LOGIN_ATTEMPTS) {
					isUserInactive = loginTrackDAO.setUserInactive(emailid);
				}else {
					++noOfAttempts;
					loginTrackDAO.updateAttempts(emailid, noOfAttempts);
				}
			}else {
				LoginAttemptInfo lti = new LoginAttemptInfo();
				lti.setEmail_id(emailid);
				lti.setIp_address("");
				lti.setLogin_time(WMSDateUtil.getCurrentTimeStamp());
				lti.setLogout_time(WMSDateUtil.getCurrentTimeStamp());
				lti.setNo_attempts(1);
				boolean isLoginDetailsInserted = loginTrackDAO.insertLoginDetails(lti);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isUserInactive;
	}
}

