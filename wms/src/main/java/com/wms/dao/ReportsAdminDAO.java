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
		List<Map<String, Object>> rows = ioilIIiI1(totalUtilization);      

		MutableBagMultimap<String, String> iiO0OIOIo = Multimaps.mutable.bag.empty();

		for (Map<String, Object> O0i01I1IO : rows) {

			String Floor_id = ((String) O0i01I1IO.get("floor_id")).trim();
			String Bench_Type = ((String) O0i01I1IO.get("bench_type")).trim();

			iiO0OIOIo.put(Floor_id, Bench_Type);

		}
		return iiO0OIOIo;


	}

	public List<Map<String, Object>> ioilIIiI1(String sql) {
		List<Map<String, Object>> queryResult = getJdbcTemplate().queryForList(sql);
		return queryResult;
	}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByISBLDivisionMap(){
		String Occupy_ISBL = WMSConstant.Occupy_ISBL;
		List<Map<String, Object>> rows = ioilIIiI1(Occupy_ISBL);


		MutableBagMultimap<String, String> O0i01I1IO = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			O0i01I1IO.put(Floor_id, Bench_Type);
		}

		return O0i01I1IO;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Created by Thiru
	 ********************************************/
	public MutableBagMultimap getOccupiedBySARDDivisionMap(){
		String Occupy_SARD = WMSConstant.Occupy_SARD;
		List<Map<String, Object>> rows = ioilIIiI1(Occupy_SARD);


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
		List<Map<String, Object>> rows = ioilIIiI1(Occupy_INFOSEC);   

		MutableBagMultimap<String, String> iolloIiI1 = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			iolloIiI1.put(Floor_id, Bench_Type);
		}
            
		return iolloIiI1;
		}
	/***************************
	 * Function to get the count of Total Building Seats Ends : Createdy Hari
	 ********************************************/
	public MutableBagMultimap getOccupiedByPANDCDivisionMap(){
		String Occupy_PANDC =  WMSConstant.Occupy_PANDC;
		List<Map<String, Object>> rows = ioilIIiI1(Occupy_PANDC);

		MutableBagMultimap<String, String> Oi00oI0I0 = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			Oi00oI0I0.put(Floor_id, Bench_Type);  
		}      
		return Oi00oI0I0;
		}
	/***************************
	 * Function to get the count of Total Occupied Seats Ends : Created by thiru
	 ********************************************/
	public MutableBagMultimap getOccupiedSeatsMap(){

		String getOccupiedSeatsMap = WMSConstant.getOccupiedSeatsMap;
		List<Map<String, Object>> rows = ioilIIiI1(getOccupiedSeatsMap);

		MutableBagMultimap<String, String> O110iIlII = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			O110iIlII.put(Floor_id, Bench_Type);
		}
     
		return O110iIlII;
		}
	/***************************
	 * Function to get the count of Total Occupied Seats Ends : Created by thiru
	 ********************************************/
	public MutableBagMultimap getTotalVacantSeatsMap(){
		String getTotalVacantSeatsMap =WMSConstant.getTotalVacantSeatsMap;
		List<Map<String, Object>> rows = ioilIIiI1(getTotalVacantSeatsMap);

		MutableBagMultimap<String, String> I1I0OI0Io = Multimaps.mutable.bag.empty();

		for(Map<String,Object> details : rows ) {	
			String Floor_id = ((String)details.get("floor_id")).trim();
			String Bench_Type =((String)details.get("bench_type")).trim();
	
			I1I0OI0Io.put(Floor_id, Bench_Type);
		}
      
		return I1I0OI0Io;
		}
	
	public MutableBagMultimap getOccupiedByDivisionHeadCountMap(String division){
		String getOccupiedByDivisionHeadCountMap =WMSConstant.getOccupiedByDivisionHeadCountMap+ "'"+division+"' GROUP BY ws.workstation_no";
		List<Map<String, Object>> rows = ioilIIiI1(getOccupiedByDivisionHeadCountMap);
		    

		MutableBagMultimap<String, String> i1IoiI0I0 = Multimaps.mutable.bag.empty();

		for(Map<String,Object> IlI0OIlI1 : rows ) {	
			String Floor_id = ((String)IlI0OIlI1.get("floor_id")).trim();
			String employees =((String)IlI0OIlI1.get("employees")).trim();
			String[] employeesShift=employees.split(","); 
			for (int i = 0; i < employeesShift.length; i++) {
				employees=employeesShift[i]; 
				i1IoiI0I0.put(Floor_id, employees);
			}

		}

		return i1IoiI0I0;
		}
	
}