package com.wms.dao.email;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.wms.constant.SchedulerConstant;

@Repository
public class EmailTriggerDAO extends JdbcDaoSupport {
	@Autowired 
	DataSource dataSource;
    
	@Value("${wms.bulkupload.emailjobs.count}")  
	private int maxJob;
	
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
		System.out.println("Data Source in constructor"+getJdbcTemplate().getDataSource());
	}
	
	private List<Map<String, Object>> executeQueryList(String sql) {
		System.out.println("Data Source"+getJdbcTemplate().getDataSource());
		List<Map<String, Object>> emails = getJdbcTemplate().queryForList(sql);
		return emails;  
	}
	
	public List<EmailDetails> getEmailJobs(){		
		String emailTriggerQuery = "SELECT * from wms_email_jobs where status='P' limit " +maxJob;
		RowMapper<EmailDetails> rowMapper = new BeanPropertyRowMapper<EmailDetails>(EmailDetails.class);
		return getJdbcTemplate().query(emailTriggerQuery,rowMapper);		
	}   
	                                                                    	
	public void updateStatus(EmailDetails emailDetails){ 
		try {
			//String statusUpdate = "update wms_email_jobs set status="+"'S'"+ " where status = "+"'P'"+" and request_id="+"'Req'";	
			String statusUpdate = "update wms_email_jobs set status= ? where status = ? and request_id = ? ";
			System.out.println("statusUpdate"+statusUpdate);  
			int rows =getJdbcTemplate().update(statusUpdate,emailDetails.getStatus(),SchedulerConstant.EMAIL_PENDING_STATUS,emailDetails.getRequest_id());   
			//int rows =getJdbcTemplate().update(statusUpdate);    
			System.out.println("updateStatus"+rows);   
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	
	}

	public List<EmailDetails> getDeallocationEmailJobs() {
		String emailTriggerQuery = "SELECT * from wms_email_jobs where status='P' limit " +maxJob;
		RowMapper<EmailDetails> rowMapper = new BeanPropertyRowMapper<EmailDetails>(EmailDetails.class);
		return getJdbcTemplate().query(emailTriggerQuery,rowMapper);
	}
	 	
	
}
