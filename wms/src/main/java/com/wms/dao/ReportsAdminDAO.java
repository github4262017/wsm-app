package com.wms.dao;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;  

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.eclipse.collections.api.multimap.bag.MutableBagMultimap;
import org.eclipse.collections.impl.factory.Multimaps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.Multimap;
@Repository
public class ReportsAdminDAO extends WmsBaseDAO{                     
	
	/*
	 * @Autowired DataSource dataSource;
	 * 
	 * @PostConstruct private void initialize(){ setDataSource(dataSource);
	 * System.out.println("Data Source in constructor"+getJdbcTemplate().
	 * getDataSource()); }
	 */
	/*************************** 
	 * Function to get the count of Total Building Seats Starts : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getTotalBuildingSeatMap() {  
		System.out.println("AdminReportMap Started");
		String totalUtilization = "SELECT floor_id, bench_type from wms_coordinates ORDER BY floor_id";
		List<Map<String, Object>> rows = executeQueryList(totalUtilization);
		System.out.println("AdminReportMap Result List" + rows);

		MutableBagMultimap<String, String> multiMapTotalBuildingSeat = Multimaps.mutable.bag.empty();

		for (Map<String, Object> details : rows) {

			String Floor_id = ((String) details.get("floor_id")).trim();
			String Bench_Type = ((String) details.get("bench_type")).trim();

			multiMapTotalBuildingSeat.put(Floor_id, Bench_Type);

		}
		return multiMapTotalBuildingSeat;
		/*System.out.println("Floor 2 Workstation Count is " + multimap.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Workstation Count is " + multimap.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 Workstation Count is " + multimap.get("F2").occurrencesOf("ODC")); */

	}

	public List<Map<String, Object>> executeQueryList(String sql) {
		//System.out.println("Data Source" + getJdbcTemplate().getDataSource());
		List<Map<String, Object>> queryResult = getJdbcTemplate().queryForList(sql);
		return queryResult;
	}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByISBLDivisionMap(){
		System.out.println("AdminReportDivionMap Started");
		String Occupy_ISBL = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='ISBL' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(Occupy_ISBL);
		System.out.println("AdminReportMap Result List"+rows);

		MutableBagMultimap<String, String> multimapOccupiedByISBL = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedByISBL.put(Floor_id, Bench_Type);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapOccupiedByISBL.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Cabin OccupiedCount is " + multimapOccupiedByISBL.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 ODC OccupiedCount is " + multimapOccupiedByISBL.get("F2").occurrencesOf("ODC"));

		System.out.println("Floor 2 Total OccupiedCount is " + multimapOccupiedByISBL.get("F2").size());
		return multimapOccupiedByISBL;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Created by Thiru
	 ********************************************/
	public MutableBagMultimap getOccupiedBySARDDivisionMap(){
		System.out.println("AdminReportDivionMap Started");
		String Occupy_SARD = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='SARD' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(Occupy_SARD);
		System.out.println("AdminReportMap Result List"+rows);

		MutableBagMultimap<String, String> multimapOccupiedBySARD = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedBySARD.put(Floor_id, Bench_Type);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapOccupiedBySARD.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Cabin OccupiedCount is " + multimapOccupiedBySARD.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 ODC OccupiedCount is " + multimapOccupiedBySARD.get("F2").occurrencesOf("ODC"));

		System.out.println("Floor 2 Total OccupiedCount is " + multimapOccupiedBySARD.get("F2").size());
		return multimapOccupiedBySARD;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByINFOSECDivisionMap(){
		System.out.println("AdminReportDivionMap Started");
		String Occupy_INFOSEC = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='Infosec' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(Occupy_INFOSEC);
		System.out.println("AdminReportMap Result List"+rows);   

		MutableBagMultimap<String, String> multimapOccupiedByINFOSEC = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedByINFOSEC.put(Floor_id, Bench_Type);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapOccupiedByINFOSEC.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Cabin OccupiedCount is " + multimapOccupiedByINFOSEC.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 ODC OccupiedCount is " + multimapOccupiedByINFOSEC.get("F2").occurrencesOf("ODC"));

		System.out.println("Floor 2 Total OccupiedCount is " + multimapOccupiedByINFOSEC.get("F2").size());            
		return multimapOccupiedByINFOSEC;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByPANDCDivisionMap(){
		System.out.println("AdminReportDivionMap Started");
		String Occupy_PANDC = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='P&C' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(Occupy_PANDC);
		System.out.println("AdminReportMap Result List"+rows);

		MutableBagMultimap<String, String> multimapOccupiedByPANDC = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedByPANDC.put(Floor_id, Bench_Type);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapOccupiedByPANDC.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Cabin OccupiedCount is " + multimapOccupiedByPANDC.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 ODC OccupiedCount is " + multimapOccupiedByPANDC.get("F2").occurrencesOf("ODC"));

		System.out.println("Floor 2 Total OccupiedCount is " + multimapOccupiedByPANDC.get("F2").size());      
		return multimapOccupiedByPANDC;
		}
	/***************************
	 * Function to get the count of Total Occupied Seats Ends : Created by thiru
	 ********************************************/
	public MutableBagMultimap getOccupiedSeatsMap(){
		System.out.println("AdminReportOccupiedMap Started");
		String occupied_seats = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(occupied_seats);
		System.out.println("AdminReportMap Result List"+rows);

		MutableBagMultimap<String, String> multimapOccupiedSeats = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedSeats.put(Floor_id, Bench_Type);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapOccupiedSeats.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Cabin OccupiedCount is " + multimapOccupiedSeats.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 ODC OccupiedCount is " + multimapOccupiedSeats.get("F2").occurrencesOf("ODC"));

		System.out.println("Floor 2 Total OccupiedCount is " + multimapOccupiedSeats.get("F2").size());      
		return multimapOccupiedSeats;
		}
	/***************************
	 * Function to get the count of Total Occupied Seats Ends : Created by thiru
	 ********************************************/
	public MutableBagMultimap getTotalVacantSeatsMap(){
		System.out.println("AdminReportTotalVacantSeatsMap Started");
		String occupied_seats = "SELECT ws.floor_id,wc.bench_type  FROM `wms_workstation_status` ws INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no and ws.current_status=0 GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(occupied_seats);
		System.out.println("AdminReportMap Result List"+rows);

		MutableBagMultimap<String, String> multimapTotalVacantSeats = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapTotalVacantSeats.put(Floor_id, Bench_Type);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapTotalVacantSeats.get("F2").occurrencesOf("workstation"));
		System.out.println("Floor 2 Cabin OccupiedCount is " + multimapTotalVacantSeats.get("F2").occurrencesOf("cabin"));
		System.out.println("Floor 2 ODC OccupiedCount is " + multimapTotalVacantSeats.get("F2").occurrencesOf("ODC"));

		System.out.println("Floor 2 Total OccupiedCount is " + multimapTotalVacantSeats.get("F2").size());      
		return multimapTotalVacantSeats;
		}
	
	public MutableBagMultimap getOccupiedByDivisionHeadCountMap(String division){
		String Occupy_ISBL = "SELECT ws.floor_id,ws.employees FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='"+division+"' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(Occupy_ISBL);
		System.out.println("AdminReportMap Result List"+rows);

		MutableBagMultimap<String, String> multimapOccupiedByISBL = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String employees =((String)details.get("employees")).trim();
			String[] employeesShift=employees.split(","); 
			for (int i = 0; i < employeesShift.length; i++) {
				employees=employeesShift[i]; 
				multimapOccupiedByISBL.put(Floor_id, employees);
			}
			//multimapOccupiedByISBL.put(Floor_id, employees);
		}

		System.out.println("Floor 2 Workstation OccupiedCount is " + multimapOccupiedByISBL.get("F2").occurrencesOf("employees"));

		System.out.println("Floor 2 Total OccupiedCount F2 "+division + multimapOccupiedByISBL.get("F2").size());
		System.out.println("Floor 2 Total OccupiedCount F3P1 "+ division  + multimapOccupiedByISBL.get("F3P1").size());
		System.out.println("Floor 2 Total OccupiedCount F3P2 "+ division  + multimapOccupiedByISBL.get("F3P2").size());
		System.out.println("Floor 2 Total OccupiedCount F4 "+ division  + multimapOccupiedByISBL.get("F4").size());
		System.out.println("Floor 2 Total OccupiedCount F5 "+ division  + multimapOccupiedByISBL.get("F5").size());
		System.out.println("Floor 2 Total OccupiedCount F7 "+ division  + multimapOccupiedByISBL.get("F7").size());
		
		return multimapOccupiedByISBL;
		}
	
}