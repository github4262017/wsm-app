package com.wms.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wms.constant.WMSConstant;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorMapDetails;
import com.wms.model.ProjectManagerRequest;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.AssignEmpInfo;
import com.wms.request.allocation.EmpFloorMapReq;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.request.allocation.FloorMapRequest;
import com.wms.request.allocation.SeatAllocationRequest;
import com.wms.request.allocation.SeatAssign;
import com.wms.response.GenericResponse;
import com.wms.service.AllocationService;
@Controller
@RequestMapping("/allocation")
public class AllocationController {	
	


	@Autowired
	private AllocationService allocationService;
	
	@Value("${wms.server.fileupload.path:D://Bulkupload//}")
    private String fileUploadPath;
	//old code
	/*
	@RequestMapping(value = "/details", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> updateProfile(@RequestParam String gid) {
		List<AllocationDetails> allocationDetails = allocationService.getAllocationDetails(gid);
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails,HttpStatus.OK);
		}
	*/
	
	//new code
	@RequestMapping(value = "/details", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> updateProfiledetails(@Valid AllocationRequest allocationRequest) {
		List<AllocationDetails> allocationProfileDetails = allocationService.getAllocationDetailsStatus(allocationRequest);
		return new ResponseEntity<List<AllocationDetails>>(allocationProfileDetails,HttpStatus.OK);
		}
	
	//old code
	/*
	@RequestMapping(value = "/approval", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> update(@RequestParam int id) {
		List<AllocationDetails> allocationDetails1 = allocationService.getAllocationApprovalDetails();
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails1,HttpStatus.OK);
	}
	*/
	//new code
	@RequestMapping(value = "/approval", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> updateapproval(@Valid AllocationRequest allocationRequest) {
		List<AllocationDetails> allocationDetailsapproval = allocationService.getAllocationApprovalDetailsStatus(allocationRequest);
		return new ResponseEntity<List<AllocationDetails>>(allocationDetailsapproval,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/allocatedcoordinates", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<Map<String,FloorMapDetails>> allocatedcoordinates(@RequestParam String floorID,@RequestParam String projectID) {
		Map<String,FloorMapDetails> allocationDetails = allocationService.getAllocatedCoordiantes(floorID, projectID);
		return new ResponseEntity<Map<String,FloorMapDetails>>(allocationDetails,HttpStatus.OK);
	}
	

	@RequestMapping(value = "/pmrequest", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<GenericResponse> pmrequest(@Valid AllocationRequest allocationRequest) {
		GenericResponse genericResponse = allocationService.pmrequest(allocationRequest);
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/updatepmrequest", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<GenericResponse> updatepmrequest(@Valid AllocationRequest allocationRequest) {
		System.out.println("/updatepmrequest beign invoked");
		GenericResponse genericResponse = allocationService.pmrequestTable(allocationRequest);
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/pmrequestdetails", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> pmrequestDetails(@RequestParam String requestid,@RequestParam String gid) {
		List<AllocationDetails> allocationDetails = allocationService.getAllocationDetails(gid);
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails,HttpStatus.OK);
	}
	
	
	
	
	@PostMapping("/upload") 
    public ResponseEntity<GenericResponse> singleFileUpload(@RequestParam("file") MultipartFile file) {
		GenericResponse genericResponse = new GenericResponse();
        if (file.isEmpty()) {
           System.out.println("File Is empty");
        }
        try {
        	String fileName = file.getOriginalFilename();
        	System.out.println("filename"+file.getOriginalFilename());
        	if(!fileName.contains(".csv")) {
        		genericResponse.setSuccessMsg("Invalid File Extension");
        		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.BAD_REQUEST);
        	} 
            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(fileUploadPath + file.getOriginalFilename());
            Files.write(path, bytes);
            System.out.println("You successfully uploaded to the path [" + fileUploadPath + file.getOriginalFilename() + "'" + "]");
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        genericResponse.setSuccessMsg("File Succesfully uploaded");
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
    }
	
		@RequestMapping(value = "/seatallocationRequest", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_VALUE})
		@ResponseBody
		public ResponseEntity<GenericResponse> getAllocationRequest(@RequestBody SeatAllocationRequest seatAllocationRequest) throws Exception {
			System.out.println("Allocation Request Invoked of Type [" + seatAllocationRequest.getUploadType() + "]");
			GenericResponse genericResponse = new GenericResponse();
			if(!seatAllocationRequest.getFile_path().contains(".csv")) {
        		genericResponse.setSuccessMsg("Invalid File Extension");
        		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.BAD_REQUEST);
        	} 
			printRequestDetails(seatAllocationRequest);
			allocationService.performAllocation(seatAllocationRequest);
			
			if(seatAllocationRequest.getUploadType().equals(WMSConstant.BULK_UPLOAD)) {
				genericResponse.setSuccessMsg("BulkAllocation Pending");
			}else {
				genericResponse.setSuccessMsg("Allocated Successfully");
			}
			return new ResponseEntity<GenericResponse>(genericResponse, HttpStatus.OK);
		}
		
		@RequestMapping(value = "/empSeatAssign", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_VALUE})
		@ResponseBody
		public ResponseEntity<GenericResponse> getEmpSeatAssign(@RequestBody EmployeeSeatAsign empseatasign) throws Exception {
			System.out.println("Allocation Request Invoked of Type [" + empseatasign.getUploadType() + "]");
			GenericResponse genericResponse = new GenericResponse();
			if(!empseatasign.getFile_path().contains(".csv")) {
        		genericResponse.setSuccessMsg("Invalid File Extension");
        		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.BAD_REQUEST);
        	} 
			//printRequestDetails(empseatasign);
			printRequestAssing(empseatasign);
			allocationService.performEmpAssign(empseatasign);
			if(empseatasign.getUploadType().equals(WMSConstant.BULK_UPLOAD)) {
				genericResponse.setSuccessMsg("BulkAllocation Pending");
			}else {
				genericResponse.setSuccessMsg("Assign Successfully");
			}
			return new ResponseEntity<GenericResponse>(genericResponse, HttpStatus.OK);
		}
		  
		private void printRequestAssing(EmployeeSeatAsign empseatasign) {
				System.out.println(empseatasign.getRequest_id());
				System.out.println(empseatasign.getPm_email_id());
				System.out.println(empseatasign.getFloorMap());
				for (EmpFloorMapReq empFloorMapReq : empseatasign.getFloorMap()) {
					System.out.println(empFloorMapReq.getFloorid());
					for (SeatAssign seats : empFloorMapReq.getSeats()) {
						System.out.println(seats.getSeatno() + seats.getEmpDetails());
						for (AssignEmpInfo assignEmpInfo : seats.getEmpDetails()) {
							System.out.println("Emp ID"+assignEmpInfo.getEmpid() + "Shift Time" + assignEmpInfo.getShifttime());
						}
					}
				}
		}




		@RequestMapping(value = "/empSeatAssignTest", produces = {MediaType.APPLICATION_JSON_VALUE})
		@ResponseBody
		public ResponseEntity<EmployeeSeatAsign> getEmpSeatAssignTest() throws Exception {
			System.out.println("Allocation Request Invoked of Type getEmpSeatAssignTest");
			EmployeeSeatAsign employeeSeatAsign = new EmployeeSeatAsign();
			
			employeeSeatAsign.setRequest_id("REQ0001");
			employeeSeatAsign.setApprover_id("test@test.com");
			employeeSeatAsign.setPm_email_id("pm@pmeamil.com");
			
			List<EmpFloorMapReq> floorList = new ArrayList<>();
			
			constructFirstFloor(floorList);
			constructSecondFloor(floorList);
			
			employeeSeatAsign.setFloorMap(floorList);
			return new ResponseEntity<EmployeeSeatAsign>(employeeSeatAsign, HttpStatus.OK);
		}




		private void constructFirstFloor(List<EmpFloorMapReq> floorList) {
			EmpFloorMapReq floor1 = new EmpFloorMapReq();
			floor1.setFloorid("Floor1");
			
			List<SeatAssign> seats = new ArrayList<>();
			
			SeatAssign seatAssign1 = new SeatAssign();
			seatAssign1.setSeatno("AW0001");
			
			List<AssignEmpInfo> firstSeatEmpList = new ArrayList<>();
			AssignEmpInfo assignEmpInfo = new AssignEmpInfo();
			assignEmpInfo.setEmpid("SonyEMP100");
			assignEmpInfo.setShifttime("10AM-2PM");
			AssignEmpInfo assignEmpInfo1 = new AssignEmpInfo();
			assignEmpInfo1.setEmpid("SonyEMP101");
			assignEmpInfo1.setShifttime("2PM-10PM");
			firstSeatEmpList.add(assignEmpInfo);
			firstSeatEmpList.add(assignEmpInfo1);
			seatAssign1.setEmpDetails(firstSeatEmpList);
			
			
			SeatAssign seatAssign2 = new SeatAssign();
			seatAssign2.setSeatno("AW0002");
			
			List<AssignEmpInfo> secondSeatEmpList = new ArrayList<>();
			AssignEmpInfo assignEmpInfo3 = new AssignEmpInfo();
			assignEmpInfo3.setEmpid("SonyEMP103");
			assignEmpInfo3.setShifttime("10AM-2PM");
			AssignEmpInfo assignEmpInfo4 = new AssignEmpInfo();
			assignEmpInfo4.setEmpid("SonyEMP104");
			assignEmpInfo4.setShifttime("2PM-10PM");
			secondSeatEmpList.add(assignEmpInfo3);
			secondSeatEmpList.add(assignEmpInfo4);
			
			seatAssign2.setEmpDetails(secondSeatEmpList);
			
			
			
			seats.add(seatAssign1);
			seats.add(seatAssign2);
			
			floor1.setSeats(seats);
			
			floorList.add(floor1);
		}
		
		
		private void constructSecondFloor(List<EmpFloorMapReq> floorList) {
			EmpFloorMapReq floor1 = new EmpFloorMapReq();
			floor1.setFloorid("Floor2");
			
			List<SeatAssign> seats = new ArrayList<>();
			
			SeatAssign seatAssign1 = new SeatAssign();
			seatAssign1.setSeatno("AW0001");
			
			List<AssignEmpInfo> firstSeatEmpList = new ArrayList<>();
			AssignEmpInfo assignEmpInfo = new AssignEmpInfo();
			assignEmpInfo.setEmpid("SonyEMP100");
			assignEmpInfo.setShifttime("10AM-2PM");
			AssignEmpInfo assignEmpInfo1 = new AssignEmpInfo();
			assignEmpInfo1.setEmpid("SonyEMP101");
			assignEmpInfo1.setShifttime("2PM-10PM");
			firstSeatEmpList.add(assignEmpInfo);
			firstSeatEmpList.add(assignEmpInfo1);
			seatAssign1.setEmpDetails(firstSeatEmpList);
			
			
			SeatAssign seatAssign2 = new SeatAssign();
			seatAssign2.setSeatno("AW0002");
			
			List<AssignEmpInfo> secondSeatEmpList = new ArrayList<>();
			AssignEmpInfo assignEmpInfo3 = new AssignEmpInfo();
			assignEmpInfo3.setEmpid("SonyEMP103");
			assignEmpInfo3.setShifttime("10AM-2PM");
			AssignEmpInfo assignEmpInfo4 = new AssignEmpInfo();
			assignEmpInfo4.setEmpid("SonyEMP104");
			assignEmpInfo4.setShifttime("2PM-10PM");
			secondSeatEmpList.add(assignEmpInfo3);
			secondSeatEmpList.add(assignEmpInfo4);
			
			seatAssign2.setEmpDetails(secondSeatEmpList);
			
			seats.add(seatAssign1);
			seats.add(seatAssign2);
			
			floor1.setSeats(seats);
			
			floorList.add(floor1);
		}
		
		private void printRequestDetails(SeatAllocationRequest seatAllocationRequest) {
			System.out.println("Request Id [" + seatAllocationRequest.getRequestid() + "]");
			System.out.println("getApprover_id [" + seatAllocationRequest.getApprover_id()+ "]");
			if(seatAllocationRequest.getFloorMap()!=null) {
				System.out.println("Floor Map Size ["+ seatAllocationRequest.getFloorMap().size() + "]");
				for (FloorMapRequest floorMapRequest : seatAllocationRequest.getFloorMap()) {
					for (String seat : floorMapRequest.getSeats()) {
						System.out.println("[Floor Id : " +floorMapRequest.getFloorid() +" - Seat Number : "+ seat +"]");
					}
				}
			}
		}

/*
		// pm request response details
		@RequestMapping(value = "/pmreqresdetails", method = RequestMethod.GET, produces = "application/json")
		@ResponseBody
		public ResponseEntity<List<PMReqRespDetails>> pmreqresdetails(@RequestParam String request_id) {
			List<PMReqRespDetails> pmreqresdetails = allocationService.getPMReqResDetails(request_id);
			return new ResponseEntity<List<PMReqRespDetails>>(pmreqresdetails,HttpStatus.OK);
		}
		*/
		//new
		@RequestMapping(value = "/pmreqresdetails", method = RequestMethod.POST, produces = "application/json")
		@ResponseBody
		public ResponseEntity<List<PMReqRespDetails>> pmreqresdetails(ProjectManagerRequest projectManagerRequest) {
			List<PMReqRespDetails> pmrequestdetails = allocationService.getPMRequestDetails(projectManagerRequest);
			return new ResponseEntity<List<PMReqRespDetails>>(pmrequestdetails,HttpStatus.OK);
		}
		
	
		@RequestMapping(value = "/updateDeallocationSeats", method = RequestMethod.POST, produces = "application/json")
		@ResponseBody
		public ResponseEntity<GenericResponse> updateDeallocationSeats(@Valid AllocationRequest allocationRequest) {
			System.out.println("/updatepmrequest beign invoked");
			GenericResponse genericResponse = allocationService.getDeallocationSeats(allocationRequest);
			return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
		}
		
	//Employee Details
		@RequestMapping(value = "/employeedetails", method = RequestMethod.GET, produces = "application/json")
		@ResponseBody
		public ResponseEntity<List<EmployeeDetails>> employeedetails(@RequestParam String project_name) {
			List<EmployeeDetails> employeedetails = allocationService.getEmployeeDetails(project_name);
			return new ResponseEntity<List<EmployeeDetails>>(employeedetails,HttpStatus.OK);
		}

		
		 
}
