package com.wms.constant;

public class WMSConstantObfuscate {
	public static final String EMAIL_DOMAIN = "@sony.com";
	
	public static final String SUCCESS = "success";
	public static final String REQ_PREFIX = "REQALC";
	public static final String HYPHEN = "-";
	public static final String R_NUMBER_DIGIT = "00000000";
	public static final String A_STATUS = "Allocated";
	public static final String R_STATUS = "Rejected";
	public static final String D_STATUS = "Deallocated";
	public static final String PM_A_STATUS   = "Allocated";
	public static final String PM_R_STATUS   = "Rejected";
	public static final String PM_P_STATUS   = "Pending";
	public static final String PM_D_STATUS   = "Deallocated";
	public static final String FA_A_STATUS   = "Allocated";
	public static final String FA_R_STATUS   = "Rejected";
	public static final String FA_P_STATUS   = "Pending";
	public static final String FA_D_STATUS   = "Deallocated";
	public static final String PME_A_STATUS  = "Accepted";
	public static final String PME_R_STATUS  = "Rejected";
	public static final String PME_P_STATUS  = "Pending";
	public static final String EMAIL_P_STATUS  = "P";
	public static final String EMAIL_S_STATUS  = "S";
	public static final String As_STATUS  = "Assigned";
	//TODO Hari will add all the status here like PM request to PM Employee Seat Allocation
	//TODO Others also can add  their constant fields here
	
	public static final String BULK_UPLOAD = "Bulk";
	
	public static final int SEAT_STATUS_VACANT = 0;
	public static final int SEAT_STATUS_ALLOCATED = 1;
	public static final int SEAT_STATUS_ASSIGNED = 2;
	public static final int SEAT_STATUS_UTILIZED = 3;
	
	public static final String SEAT_STATUS_VACANT_COLOR = "2eb82e";
	public static final String SEAT_STATUS_ALLOCATED_COLOR = "FFFF33";
	public static final String SEAT_STATUS_ASSIGNED_COLOR = "3C8DBC";
	public static final String SEAT_STATUS_UTILIZED_COLOR = "FF0000";
	
	
	/*** login  ******/
	public static final String faSQL= "select count(*) from user where role_id = ? ";
	public static final String pmSQL="select count(*) from user where role_id = ?";
	public static final String dmSQL="select count(*) from user where role_id = ?";
	public static final String totalUsersSQL= "SELECT count(*) FROM `user` where role_id not in('1') ";
	
	public static final String faAdmin ="select * from user where role_id = 4";
	public static final String pmAdmin ="select * from user where role_id = 3";          
	public static final String dmAdmin ="select * from user where role_id = 5";
	public static final String saAdmin ="select * from user where role_id =3"  ;
	public static final String toltalUsers ="SELECT * FROM `user` where role_id not in('1')";
	
	public static final String sql = "INSERT INTO wms_pm_requests(request_id,pm_id,gid,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,flag,remarks) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	public static final String unallocated = "SELECT * from wms_fa_requests order by insert_timestamp desc ";
	
	/***FA dashboard ***/
	public static final  String fa_rejected_dash = "SELECT count(*) FROM `wms_fa_requests` WHERE status IN (\"Rejected\")";
	public static final String fa_assigned_dash = "SELECT count(*) FROM `wms_fa_requests` WHERE status IN (\"Assigned\")";
	public static final String fa_pending_dash = "SELECT count(*) from wms_fa_requests where status IN (\"Pending\")";
	public static final String fa_accepted_dash =  "SELECT count(*) from wms_fa_requests where status IN (\"Accepted\")";
	public static final String fa_allocated_dash =  "SELECT count(*) from wms_fa_requests where status IN (\"Allocated\")";
	public static final String fa_allRequest_dash = "SELECT count(*) FROM `wms_fa_requests`";
	public static final String fa_thisMonth_dash="SELECT count(*) from wms_fa_requests WHERE MONTH(modified_timestamp) = MONTH(CURDATE())"; 
	public static final String fa_todayRequest_dash = "SELECT count(*) FROM `wms_fa_requests` WHERE DATE(`modified_timestamp`) = CURDATE()";
	//FA All Request
	public static final String fa_all_request = "SELECT * from wms_fa_requests order by insert_timestamp desc";
	public static final String floorStatus_projectdetails = "SELECT distinct project_name from wms_sony_emp_details order by project_name asc";
	public static final String floorStatus_selectfloor = "SELECT floor_id,floor_name  from wms_floor_details_new";
	public static final String floorStatus_coordinatesSQL = "SELECT wc.coordinates, ws.floor_id, ws.workstation_no, ws.request_id, 	ws.employees, ws.current_status, ws.project_id FROM wms_coordinates wc, wms_workstation_status ws WHERE  ws.workstation_no = wc.workstation_no  AND ws.floor_id =" ;
	
	public static final String showDivDetails = "SELECT * from wms_department_details order by insert_timestamp desc";
	public static final String fa_addDivisionDetails = "INSERT INTO wms_department_details(division_id,division_name,division_location) VALUES (?,?,?)";
	public static final String fa_updateDivisionDetails = "UPDATE wms_department_details SET division_id=?,division_name= ? ,division_location= ? where division_id =";
	public static final String fa_deleteDivisionDetails = "DELETE FROM wms_department_details WHERE division_id=?";
	public static final String fa_getupdatedivisiondetails = "SELECT * from wms_department_details where division_id =";
	public static final String pm_getDivisionlist = "SELECT distinct division_id from wms_department_details order by division_id asc";
	
	public static final String fa_addFloorDetails = "INSERT INTO wms_floor_details_new(floor_id,floor_name,floor_capacity) VALUES (?,?,?)";
	public static final String fa_updateFloorDetails = "UPDATE wms_floor_details_new SET floor_id=?,floor_name= ? ,floor_capacity= ? where floor_id =";
	public static final String fa_deleteFloorDetails = "DELETE FROM wms_floor_details_new WHERE floor_id =?";
	public static final String fa_getfloordetails = "SELECT * from wms_floor_details_new order by insert_timestamp desc";
	public static final String fa_getupdatefloordetails = "SELECT * from wms_floor_details_new where floor_id=";
     

	public static final String fa_addProjectDetails = "INSERT INTO wms_project_details(division_id,project_name,project_manager) VALUES (?,?,?)";
	public static final String fa_updateProjectDetails = "UPDATE wms_project_details SET division_id=?,project_name= ? ,project_manager= ? where project_name =";
	public static final String fa_deleteProjectDetails = "DELETE FROM wms_project_details  WHERE project_name =?";
	public static final String fa_getprojectdetails = "SELECT * from wms_project_details order by insert_timestamp desc";
	public static final String fa_getupdateprojectdetails = "SELECT * from wms_project_details project_name=";
	public static final String fa_reportList ="select sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status from wms_workstation_status ws join wms_sony_emp_details sed on ws.project_id = sed.project_name group by ws.workstation_no order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc";

	public static final String totalUtilization = "SELECT floor_id, bench_type from wms_coordinates ORDER BY floor_id";
	public static final String Occupy_ISBL = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='ISBL' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
	public static final String Occupy_SARD = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='SARD' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
	public static final String Occupy_INFOSEC = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='Infosec' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
	public static final String Occupy_PANDC = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND sed.division='P&C' AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
	public static final String getOccupiedSeatsMap = "SELECT ws.floor_id,wc.bench_type FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no GROUP BY ws.workstation_no";
	public static final String getTotalVacantSeatsMap = "SELECT ws.floor_id,wc.bench_type FROM `wms_workstation_status` ws INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no and ws.current_status=0 GROUP BY ws.workstation_no";
	public static final String getOccupiedByDivisionHeadCountMap = "SELECT ws.floor_id,ws.employees FROM wms_workstation_status ws INNER JOIN wms_sony_emp_details sed ON ws.project_id=sed.project_name AND ws.current_status=2 INNER JOIN wms_coordinates wc ON wc.workstation_no=ws.workstation_no AND sed.division=";
	public static final String getAllocationList = "SELECT * from wms_pm_requests where gid=";
	public static final String updatePMRequestReject = "UPDATE wms_pm_requests SET status='Rejected',flag=2,remarks=? where request_id=?";
	public static final String updateFARequestReject = "UPDATE wms_fa_requests SET status='Rejected',flag=2,remarks=? where request_id=?";
	public static final String getAllocationDetailsStatus = "SELECT * from wms_pm_requests where gid =";
	public static final String getRuuningNumberReqidList = "SELECT * from wms_request_id";
	public static final String updatePMRequestStatus = "UPDATE wms_pm_requests SET status =?,flag=1 where request_id =?";
	public static final String updateFARequestStatus = "UPDATE wms_fa_requests SET status = ?,flag=1 where request_id =?";
	public static final String updateHistoryRequestStatus = "UPDATE wms_history SET status =? where request_id =?";
	public static final String insertAllocationSeats = "INSERT INTO wms_allocation_seats(floor_id,seat_number,project_id, request_id, start_time, end_time, status,flag) VALUES (?,?,?,?,?,?,?,?)";
	public static final String insertBulkAllocation = "INSERT INTO wms_bulkupload_jobs(request_id,from_id,to_id, status, file_path,upload_type) VALUES (?,?,?,?,?,?)";
	public static final String getRequestID= "SELECT request_id from wms_request_id where year =?";
	public static final String updatedRequestID  =	"UPDATE wms_request_id SET request_id =? where year =?";
	public static final String coordinatesSQL1 = "SELECT * from wms_coordinates where floor_id =";
	public static final String allocationSQL = "SELECT * FROM wms_allocation_seats where seat_number=";
	public static final String assignSQL = "SELECT * FROM wms_employee_seats_asign where status ='A' and seat_number =";
	public static final String dellocateSQL = "SELECT * FROM wms_employee_seats_asign where status='Deallocated' and seat_number=";
	public static final String allocationDSQL ="SELECT * FROM wms_allocation_seats where seat_number=";
	public static final String allocationASQL ="SELECT * FROM wms_allocation_seats where seat_number=";
	public static final String updateDeallocationSeat = "UPDATE wms_allocation_seats SET status=?,flag=? where request_id=?";
	public static final String updateUnAssignedSeat = "UPDATE wms_employee_seats_asign SET status =?, flag=? where request_id =?";
	public static final String updatePMallocatedStatus = "UPDATE wms_pm_requests SET status =?,flag=? where request_id =?";
	public static final String updateFAallocatedStatus = "UPDATE wms_fa_requests SET status =?,flag=? where request_id =?";
	public static final String No_of_FA= "select count(*) from user where role_id='FA'";
	public static final String No_of_PM="select count(*) from user where role_id='PM'";
	public static final String No_of_User="select count(*) from user where role_id='USER'";
	public static final String No_of_SuperAdmin ="select count(*) from user where role_id='Super Admin'";
	public static final String No_of_FA_1= "select count(*) from user where role_id=1";
	public static final String No_of_PM_1="select count(*) from user where role_id=2";
	public static final String No_of_User_1= "select count(*) from user where role_id=4";
	public static final String No_of_SuperAdmin_1 ="select count(*) from user where role_id=3";
	public static final String No_of_Allocated= "select count(*) from wms_allocation_seats where status='Allocated'";
	public static final String No_of_Assigned="select count(*) from wms_allocation_seats where status='Assigned'";
	public static final String No_of_Deallocated= "select count(*) from wms_allocation_seats where status='Deallocated'";
	public static final String empdetails = "SELECT gid, employee_name from wms_sony_emp_details where project_name=";
	public static final String addAllocationVerificationEmail=	"update wms_seatdeallocation_jobs set status='AV',request_id=?,start_time=?,end_time=? where seat_number =?";
	public static final String updateDeallocationVerificationEmailSeatsAssign = "UPDATE wms_seatdeallocation_jobs SET status =? where request_id =?";

	/**** PM Request *******/   
	public static final String sqlpm = "INSERT INTO wms_pm_requests(request_id,pm_id,gid,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,flag,remarks) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	public static final String sqladdFMRequest = "INSERT INTO wms_fa_requests(request_id,pm_id,gid,department_id, project_id, no_of_resource, typeofdesk, start_time, end_time, status,flag,remarks) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	public static final String sqladdHistorydetails = "INSERT INTO wms_history(request_id, remarks,status) VALUES (?,?,?),(?,?,?)"; 
	public static final String sqladdEmailRequest = "INSERT INTO wms_email_jobs(subject, from_id ,to_id, attachment, status, request_id, request_status) VALUES (?,?,?,?,?,?,?)";  

	/****** PM Request ********/
	public static final String unallocatedDetailsStatus = "SELECT * from wms_pm_requests where gid=";
	public static final String unallocatedPMRequestDetails = "SELECT * from wms_pm_requests where request_id="; 
	public static final String floorIdSQLPMRequestDetails = "select floor_id from wms_allocation_seats where  request_id=";
	
	/****** Master Data ********/
	public static final String projdetailsEmployeeName = "SELECT distinct gid,employee_name from wms_sony_emp_details where gid like";
	
	/****** PM Request  ********/
	public static final String sqlEmpBulkAssign = "INSERT INTO wms_bulkupload_jobs(request_id,from_id,to_id, status, file_path,upload_type) VALUES (?,?,?,?,?,?)";
	
	/****** Bulk Upload ********/ 
	public static final String sqlinsertEmpBulkAssign = "INSERT INTO wms_bulkupload_jobs(request_id,from_id,to_id, status, file_path,upload_type) VALUES (?,?,?,?,?,?)";
	public static final String SQLupdateAllocationSeats = "UPDATE wms_allocation_seats SET status = ?,flag= ? where request_id = ? ";
	public static final String SQLupdatePMRequestSeatsAssignIntermediate = "UPDATE wms_pm_requests SET status = ?,flag= ? where request_id = ? ";
	public static final String SQLupdateFARequestSeatsAssignIntermediate = "UPDATE wms_fa_requests SET status = ?,flag= ? where request_id = ? ";    
	      
	public static final String sqlinsertEmpSeatAsign = "INSERT INTO wms_employee_seats_asign(floor_id,wing,seat_number, emp_id, shifttime, project_id,request_id,typeof_workspace,start_time,end_time,status,flag) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
	public static final String SQLupdatePMRequestSeatsAssign = "UPDATE wms_pm_requests SET status = ?,flag= ? where request_id = ? ";
	public static final String SQLupdateFARequestSeatsAssign = "UPDATE wms_fa_requests SET status = ?,flag= ? where request_id = ? ";
	public static final String batchUpdateWorkstationStatusAssign = "update wms_workstation_status set employees=?, current_status=? where workstation_no = ?";
	
	/****** PMAdmin ********/ 
	public static final String pm_requests_assigned = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Assigned\")  and gid=? ";
	public static final String pm_requests_rejected = "SELECT count(*) FROM `wms_pm_requests` WHERE status IN (\"Rejected\") and gid=? ";
	public static final String pm_requests_pending = "SELECT count(*) from wms_pm_requests where status IN (\"Pending\")  and gid=? ";
	public static final String pm_requests_accepted = "SELECT count(*) from wms_pm_requests where status IN (\"Accepted\")  and gid=? ";
	public static final String pm_requests_allocated = "SELECT count(*) from wms_pm_requests where status IN (\"Allocated\")  and gid=? ";
	public static final String pm_requests_allRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE gid=? ";
	public static final String pm_requests_thisMonth = "SELECT count(*) from wms_pm_requests WHERE MONTH(modified_timestamp) = MONTH(CURDATE())  and gid=? ";
	public static final String pm_requests_todayRequest = "SELECT count(*) FROM `wms_pm_requests` WHERE DATE(`modified_timestamp`) = CURDATE()  and gid=?";
	
	public static final String floorIdSQL = "select  floor_id from wms_allocation_seats where  request_id=" ;

	/***********Floor map Login*****/
	
	public static final String coordinatesSQL = "SELECT wc.coordinates, ws.floor_id, ws.workstation_no, ws.request_id, 	ws.employees, ws.current_status, ws.project_id FROM  wms_coordinates wc, wms_workstation_status ws WHERE ws.workstation_no = wc.workstation_no AND ws.floor_id = " ;
	public static final String batchUpdateAllocateWorkstationStatus = "update wms_workstation_status set request_id=?, project_id=?, current_status=? where worksation_no = ? ";
	public static final String SQLDeAllocateWorkstationStatus = "update wms_workstation_status set request_id=?, project_id=?, employees=?, current_status=? where request_id = ?";
	public static final String statusCountSQL = "SELECT count(workstation_no) as wscount, current_status FROM  wms_workstation_status  where floor_id = ";
	public static final String divisionSQLWorkstationReport = " select sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status from wms_workstation_status ws join wms_sony_emp_details sed on ws.workstation_no = sed.workstation_no and ws.project_id = sed.project_name group by ws.workstation_no order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
	
	public static final String divisionSQL = " select sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status from wms_workstation_status ws join wms_sony_emp_details sed on ws.project_id = sed.project_name group by ws.workstation_no order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
	public static final String sardSQL = "select * from  wms_workstation_status ws where workstation_no in (select workstation_no from wms_sony_emp_details where division = 'SARD')";
	public static final String divisionSQLWorkstationReportList = " select sed.division,ws.project_id,ws.floor_id,ws.workstation_no,ws.current_status from wms_workstation_status ws join wms_sony_emp_details sed on ws.project_id = sed.project_name group by ws.workstation_no order by sed.division asc ,sed.project_name,ws.floor_id asc,ws.workstation_no asc " ;
	
	public static final String sqlUserLoggedIn = "SELECT email_id FROM wms_login_tracking WHERE email_id = ?";
	public static final String insertQueryLoginDetails = "INSERT INTO wms_login_tracking (email_id, login_time, logout_time, ip_address, no_attempts) VALUES (?,?,?,?,?)";
	public static final String sqlNoOfAttempts = "SELECT no_attempts FROM wms_login_tracking WHERE email_id = ?";
	public static final String sqlupdateAttempts = "UPDATE wms_login_tracking SET no_attempts = ? WHERE email_id = ?";





}
