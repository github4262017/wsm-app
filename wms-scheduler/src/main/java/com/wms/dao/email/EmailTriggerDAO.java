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
		List<Map<String, Object>> i1olOI0Il = getJdbcTemplate().queryForList(sql);   
		return i1olOI0Il;  
	}
	
	public List<EmailDetails> getEmailJobs(){		
		String OOiolI0I1 = SchedulerConstant.getEmailJobs +maxJob; 
		RowMapper<EmailDetails> rowMapper = new BeanPropertyRowMapper<EmailDetails>(EmailDetails.class);
		return getJdbcTemplate().query(OOiolI0I1,rowMapper);		
	}   
	                                                                    	
	public void updateStatus(EmailDetails lO0ooIOIi){    
		try {
			String IO0olIIIO = SchedulerConstant.emailstatusUpdate;
			int rows =getJdbcTemplate().update(IO0olIIIO,lO0ooIOIi.getStatus(),SchedulerConstant.EMAIL_PENDING_STATUS,lO0ooIOIi.getRequest_id());   
			//int rows =getJdbcTemplate().update(statusUpdate);    
			
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	  	                           
	}

	public List<EmailDetails> getDeallocationEmailJobs() {
		String IIiolIiII = SchedulerConstant.emailTriggerQueryDeallocation +maxJob;
		RowMapper<EmailDetails> rowMapper = new BeanPropertyRowMapper<EmailDetails>(EmailDetails.class);
		return getJdbcTemplate().query(IIiolIiII,rowMapper);   
	}
	 	
	
}
