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
	/*
	public static void main(String[] args) 
	{ 
		// Blank workbook 
		XSSFWorkbook workbook = new XSSFWorkbook(); 

		// Create a blank sheet 
		XSSFSheet sheet = workbook.createSheet("student Details"); 
'
		// This data needs to be written (Object[]) 
		Map<String, Object[]> data = new TreeMap<String, Object[]>(); 
		//data= getJdbcTemplate().query("Select * from workstation status", (ResultSet rs) -> {
			
		//}
		data.put("1", new Object[]{ "ID", "NAME", "LASTNAME" }); 
		data.put("2", new Object[]{ 1, "Pankaj", "Kumar" }); 
		data.put("3", new Object[]{ 2, "Prakashni", "Yadav" }); 
		data.put("4", new Object[]{ 3, "Ayan", "Mondal" }); 
		data.put("5", new Object[]{ 4, "Virat", "kohli" });   

		// Iterate over data and write to sheet 
		Set<String> keyset = data.keySet(); 
		int rownum = 0; 
		for (String key : keyset) { 
			// this creates a new row in the sheet 
			Row row = sheet.createRow(rownum++); 
			Object[] objArr = data.get(key); 
			int cellnum = 0; 
			for (Object obj : objArr) { 
				// this line creates a cell in the next column of that row 
				Cell cell = row.createCell(cellnum++); 
				if (obj instanceof String) 
					cell.setCellValue((String)obj); 
				else if (obj instanceof Integer) 
					cell.setCellValue((Integer)obj); 
			} 
		} 
		try { 
			// this Writes the workbook gfgcontribute 
			ReportsAdminDAO rad=new ReportsAdminDAO();
			rad.getAdminReportMap();
			FileOutputStream out = new FileOutputStream(new File("gfgcontribute.xlsx")); 
			workbook.write(out); 
			out.close(); 
			System.out.println("gfgcontribute.xlsx written successfully on disk."); 
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	}*/ 
	
}