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
		String getEmailJobs = SchedulerConstant.getEmailJobs +maxJob; 
		RowMapper<EmailDetails> rowMapper = new BeanPropertyRowMapper<EmailDetails>(EmailDetails.class);
		return getJdbcTemplate().query(getEmailJobs,rowMapper);		
	}   
	                                                                    	
	public void updateStatus(EmailDetails emailDetails){    
		try {
			String emailstatusUpdate = SchedulerConstant.emailstatusUpdate;
			int rows =getJdbcTemplate().update(emailstatusUpdate,emailDetails.getStatus(),SchedulerConstant.EMAIL_PENDING_STATUS,emailDetails.getRequest_id());   
			//int rows =getJdbcTemplate().update(statusUpdate);    
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	                           
	}

	public List<EmailDetails> getDeallocationEmailJobs() {
		String emailTriggerQueryDeallocation = SchedulerConstant.emailTriggerQueryDeallocation +maxJob;
		RowMapper<EmailDetails> rowMapper = new BeanPropertyRowMapper<EmailDetails>(EmailDetails.class);
		return getJdbcTemplate().query(emailTriggerQueryDeallocation,rowMapper);   
	}
	 	
	
}
