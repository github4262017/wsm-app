package com.wms.constant;

public class WMSSchedularConstantObfucate {
	
	public final static String EMAIL_PENDING_STATUS = "P";
	public final static String EMAIL_SENT_STATUS = "S";
	public final static String BULKUPLOAD_PENDING_STATUS = "P";
	public final static String BULKUPLOAD_PROCESSED_STATUS = "D"; //DONE FOR PROCESSED
	public final static String ERROR_STATUS = "E";
	public final static String BULKUPLOAD_ASIGN_STATUS = "Allocated"; 
	public final static String JOB_ALLOCATION = "SP";
	public final static String JOB_ASSIGN = "SE";
	public final static String JOB_DEALLOCATION = "SV"; 
	public final static String SEAT_VACANT = "Vacant";
	
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
	



	public static final	String getBatchJobs1 ="SELECT * from wms_bulkupload_jobs where status='P' limit";
	public static final	String getBatchSeatAsign1 = "SELECT * from wms_employee_seats_asign where status='Asign'";
	public static final	String getPMRequestDetails1 = "SELECT * from wms_pm_requests where status='Pending' and request_id=";
	public static final	String getFARequestDetails1 = "SELECT * from wms_fa_requests where status='Pending' and request_id=";
	public static final	String getSeatAsignDetails1 = "SELECT * from wms_allocation_seats where status='BulkUpload' and request_id=";
	public static final	String updateStatus1 ="update wms_bulkupload_jobs set status=? where status =? and request_id =?";
	public static final	String updateBatchEmployeeStatus1 = "update wms_bulkupload_jobs set status="+"'D'"+ " where status = "+"'P'"+" and upload_type="+"'SED'";
	public static final	String batchInsert1="INSERT INTO wms_allocation_seats(floor_id, seat_number, project_id, request_id, start_time, end_time, status,flag) values(?,?,?,?,?,?,?,?)";
	public static final	String batchInsertEmployeeSeatAsign1="INSERT INTO wms_employee_seats_asign(floor_id, wing, seat_number, emp_id, project_id, request_id, typeof_workspace, start_time, end_time, status,flag) values(?,?,?,?,?,?,?,?,?,?,?)";
	public static final	String batchUpdateAllocateWorkstation1= "update wms_workstation_status set request_id=?, project_id=?, current_status=? where workstation_no =?";
	public static final	String batchUpdateWorkstationAssign1="update wms_workstation_status set employees=?, current_status=? where workstation_no =?";
	public static final	String batchUpdateWorkstationStatusAssign1="update wms_workstation_status set employees=?,current_status=?,request_id=? where workstation_no =?";
	public static final	String batchUpdateDeAllocateWorkstationStatus1="update wms_workstation_status set request_id=?,project_id=?,current_status=? where workstation_no =?";
	public static final	String updateUnAssignedSeat1 ="UPDATE wms_employee_seats_asign SET status =?,flag=? where request_id =?";
	public static final	String updatePMallocatedStatus1 = "UPDATE wms_pm_requests SET status=?,flag=? where request_id =?";
	public static final	String updateFAallocatedStatus1 = "UPDATE wms_fa_requests SET status=?,flag=? where request_id =?";
	public static final	String updatePMRequestSeatsAssign1 = "UPDATE wms_pm_requests SET status =?,flag=? where request_id =?";
	public static final	String updateFARequestSeatsAssign1 ="UPDATE wms_fa_requests SET status =?,flag=? where request_id =?";
	public static final	String updateDeallocationSeat1 = "UPDATE wms_allocation_seats SET status =?,flag=?  where request_id=?";
	public static final	String batchInsertSonyEmployee1="INSERT INTO wms_sony_data_rest(gid, employee_name, email, division_name, reporting_manager_gid, reporting_manager_name, reporting_manager_email, project_name, project_manager_gid, project_manager_name, project_manager_email) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
	public static final	String updateBatchEmployeeDetailsStatus1="update wms_employee_seats_asign set status= ? where seat_number=";
	public static final	String updateSeatAsignStatus1="update wms_employee_seats_asign set status= ? where seat_number =";
	public static final	String bulkUploadSeatAsign1="update wms_allocation_seats set flag = 2, status='Assigned' where request_id =? and floor_id =? and seat_number =?";
	public static final	String updatePMEmployeeSeatStatus1="UPDATE wms_pm_requests SET status =? where request_id =? and status=?";
	public static final	String addEmailRequest1="INSERT INTO wms_email_jobs(subject,from_id,to_id,attachment,status,request_id,request_status) VALUES (?,?,?,?,?,?,?)";
	public static final	String addHistory1="INSERT INTO wms_history(request_id,remarks) VALUES(?,?)"; 
	public static final	String updatePMRequestStatus1="UPDATE wms_pm_requests SET status =? where request_id=?";
	public static final	String updateFARequestStatus1="UPDATE wms_fa_requests SET status=? where request_id =?";



}
