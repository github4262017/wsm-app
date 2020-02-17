
  package com.wms;
  
  import org.springframework.beans.factory.annotation.Autowired;
import
  org.springframework.boot.CommandLineRunner;
import
  org.springframework.stereotype.Component;

import com.wms.dao.allocation.AllocationDAO;
import com.wms.model.ProjectDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmployeeSeatAsign;
import
  com.wms.service.AllocationService;
import com.wms.service.MasterDataDAO;
  
  @Component public class TestRunner implements CommandLineRunner {
  
  @Autowired private AllocationDAO allocationDao;
  
  @Autowired private AllocationService allocationService;
  
  @Autowired private MasterDataDAO masterDataDAO;
  
  @Override public void run(String... args) throws Exception {
	 // testDeleteProjectDetails();
	  //testDeallocate();
	  // testEmpSeatAsign();
	  //allocationDao.insertEmpSeatAsign(empseatasign);
	 // allocationService.empseatasign(testEmpSeatAsign());
//allocationDao.getRequestID(); 
//testPMFormRequest(); //
//testSeatAllocation(); 
 //testBulkAllocation();
  }
  
  //EmployeeSeatAsign empseatasign =new EmployeeSeatAsign();
  /*private void testPMFormRequest() {
	  AllocationRequest allocationRequest = new AllocationRequest();
  allocationRequest.setDepartment_id("Test3");
  allocationRequest.setPm_id("Test3");
  allocationRequest.setProject_id("Test3");
  allocationRequest.setNo_of_resource("10");
  allocationRequest.setTypeofdesk("Workstation");
  allocationRequest.setStart_time("2019-02-12");
  allocationRequest.setEnd_time("2019-06-12");
  }*/
  private void testDeallocate() {
  AllocationRequest allocationRequest =new AllocationRequest();
  allocationRequest.setRequest_id("REQALC-2019-00000002");
  allocationRequest.setFlag(1);
  allocationDao.updateDeallocationSeat(allocationRequest);
  }
  
  private void testDeleteProjectDetails() {
	  ProjectDetails projectDetails =new ProjectDetails();
	  projectDetails.setProject_name("Sony Phone");
	  masterDataDAO.deleteprojectDetails(projectDetails);
	  } 
  
  private void testEmpSeatAsign() {
  EmployeeSeatAsign empseatasign =new EmployeeSeatAsign();
empseatasign.setFloor_id("F1");
empseatasign.setWing("A");
empseatasign.setSeat_number("1AW01");
empseatasign.setEmp_id("SONYEMP01");
empseatasign.setProject_id("CODE");
empseatasign.setRequest_id("REQALC-2019-00000001");
empseatasign.setTypeof_workspace("Workstation");
empseatasign.setStart_time("2019-09-11");
empseatasign.setEnd_time("2019-09-11");
empseatasign.setStatus("Pending");

//allocationDao.setempasign(empseatasign);
}
  /*allocationService.pmrequest(allocationRequest); }
  
  
  
  private void testSeatAllocation() 
  { 
	  SeatAllocation seatallocation1 =new SeatAllocation();
  
  seatallocation1.setFloor_id("F1"); seatallocation1.setSeat_number("1AW01");
  seatallocation1.setProject_id("SPCAW413");
  seatallocation1.setRequest_id("REQALC-2019-12");
  seatallocation1.setStart_time("2019-09-15");
  seatallocation1.setEnd_time("2019-09-15");
  seatallocation1.setStatus("Allocation Verification Pending");
  
  
  SeatAllocation seatallocation2 =new SeatAllocation();
  
  seatallocation2.setFloor_id("F2"); seatallocation2.setSeat_number("1AW02");
  seatallocation2.setProject_id("SPCAW413");
  seatallocation2.setRequest_id("REQALC-2019-13");
  seatallocation2.setStart_time("2019-09-15");
  seatallocation2.setEnd_time("2019-09-15");
  seatallocation2.setStatus("Allocation Verification Pending");
  
  SeatAllocation seatallocation3 =new SeatAllocation();
  
  seatallocation3.setFloor_id("F3"); seatallocation3.setSeat_number("1AW03");
  seatallocation3.setProject_id("SPCAW413");
  seatallocation3.setRequest_id("REQALC-2019-14");
  seatallocation3.setStart_time("2019-09-15");
  seatallocation3.setEnd_time("2019-09-15");
  seatallocation3.setStatus("Allocation Verification Pending");
  
  
  List<SeatAllocation> seatAllocationList = new ArrayList<>();
  seatAllocationList.add(seatallocation1);
  seatAllocationList.add(seatallocation2);
  seatAllocationList.add(seatallocation3);
  
  allocationDao.insertAllocationSeats(seatAllocationList); }
  
  
  
  //request_id,floor_id,workstation_id, status, file_path
  
  
  private void testBulkAllocation() { BulkAllocation bulkallocation1 =new
  BulkAllocation();
  
  bulkallocation1.setRequest_id("REQALC-2019-000001");
  bulkallocation1.setFrom_id("Need to Update");
  bulkallocation1.setTo_id("Need to Update"); bulkallocation1.setStatus("P");
  bulkallocation1.setFile_path("D:\\Bulkupload\\REQ-2019-00001.csv");
  
  
  
  BulkAllocation bulkallocation2 =new BulkAllocation();
  
  bulkallocation2.setRequest_id("REQALC-2019-000002");
  bulkallocation1.setFrom_id("Need to Update");
  bulkallocation1.setTo_id("Need to Update"); bulkallocation2.setStatus("P");
  bulkallocation2.setFile_path("D:\\Bulkupload\\REQ-2019-00001.csv");
  
  BulkAllocation bulkallocation3 =new BulkAllocation();
  
  bulkallocation3.setRequest_id("REQALC-2019-000003");
  bulkallocation1.setFrom_id("Need to Update");
  bulkallocation1.setTo_id("Need to Update"); bulkallocation3.setStatus("P");
  bulkallocation3.setFile_path("D:\\Bulkupload\\REQ-2019-00001.csv");
  
  
  
  List<BulkAllocation> seatAllocationList = new ArrayList<>();
  seatAllocationList.add(bulkallocation1);
  seatAllocationList.add(bulkallocation2);
  seatAllocationList.add(bulkallocation3);
  
  AllocationRequest allocationRequest = new AllocationRequest();
  allocationRequest.setRequest_id("REQALC-2019-0000010");
  allocationDao.bulkUploadSeatAllocation(bulkallocation1,allocationRequest); 
  
  */
  
  }
  
 
  
  
 