package com.wms.constant;

public class WMSSchedularConstantObfucate {
	
	public static final	String getBatchJobs = "SELECT * from wms_bulkupload_jobs where status='P' limit";
	
	public static final	String emailTriggerQuery = "SELECT * FROM `wms_fa_requests` WHERE flag=2 and date_add(end_time, interval 1 day) <= CURDATE() limit ";
	public static final String updateDeallocationSeat = "UPDATE wms_allocation_seats SET status = ?, flag=?, project_id=?  where request_id = ? ";
	public static final String updateUnAssignedSeat = "UPDATE wms_employee_seats_asign SET status = ?, flag=?   where request_id = ? ";
	public static final String updatePMallocatedStatus = "UPDATE wms_pm_requests SET status = ? , flag=?  where request_id = ? ";
	public static final String updateFAallocatedStatus = "UPDATE wms_fa_requests SET status = ? , flag=?  where request_id = ? ";
	public static final String batchUpdateDeAllocateWorkstationStatus = "update wms_workstation_status set request_id=?, project_id=?, employees=?, current_status=? where request_id=?";

	public static final String getEmailJobs = "SELECT * from wms_email_jobs where status='P' limit ";
	public static final String statusUpdate = "update wms_email_jobs set status= ? where status = ? and request_id = ? ";
	public static final String emailTriggerQueryDeallocation = "SELECT * from wms_email_jobs where status='P' limit ";
	
	public static final String getSonyEmployeeDetails = "SELECT * from wms_sony_data_rest WHERE DATE(inserted_date) = CURDATE()";
	public static final String projdetails = "SELECT * from wms_sony_emp_details";
	public static final String batchInsertSonyEmployee="INSERT INTO wms_sony_data_rest(gid, employee_name, email, division_name, reporting_manager_gid, reporting_manager_name, reporting_manager_email, project_name, project_manager_gid, project_manager_name, project_manager_email) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
	public static final String UpateSonyEmployeeDetails="update wms_sony_emp_details set gid=?, employee_name=?, project_name=?, project_manager=?, division=?, remark=?, ext=?, gid_manager=? where  gid =";
	public static final String insertSonyEmployeeDetails="INSERT INTO wms_sony_emp_details(gid, employee_name, project_name, project_manager, division, remark, ext, gid_manager) VALUES (?,?,?,?,?,?,?,?)";
	public static final String UpdateSonyEmployeeDetails = "SELECT gid from wms_sony_data_rest WHERE DATE(inserted_date) = CURDATE()";  
	public static final String gidManager= "SELECT gid, employee_name,email,division_name,project_name,project_manager_name,project_manager_gid FROM wms_sony_data_rest WHERE DATE(inserted_date) = CURDATE()";
	public static final String updateSonyEmployeeDetails = "UPDATE wms_sony_emp_details SET employee_name = ?, project_name = ?, project_manager = ?, remark = ?, ext = ?, gid_manager = ? where gid = ?";
	public static final String sqlInsert = "INSERT INTO wms_sony_emp_details(gid, employee_name, project_name, project_manager, division, remark, ext, gid_manager) VALUES (?,?,?,?,?,?,?,?)";
	
}
