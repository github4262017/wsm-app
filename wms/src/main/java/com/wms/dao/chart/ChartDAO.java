package com.wms.dao.chart;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import com.wms.model.UtilizationAllocationDetails;
import com.wms.model.UtilizationReport;

@Repository
public class ChartDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
	
	public List<UtilizationReport> getUtilization(){
		String unallocated = "SELECT * from wms_utilization";
		RowMapper<UtilizationReport> rowMapper = new BeanPropertyRowMapper<UtilizationReport>(UtilizationReport.class);
		return getJdbcTemplate().query(unallocated,rowMapper);
	}
	

	public List<UtilizationAllocationDetails> getUtilizationReport(){
		String unallocated = "SELECT * from wms_allocation_seats order by request_id";
		RowMapper<UtilizationAllocationDetails> rowMapper = new BeanPropertyRowMapper<UtilizationAllocationDetails>(UtilizationAllocationDetails.class);
		return getJdbcTemplate().query(unallocated,rowMapper); 
	} 
	
	public String getChartResponse(){
		
		String totalUtilization = "select sum(total_capacity) as tc, sum(total_occupancy) as toc, sum(total_current_utilization) as tcu from wms_utilization where utilization_date = '2019-06-27'" ;
		
		String tc = "";
		String toc = "";
		String tcu = "";
		
		List<Map<String, Object>> rows = executeQueryList(totalUtilization);
		
		for(Map<String, Object> row:rows){
			tc = String.valueOf(row.get("tc"));
			toc = String.valueOf(row.get("toc"));
			tcu = String.valueOf(row.get("tcu"));
		}
		
		
		String allocatedUtil = toc;
		String unAllocatedUtil = String.valueOf(Double.valueOf(tc)-Double.valueOf(toc));
		String utilizedUtil = tcu;
		String unUtilizedUtil = String.valueOf(Double.valueOf(toc)-Double.valueOf(tcu));
		
		
		String unallocated = "SELECT count(*) from wms_allocation_details where seat_status in (\"UAL\")";
		String unallocated_rs = executeQuery(unallocated);
		
		String allocated = "SELECT count(*) from wms_allocation_details where seat_status in (\"AL\",\"AS\")";
		String allocated_rs = executeQuery(allocated);
		
		String assigned = "SELECT count(*) from wms_allocation_details where seat_status in (\"AS\")";
		String assigned_rs = executeQuery(assigned);
		
		String unassigned = "SELECT count(*) from wms_allocation_details where seat_status in (\"AL\")";
		String unassigned_rs = executeQuery(unassigned);
		
		String p1_total = "SELECT count(*) from wms_allocation_details where project_code = \"P1\"";
		String p1_total_rs = executeQuery(p1_total);
		
		String p1_assigned = "SELECT count(*) from wms_allocation_details where seat_status in (\"AS\") and project_code = \"P1\"";
		String p1_assigned_rs = executeQuery(p1_assigned);
		
		String p1_unassigned = "SELECT count(*) from wms_allocation_details where seat_status in (\"AL\") and project_code = \"P1\"";
		String p1_unassigned_rs = executeQuery(p1_unassigned);
		
		String p2_total = "SELECT count(*) from wms_allocation_details where project_code = \"P2\"";
		String p2_total_rs = executeQuery(p2_total);
		
		String p2_assigned = "SELECT count(*) from wms_allocation_details where seat_status in (\"AS\") and project_code = \"P2\"";
		String p2_assigned_rs = executeQuery(p2_assigned);
		
		String p2_unassigned = "SELECT count(*) from wms_allocation_details where seat_status in (\"AL\") and project_code = \"P2\"";
		String p2_unassigned_rs = executeQuery(p2_unassigned);
		
		String p1 = "{ \"id\":\"P1\", \"total\": " +p1_total_rs + ", \"assigned\":" + p1_assigned_rs + ", \"unassigned\":" +p1_unassigned_rs+ " }";
		String p2 = "{ \"id\":\"P2\", \"total\": " +p2_total_rs + ", \"assigned\":" + p2_assigned_rs + ", \"unassigned\":" +p2_unassigned_rs+ " }";
		
		String distDateSQL = "SELECT DISTINCT utilization_date FROM wms_utilization order by utilization_date asc" ;
		List<Map<String, Object>> distinctDates = executeQueryList(distDateSQL);
		List<String> distDateList = new ArrayList<>();
		List<String> allocatedList = new ArrayList<>();
		List<String> utilizedList = new ArrayList<>();
		
		for(Map<String, Object> row:distinctDates){
			String utilizationDate = String.valueOf(row.get("utilization_date"));
			System.out.println("utilization date"+utilizationDate);
			distDateList.add(utilizationDate.split("-")[2]);
			
			String dateWiseUtilizationSQL = "select sum(total_capacity) as tc, sum(total_occupancy) as toc, sum(total_current_utilization) as tcu from wms_utilization where utilization_date = '"+ utilizationDate +"' " ;
			
			SqlRowSet rowset = getJdbcTemplate().queryForRowSet(dateWiseUtilizationSQL);
			while (rowset.next()) {
				allocatedList.add(String.valueOf(rowset.getFloat("toc")));
				utilizedList.add(String.valueOf(rowset.getFloat("tcu")));
			}
			
		}
		
		System.out.println("Date list "+distDateList);
		String result = "{\"project\":[" + p1 + ", " + p2 + "],\"total_allocated\": { \"allocated\": " + allocatedUtil
				+ ", \"unallocated\": " + unAllocatedUtil + "},\"total_assigned\" : { \"utilized\": " + utilizedUtil
				+ ", \"unutilized\": " + unUtilizedUtil + "},\"utilizationBar\" : {\"xvalue\" : "+distDateList+"  , \"allocated\" : "+allocatedList+" , \"utilized\" : "+utilizedList+" }  }";
		
		
		return result;
	}
	

	private String executeQuery(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		int count = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(count);
	}
	
	private List<Map<String, Object>> executeQueryList(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		List<Map<String, Object>> utilization = getJdbcTemplate().queryForList(sql);
		return utilization;
	}
	
	
	public String getChartResponse1(){
		String total_capacity_SQL = "select sum(floor_capacity) from floor_details";
		String total_capacity_rs = executeQuery(total_capacity_SQL);
		
		String total_allocated_SQL = "SELECT * FROM wms_allocation_seats";
		String total_allocated_rs = String.valueOf(executeQueryList(total_allocated_SQL).size());
		
		String unAllocatedUtil = String.valueOf(Double.valueOf(total_capacity_rs)-Double.valueOf(total_allocated_rs));
		
		System.out.println("Unallocated" + unAllocatedUtil +"total_capacity_rs" + total_capacity_rs +"total_allocated_rs" + total_allocated_rs);
		
		
		String utilized_SQL = "SELECT * FROM emp_allocation where request_user_id in (SELECT emp_id FROM `attendance` where presence_date = '2019-07-25') group by workstation_no";
		List<Map<String, Object>> utilized_rs = executeQueryList(utilized_SQL);
		String totalUtilzed = String.valueOf(utilized_rs.size());
		String unUtilized_rs = String.valueOf(Double.valueOf(total_allocated_rs)-Double.valueOf(totalUtilzed));
		
		String distDateSQL = "SELECT DISTINCT presence_date FROM attendance" ;
		List<Map<String, Object>> distinctDates = executeQueryList(distDateSQL);
		List<String> distDateList = new ArrayList<>();
		List<String> allocatedList = new ArrayList<>();
		List<String> utilizedList = new ArrayList<>();
		
		for(Map<String, Object> row:distinctDates){
			String allocatedDate = String.valueOf(row.get("presence_date"));
			System.out.println("presence_date"+allocatedDate);
			distDateList.add(allocatedDate.split("-")[2]);
			
			String dateWiseUtilizationSQL = " SELECT * FROM emp_allocation where request_user_id in (SELECT emp_id FROM `attendance` where presence_date = '"+allocatedDate+"' ) group by workstation_no " ;
			List<Map<String, Object>> utilized__date_rs = executeQueryList(dateWiseUtilizationSQL);
			String totalUtilzed_date_rs = String.valueOf(utilized__date_rs.size());
			
			allocatedList.add(total_allocated_rs);
			utilizedList.add(totalUtilzed_date_rs);
			
		}
		
		
		String result = "{\"total_allocated\": { \"allocated\": " + total_allocated_rs
				+ ", \"unallocated\": " + unAllocatedUtil + "},\"total_assigned\" : { \"utilized\": " + totalUtilzed
				+ ", \"unutilized\": " + unUtilized_rs + "},\"utilizationBar\" : {\"xvalue\" : "+distDateList+"  , \"allocated\" : "+allocatedList+" , \"utilized\" : "+utilizedList+" }  }";
		
		System.out.println("new chart response" + result);
		return result;
	}
	
}
