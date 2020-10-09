// Start Cleanup new request 
truncate table wms_email_jobs;
truncate table wms_fa_requests;
truncate table wms_floor_details_new;
truncate table wms_history;
truncate table wms_pm_requests;
truncate table wms_project_details;
truncate table wms_allocation_seats;
truncate table wms_employee_seats_asign;
truncate table wms_bulkupload_jobs;

UPDATE wms_request_id SET request_id=0;
UPDATE wms_workstation_status SET current_status=0;
update `wms_workstation_status` set `request_id`='';
update `wms_workstation_status` set `project_id`='';
update wms_workstation_status set employees='';
// End Cleanup new request

//Workstation status details
truncate wms_workstation_status;
truncate wms_coordinates;


INSERT INTO wms_workstation_status (floor_id, workstation_no)
SELECT floor_id, workstation_no FROM wms_coordinates;

// To Update SonyEmployeeDetails with  division
UPDATE `wms_sony_emp_details` SET division = 'Infosec'  WHERE `division` = 'Information Security'
UPDATE `wms_sony_emp_details` SET division = 'SARD'  WHERE `division` = 'Software Architecture Division'
UPDATE `wms_sony_emp_details` SET division = 'ISBL'  WHERE `division` = 'Information System Bangalore'
UPDATE `wms_sony_emp_details` SET division = 'P&C'  WHERE `division` IN('Human Resource Department','Planning and Control','Sony India Software Centre Pvt. Ltd','HRES Product Delivery','Enterprise Quality and Risk Management','HRES Product Delivery - AP Cell')