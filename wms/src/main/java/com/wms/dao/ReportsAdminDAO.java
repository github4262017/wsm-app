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
import com.wms.constant.WMSConstant;
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

		String totalUtilization = WMSConstant.totalUtilization;
		List<Map<String, Object>> rows = executeQueryList(totalUtilization);

		MutableBagMultimap<String, String> multiMapTotalBuildingSeat = Multimaps.mutable.bag.empty();

		for (Map<String, Object> details : rows) {

			String Floor_id = ((String) details.get("floor_id")).trim();
			String Bench_Type = ((String) details.get("bench_type")).trim();

			multiMapTotalBuildingSeat.put(Floor_id, Bench_Type);

		}
		return multiMapTotalBuildingSeat;


	}

	public List<Map<String, Object>> executeQueryList(String sql) {
		List<Map<String, Object>> queryResult = getJdbcTemplate().queryForList(sql);
		return queryResult;
	}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByISBLDivisionMap(){
		String Occupy_ISBL = WMSConstant.Occupy_ISBL;
		List<Map<String, Object>> rows = executeQueryList(Occupy_ISBL);


		MutableBagMultimap<String, String> multimapOccupiedByISBL = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedByISBL.put(Floor_id, Bench_Type);
		}

		return multimapOccupiedByISBL;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Created by Thiru
	 ********************************************/
	public MutableBagMultimap getOccupiedBySARDDivisionMap(){
		String Occupy_SARD = WMSConstant.Occupy_SARD;
		List<Map<String, Object>> rows = executeQueryList(Occupy_SARD);


		MutableBagMultimap<String, String> multimapOccupiedBySARD = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedBySARD.put(Floor_id, Bench_Type);
		}

		return multimapOccupiedBySARD;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByINFOSECDivisionMap(){
		String Occupy_INFOSEC = WMSConstant.Occupy_INFOSEC;
		List<Map<String, Object>> rows = executeQueryList(Occupy_INFOSEC);   

		MutableBagMultimap<String, String> multimapOccupiedByINFOSEC = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedByINFOSEC.put(Floor_id, Bench_Type);
		}
            
		return multimapOccupiedByINFOSEC;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByPANDCDivisionMap(){
		String Occupy_PANDC =  WMSConstant.Occupy_PANDC;
		List<Map<String, Object>> rows = executeQueryList(Occupy_PANDC);

		MutableBagMultimap<String, String> multimapOccupiedByPANDC = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedByPANDC.put(Floor_id, Bench_Type);
		}      
		return multimapOccupiedByPANDC;
		}
	/***************************
	 * Function to get the count of Total Occupied Seats Ends : Created by thiru
	 ********************************************/
	public MutableBagMultimap getOccupiedSeatsMap(){

		String getOccupiedSeatsMap = WMSConstant.getOccupiedSeatsMap;
		List<Map<String, Object>> rows = executeQueryList(getOccupiedSeatsMap);

		MutableBagMultimap<String, String> multimapOccupiedSeats = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapOccupiedSeats.put(Floor_id, Bench_Type);
		}
     
		return multimapOccupiedSeats;
		}
	/***************************
	 * Function to get the count of Total Occupied Seats Ends : Created by thiru
	 ********************************************/
	public MutableBagMultimap getTotalVacantSeatsMap(){
		String getTotalVacantSeatsMap =WMSConstant.getTotalVacantSeatsMap;
		List<Map<String, Object>> rows = executeQueryList(getTotalVacantSeatsMap);

		MutableBagMultimap<String, String> multimapTotalVacantSeats = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			multimapTotalVacantSeats.put(Floor_id, Bench_Type);
		}
      
		return multimapTotalVacantSeats;
		}
	
	public MutableBagMultimap getOccupiedByDivisionHeadCountMap(String division){
		String getOccupiedByDivisionHeadCountMap =WMSConstant.getOccupiedByDivisionHeadCountMap+ "'"+division+"' GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = executeQueryList(getOccupiedByDivisionHeadCountMap);
		

		MutableBagMultimap<String, String> multimapOccupiedByISBL = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String employees =((String)details.get("employees")).trim();
			String[] employeesShift=employees.split(","); 
			for (int i = 0; i < employeesShift.length; i++) {
				employees=employeesShift[i]; 
				multimapOccupiedByISBL.put(Floor_id, employees);
			}

		}

		return multimapOccupiedByISBL;
		}
	
}