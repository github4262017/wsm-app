package com.wms.configuration;

/**
 * Created by Yasin Mert on 25.02.2017.
 */
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.session.HttpSessionEventPublisher;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Order(SecurityProperties.BASIC_AUTH_ORDER)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private DataSource dataSource;
	
	@Value("${spring.queries.users-query}")
	private String usersQuery;
	
	@Value("${spring.queries.roles-query}")
	private String rolesQuery;

	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.
			jdbcAuthentication()
				.usersByUsernameQuery(usersQuery)
				.authoritiesByUsernameQuery(rolesQuery)
				.dataSource(dataSource)
				.passwordEncoder(bCryptPasswordEncoder);
	}   

	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.
		authorizeRequests()
			.antMatchers("/allocation/empSeatAssignTest").permitAll()
			.antMatchers("/allocation/pmrequest").permitAll()  // TODO Hari This is for testing purpose, please remove this later
			.antMatchers("/").permitAll()
			.antMatchers("/wms").permitAll()
			.antMatchers("/login").permitAll()
			.antMatchers("/registration").permitAll()
			.antMatchers("/admin/**").hasAuthority("Super Admin").anyRequest()
			//.antMatchers("/user/**").hasAuthority("USER").anyRequest()
			.authenticated().and().formLogin()
			.loginPage("/login").failureUrl("/wms?error=true")
			.defaultSuccessUrl("/home")
			.usernameParameter("email")
			.passwordParameter("password")
			.and().exceptionHandling()
			.accessDeniedPage("/access-denied");
			
		  	//http.sessionManagement().sessionFixation().newSession().maximumSessions(1).maxSessionsPreventsLogin(true).sessionRegistry(sessionRegistry()).expiredUrl("/403.html");
			//http.sessionManagement().maximumSessions(1).maxSessionsPreventsLogin(true).sessionRegistry(sessionRegistry());
		
		http
        .sessionManagement().sessionFixation().newSession()
            .maximumSessions(1)
                .maxSessionsPreventsLogin(true)
                .sessionRegistry(sessionRegistry());
			
			//http.headers().contentSecurityPolicy("connect-src 'self' https://trustedscripts.example.com; object-src  https://trustedplugins.example.com; report-uri /cspreport-endpoint/");	
	}
	
	@Override 
	public void configure(WebSecurity web) throws Exception {
	    web
	       .ignoring()
	       .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**", "/svg/**");
	}
	@Bean
	public SessionRegistry sessionRegistry() {
	    SessionRegistry sessionRegistry = new SessionRegistryImpl();
	    return sessionRegistry;
	}
	
	// Register HttpSessionEventPublisher
	@Bean
	public static ServletListenerRegistrationBean httpSessionEventPublisher() {
	    return new ServletListenerRegistrationBean(new HttpSessionEventPublisher());
	}
	
	@Bean
	public FilterRegistrationBean xssPreventFilter() {
	    FilterRegistrationBean registrationBean = new FilterRegistrationBean();

	    registrationBean.setFilter(new XSSFilter());
	    registrationBean.addUrlPatterns("/*");

	    return registrationBean;
	}
	
	

}