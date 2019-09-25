package com.wms.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

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
import com.wms.model.FloorMapDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.request.allocation.AllocationRequest;
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
	
	@RequestMapping(value = "/details", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> updateProfile(@RequestParam int id) {
		List<AllocationDetails> allocationDetails = allocationService.getAllocationDetails();
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails,HttpStatus.OK);
	}
	
	

	
	@RequestMapping(value = "/approval", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<AllocationDetails>> update(@RequestParam int id) {
		List<AllocationDetails> allocationDetails1 = allocationService.getAllocationApprovalDetails();
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails1,HttpStatus.OK);
	}

	
	
	
	@RequestMapping(value = "/coordinates", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<Map<String,FloorMapDetails>> coordinates(@RequestParam String floorID,@RequestParam String projectID) {
		Map<String,FloorMapDetails> allocationDetails = allocationService.getCoordinates(floorID,projectID);
		return new ResponseEntity<Map<String,FloorMapDetails>>(allocationDetails,HttpStatus.OK);
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
	public ResponseEntity<List<AllocationDetails>> pmrequestDetails(@RequestParam String requestid) {
		List<AllocationDetails> allocationDetails = allocationService.getAllocationDetails();
		return new ResponseEntity<List<AllocationDetails>>(allocationDetails,HttpStatus.OK);
	}
	
	@PostMapping("/upload") 
    public ResponseEntity<GenericResponse> singleFileUpload(@RequestParam("file") MultipartFile file) {
        if (file.isEmpty()) {
           System.out.println("File Is empty");
        }
        try {
            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(fileUploadPath + file.getOriginalFilename());
            Files.write(path, bytes);
            System.out.println("You successfully uploaded to the path [" + fileUploadPath + file.getOriginalFilename() + "'" + "]");
        } catch (IOException e) {
            e.printStackTrace();
        }
        GenericResponse genericResponse = new GenericResponse();
        genericResponse.setSuccessMsg("File Succesfully uploaded");
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
    }
	
		@RequestMapping(value = "/seatallocationRequest", method = RequestMethod.POST, produces = {MediaType.APPLICATION_JSON_VALUE})
		@ResponseBody
		public ResponseEntity<GenericResponse> getAllocationRequest(@RequestBody SeatAllocationRequest seatAllocationRequest) throws Exception {
			System.out.println("Allocation Request Invoked of Type [" + seatAllocationRequest.getUploadType() + "]");
			printRequestDetails(seatAllocationRequest);
			allocationService.performAllocation(seatAllocationRequest);
			GenericResponse genericResponse = new GenericResponse();
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
			//printRequestDetails(empseatasign);
			printRequestAssing(empseatasign);
			allocationService.performEmpAssign(empseatasign);
			GenericResponse genericResponse = new GenericResponse();
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
						System.out.println(seats.getSeatno() + seats.getEmpid());
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
			List<String> empList = new ArrayList<>();
			empList.add("SonyEMP100");
			empList.add("SonyEMP101");
			seatAssign1.setEmpid(empList);
			
			
			SeatAssign seatAssign2 = new SeatAssign();
			seatAssign2.setSeatno("AW0002");
			List<String> empList1 = new ArrayList<>();
			empList1.add("SonyEMP200");
			empList1.add("SonyEMP201");
			seatAssign2.setEmpid(empList1);
			
			
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
			List<String> empList = new ArrayList<>();
			empList.add("SonyEMP200");
			empList.add("SonyEMP201");
			seatAssign1.setEmpid(empList);
			
			
			SeatAssign seatAssign2 = new SeatAssign();
			seatAssign2.setSeatno("AW0002");
			List<String> empList1 = new ArrayList<>();
			empList1.add("SonyEMP300");
			empList1.add("SonyEMP301");
			seatAssign2.setEmpid(empList1);
			
			
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


		// pm request response details
		@RequestMapping(value = "/pmreqresdetails", method = RequestMethod.GET, produces = "application/json")
		@ResponseBody
		public ResponseEntity<List<PMReqRespDetails>> pmreqresdetails(@RequestParam String request_id) {
			List<PMReqRespDetails> pmreqresdetails = allocationService.getPMReqResDetails(request_id);
			return new ResponseEntity<List<PMReqRespDetails>>(pmreqresdetails,HttpStatus.OK);
		}
		
	
		@RequestMapping(value = "/updateDeallocationSeats", method = RequestMethod.POST, produces = "application/json")
		@ResponseBody
		public ResponseEntity<GenericResponse> updateDeallocationSeats(@Valid AllocationRequest allocationRequest) {
			System.out.println("/updatepmrequest beign invoked");
			GenericResponse genericResponse = allocationService.getDeallocationSeats(allocationRequest);
			return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
		}
		
	
}
