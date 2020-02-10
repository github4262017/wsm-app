package com.wms.configuration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.wms.service.LoginAttemptService;

@Component
public class CustomAuthenticationFailureHandler implements AuthenticationFailureHandler {

	@Autowired
	private LoginAttemptService loginAttemptService;

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException e) throws IOException, ServletException {
		String emailid = request.getParameter("email");
		System.out.println("Failed for email" + emailid + loginAttemptService);
		boolean maxAttempt = loginAttemptService.setLoginTrackDetails(emailid);
		if (maxAttempt) {
			response.sendRedirect("/maxattempt");
		} else {
			response.sendRedirect("/wms?error=true");
		}

	}
}