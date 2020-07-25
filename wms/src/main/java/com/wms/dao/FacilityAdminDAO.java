package com.wms.dao;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.WMSConstant;
import com.wms.model.FMDashboardDetails;


@Repository
public class FacilityAdminDAO extends JdbcDaoSupport{

	@Autowired 
	DataSource dataSource;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
	
	private String OilloIII0(String o00I1III0) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		int IiIl0IIIl = getJdbcTemplate().queryForObject(o00I1III0, Integer.class);
		return String.valueOf(IiIl0IIIl);
	}
	
	public FMDashboardDetails getFacilityAdminCount(){		
						
			String I0il0I1IO = WMSConstant.fa_rejected_dash+"(\"Rejected\")";
			String l0il0I1IO = OilloIII0(I0il0I1IO);
			
			String o0ollIOIl = WMSConstant.fa_assigned_dash+"(\"Assigned\")";
			String i01liIlIO = OilloIII0(o0ollIOIl);
			
			String O1Ol0IIIO = WMSConstant.fa_pending_dash+" (\"Pending\")";
			String I1il1IiIO = OilloIII0(O1Ol0IIIO);
			
			String l1OlIIiII = WMSConstant.fa_accepted_dash+" (\"Accepted\")";
			String o1Ol1IiIo = OilloIII0(l1OlIIiII);
			
			String i1olOI0Il =  WMSConstant.fa_allocated_dash+" (\"Allocated\")";
			String O11oIIoIi = OilloIII0(i1olOI0Il);
			

			String IO0olIIIO = WMSConstant.fa_allRequest_dash;
			String lO0ooIOIi = OilloIII0(IO0olIIIO);
			
			String oOlolI0I0 = WMSConstant.fa_thisMonth_dash;
			String iOIo0IlIi = OilloIII0(oOlolI0I0); 
			
	
			String OIOoiIoIO = WMSConstant.fa_todayRequest_dash;			
			String IIiolIiII = OilloIII0(OIOoiIoIO);
			
			
			FMDashboardDetails fmDashboardDetails = new FMDashboardDetails();
			fmDashboardDetails.setAllRequest(lO0ooIOIi);
			fmDashboardDetails.setThisMonth(iOIo0IlIi);
			fmDashboardDetails.setTodayRequest(IIiolIiII);
			fmDashboardDetails.setAssigned(i01liIlIO);
			fmDashboardDetails.setPending(I1il1IiIO);
			fmDashboardDetails.setRejected(l0il0I1IO);
			fmDashboardDetails.setAllocated(O11oIIoIi);

	return fmDashboardDetails;
	}

}
