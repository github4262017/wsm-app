package com.wms.consumingrest; 

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Quote {
 
	//private String type;
	//private Value value; 
	///*
	private ArrayList<SonyEmployeeDetailsREST> employeeDetails;

	public Quote() {
	}
    
	/*
	@Override
	public String toString() {
		return "Quote{" +
				"type='" + userDetailsResponse + '\'' +
				'}';
	}//*/
	
	
	public ArrayList<SonyEmployeeDetailsREST> getEmployeeDetails() {
		return employeeDetails;
	}

	public void setEmployeeDetails(ArrayList<SonyEmployeeDetailsREST> employeeDetails) {
		this.employeeDetails = employeeDetails;
	}

	@Override
	public String toString() {
		return "Quote{" +
				"type='" + "success" + '\'' +
				"value='" + employeeDetails +
				'}';
	}
	
}