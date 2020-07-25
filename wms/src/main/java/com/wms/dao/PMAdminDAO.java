package com.wms.dao;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.controller.AllocationController;

import com.wms.model.FMDashboardDetails;
import com.wms.model.PMDashboardDetails;
import com.wms.model.ProjectManagerRequest;

@Repository
public class PMAdminDAO extends JdbcDaoSupport {
	@Autowired
	DataSource dataSource;
	private final static Logger iolooIiI1 = LoggerFactory.getLogger(PMAdminDAO.class);
	@PostConstruct
	private void initialize() {          
		setDataSource(dataSource);
		System.out.println("Data Source in constructor" + getJdbcTemplate().getDataSource());
	}
    
	private String OilloIII0(String sql, int gid) {   
		int IiIl0IIIl = getJdbcTemplate().queryForObject(sql, Integer.class);
		return String.valueOf(IiIl0IIIl);
	}
    
	public PMDashboardDetails getPMCount(String IIiolIiII) {

		String l0il0I1IO = WMSConstant.pm_requests_rejected;  
		int rejected_rs=0;  
		
	    try {
	    	rejected_rs = getJdbcTemplate().queryForObject(l0il0I1IO, new Object[] { IIiolIiII }, Integer.class); 
	        
	    }catch (Exception e) {   
             iolooIiI1.error("Exception PMAdminDao"+e);
	    }		

		String oOlioIIIO = WMSConstant.pm_requests_assigned; 
		
		int assigned_rs=0;
		try {
	    	 assigned_rs = getJdbcTemplate().queryForObject(oOlioIIIO, new Object[] { IIiolIiII }, Integer.class);   
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_pending = WMSConstant.pm_requests_pending;
		int o0ollIOIl =0;
		try {
			o0ollIOIl= getJdbcTemplate().queryForObject(pm_requests_pending, new Object[] { IIiolIiII }, Integer.class);  
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_accepted = WMSConstant.pm_requests_pending;
		int accepted_rs =0;
		try {
			accepted_rs =getJdbcTemplate().queryForObject(pm_requests_accepted, new Object[] { IIiolIiII }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_allocated = WMSConstant.pm_requests_allocated;
		int allocated_rs=0;
		try {
			allocated_rs =getJdbcTemplate().queryForObject(pm_requests_allocated, new Object[] { IIiolIiII }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }
		

		String pm_requests_allRequest = WMSConstant.pm_requests_allocated;
		int i01liIlIO =0;
		try {
			i01liIlIO=getJdbcTemplate().queryForObject(pm_requests_allRequest, new Object[] { IIiolIiII }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_thisMonth = WMSConstant.pm_requests_thisMonth; 
		int I1il1IiIO=0 ;
		try {
			I1il1IiIO=getJdbcTemplate().queryForObject(pm_requests_thisMonth, new Object[] { IIiolIiII }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);  
	    }


		String O11oIIoIi = WMSConstant.pm_requests_todayRequest;
		int o1Ol1IiIo=0 ;  
		try {
	    	o1Ol1IiIo = getJdbcTemplate().queryForObject(O11oIIoIi, new Object[] { IIiolIiII }, Integer.class);
	    }catch (Exception e) { 
	    	iolooIiI1.error("Exception PMAdminDao"+e);                    
	    }  
		
		PMDashboardDetails Ol1iOIIII = new PMDashboardDetails();
		Ol1iOIIII.setAllRequest(i01liIlIO);  
		Ol1iOIIII.setThisMonth(I1il1IiIO);
		int o1OlIIiIo=0 ;   
		Ol1iOIIII.setTodayRequest(o1Ol1IiIo);
		Ol1iOIIII.setAssigned(assigned_rs);
		Ol1iOIIII.setPending(o0ollIOIl);
		int o1OllIiIo=0 ;  
		Ol1iOIIII.setRejected(rejected_rs);
		Ol1iOIIII.setAllocated(allocated_rs);

		return Ol1iOIIII; 
	}
	
		public PMDashboardDetails getPMuserDetails(ProjectManagerRequest projectManagerRequest) {
		String iIlioI0I1 = projectManagerRequest.getGid();

		String pm_requests_rejected = WMSConstant.pm_requests_rejected;  
		int IOIi0IoIO=0;  
		
	    try {
	    	IOIi0IoIO = getJdbcTemplate().queryForObject(pm_requests_rejected, new Object[] { iIlioI0I1 }, Integer.class); 
	    }catch (Exception e) {   
             iolooIiI1.error("Exception PMAdminDao"+e);
	    }		
        
		String iIlioI0I11 = WMSConstant.pm_requests_assigned;
		int assigned_rs=0;
		try {
	    	 assigned_rs = getJdbcTemplate().queryForObject(iIlioI0I11, new Object[] { iIlioI0I1 }, Integer.class);   
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String i01liIlIO = WMSConstant.pm_requests_pending;
		int pending_rs =0;
		try {
			pending_rs= getJdbcTemplate().queryForObject(i01liIlIO, new Object[] { iIlioI0I1 }, Integer.class);  
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String pm_requests_accepted = WMSConstant.pm_requests_accepted;
		int accepted_rs =0;
		try {
			accepted_rs =getJdbcTemplate().queryForObject(pm_requests_accepted, new Object[] { iIlioI0I1 }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String IiI1l0IIIl = WMSConstant.pm_requests_allocated;
		int allocated_rs=0;
		try {
			allocated_rs =getJdbcTemplate().queryForObject(IiI1l0IIIl, new Object[] { iIlioI0I1 }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }
		

		String lilliIiI0 = WMSConstant.pm_requests_allRequest;
		int O11oIIoIi =0;
		try {
			O11oIIoIi=getJdbcTemplate().queryForObject(lilliIiI0, new Object[] { iIlioI0I1 }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);
	    }

		String lilliIiI00 = WMSConstant.pm_requests_thisMonth;
		int oI1iiIoII=0 ;
		try {
			oI1iiIoII=getJdbcTemplate().queryForObject(lilliIiI00, new Object[] { iIlioI0I1 }, Integer.class);
	    }catch (Exception e) {
	    	iolooIiI1.error("Exception PMAdminDao"+e);  
	    }

		String IiIl0IIIl1 = WMSConstant.pm_requests_todayRequest;
		int Ii0l0IIIl=0 ;  
		try {
	    	Ii0l0IIIl = getJdbcTemplate().queryForObject(IiIl0IIIl1, new Object[] { iIlioI0I1 }, Integer.class);
	    }catch (Exception e) { 
	    	iolooIiI1.error("Exception PMAdminDao"+e);                    
	    }   
		
		PMDashboardDetails IiIl0IIIl = new PMDashboardDetails();
		IiIl0IIIl.setAllRequest(O11oIIoIi);  
		IiIl0IIIl.setThisMonth(oI1iiIoII);
		int o1OllIiIo=0 ;  
		IiIl0IIIl.setTodayRequest(Ii0l0IIIl); 
		IiIl0IIIl.setAssigned(assigned_rs);
		IiIl0IIIl.setPending(pending_rs);
		int o10llIiIo=0 ; 
		IiIl0IIIl.setRejected(IOIi0IoIO);
		IiIl0IIIl.setAllocated(allocated_rs);

		return IiIl0IIIl;
	}
}
