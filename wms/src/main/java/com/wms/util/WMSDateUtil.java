package com.wms.util;

import java.sql.Date;
import java.sql.Timestamp;

public class WMSDateUtil {
	/**
	 * This method returns the current Timestamp
	 * @param args
	 * @return
	 */
	public static Timestamp getCurrentTimeStamp() {
		Date date = new Date(System.currentTimeMillis());
		long time = date.getTime();
		System.out.println("Time in Milliseconds: " + time);
		Timestamp ts = new Timestamp(time);
		System.out.println("Current Time Stamp: " + ts);
		return ts;
	}
	
	public static Date getDateFormat(String inputDate) {  
		System.out.println(inputDate);
	    Date date=Date.valueOf(inputDate);//converting string into sql date  
	    System.out.println(date);  
	    return date;
	}  
	
	public static void main(String[] args) {  
	    String str="2015-03-31";  
	    Date date=Date.valueOf(str);//converting string into sql date  
	    System.out.println(date);  
	}  
}
