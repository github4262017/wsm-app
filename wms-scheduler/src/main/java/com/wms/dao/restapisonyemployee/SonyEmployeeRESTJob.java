package com.wms.dao.restapisonyemployee;


import com.wms.consumingrest.ConsumingRestApplication;

public class SonyEmployeeRESTJob implements Runnable { 
	
	ConsumingRestApplication crs = new ConsumingRestApplication();
	public SonyEmployeeRESTJob() {
	}
	
	@Override
	public void run() {
		
	try {		
				//crs.withSSLTesting();
				
				//leveluplunchPROXY(); 
				
			} catch (Exception e) {
				System.out.println("Exception"+e); 				
			}
			//TODO 
		}	
		
}
