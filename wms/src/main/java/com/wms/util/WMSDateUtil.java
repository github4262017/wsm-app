package com.wms.util;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.YearMonth;

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
	
	/*
	 * This returns current year
	 */
	public static String getCurrentYear() {
		int year = YearMonth.now().getYear();
		String currentYear = Integer.toString(year);
		return currentYear;
	}
	
	
	public static void main(String[] args) {  
	    String str="2015-03-31";  
	    Date date=Date.valueOf(str);//converting string into sql date  
	    System.out.println(date); 
	    System.out.println("Get Current Year"+getCurrentYear());
	}  
}
