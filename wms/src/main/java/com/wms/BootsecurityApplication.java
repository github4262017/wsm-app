package com.wms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


@SpringBootApplication
public class BootsecurityApplication  {
//public class BootsecurityApplication  {
	
	 
	
	  public static void main(String[] args) {
	  SpringApplication.run(BootsecurityApplication.class, args); }
	 
}


/*
 * @SpringBootApplication public class BootsecurityApplication extends
 * SpringBootServletInitializer { //public class BootsecurityApplication {
 * 
 * @Override protected SpringApplicationBuilder
 * configure(SpringApplicationBuilder application) { return
 * application.sources(BootsecurityApplication.class); }
 * 
 * 
 * 
 * public static void main(String[] args) {
 * SpringApplication.run(BootsecurityApplication.class, args); }
 * 
 * }
 */
