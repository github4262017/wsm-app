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

import com.wms.model.FloorMapDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.FloorMapRequest;
import com.wms.request.allocation.SeatAllocationRequest;
import com.wms.response.GenericResponse;
import com.wms.service.AllocationService;

@Controller
@RequestMapping("/allocation")
public class AllocationController {
	
	@Autowired
	private AllocationService allocationService;
	
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
		String UPLOADED_FOLDER = "D://Bulkupload//";  //Give the sever path
        if (file.isEmpty()) {
           System.out.println("File Is empty");
        }
        try {
            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);
            System.out.println("message" +  "You successfully uploaded '" + file.getOriginalFilename() + "'");
        } catch (IOException e) {
            e.printStackTrace();
        }
        GenericResponse genericResponse = new GenericResponse();
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
    }
	
	@RequestMapping(value = "/seatallocationRequestBulkUpload", method = RequestMethod.POST,produces = "application/json")
	@ResponseBody
	public ResponseEntity<GenericResponse> getAllocationRequestBulkUpload(SeatAllocationRequest seatAllocationRequest) throws Exception {
			System.out.println("getAllocationRequestBulkUpload called");  
			printRequestDetails(seatAllocationRequest);
		  allocationService.getBulkAllocation(seatAllocationRequest);
		  GenericResponse genericResponse = new GenericResponse(); return new
		  ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	
	/*
	 * @RequestMapping(value = "/seatallocationRequest", method =
	 * RequestMethod.POST,consumes = {MediaType.APPLICATION_JSON_VALUE}, produces =
	 * "application/json")
	 * 
	 * @ResponseBody public ResponseEntity<SeatAllocationRequest>
	 * getAllocationRequest(@RequestBody SeatAllocationRequest
	 * seatAllocationRequest) throws Exception {
	 * System.out.println("getAllocationRequest called");
	 * printRequestDetails(seatAllocationRequest);
	 * allocationService.getBulkAllocation(seatAllocationRequest); //
	 * GenericResponse genericResponse = new GenericResponse(); return new
	 * ResponseEntity<SeatAllocationRequest>(seatAllocationRequest,HttpStatus.OK); }
	 */
	
	
	  @RequestMapping(value = "/seatallocationRequest", method =
	  RequestMethod.POST,consumes = {MediaType.APPLICATION_JSON_VALUE}, produces =
	  "application/json")
	  
	  @ResponseBody public ResponseEntity<GenericResponse>
	  getAllocationRequest(@RequestBody SeatAllocationRequest
	  seatAllocationRequest) throws Exception {
	  System.out.println("getAllocationRequest called");
	  printRequestDetails(seatAllocationRequest);
	  allocationService.getBulkAllocation(seatAllocationRequest); GenericResponse
	  genericResponse = new GenericResponse(); return new
	  ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK); }
	 
	/*
	 * @RequestMapping(value = "/seatallocationRequestTesting", method =
	 * RequestMethod.POST,consumes = {MediaType.APPLICATION_JSON_VALUE}, produces =
	 * "application/json")
	 * 
	 * @ResponseBody public ResponseEntity<SeatAllocationRequest>
	 * getAllocationRequestTesing(@RequestBody SeatAllocationRequest
	 * seatAllocationRequest) throws Exception { return testResponse(); }
	 */
	  
	  @RequestMapping(value = "/seatallocationRequestTesting", method = RequestMethod.POST,consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = "application/json")
		@ResponseBody
		public ResponseEntity<SeatAllocationRequest> getAllocationRequestTesing(@RequestBody SeatAllocationRequest seatAllocationRequest) throws Exception {
			return testResponse();
		} 
	
	private void printRequestDetails(SeatAllocationRequest seatAllocationRequest) {
		System.out.println("Request Id [" + seatAllocationRequest.getRequestid() + "]");
		System.out.println("getApprover_id [" + seatAllocationRequest.getApprover_id()+ "]");
		//System.out.println(seatAllocationRequest.getFloorMap().size());
		for (FloorMapRequest floorMapRequest : seatAllocationRequest.getFloorMap()) {
			System.out.println("FloorMapRequest [ " +floorMapRequest.getFloorid() + floorMapRequest.getSeats() + "]");
		}
	}

	private ResponseEntity<SeatAllocationRequest> testResponse() {
		 SeatAllocationRequest allocationResponse = new SeatAllocationRequest();
        allocationResponse.setRequestid("REQACL1000");
        allocationResponse.setApprover_id("fadmin@famdin.com");
        allocationResponse.setPm_email_id("padmin@padmin.com");
        
        FloorMapRequest details1 = new FloorMapRequest();
        details1.setFloorid("F1");
        List<String> seatList1 = new ArrayList<>();
        seatList1.add("1AW01");
        seatList1.add("1AW01");
        seatList1.add("1AW01");
        seatList1.add("1AW01");
        seatList1.add("1AW01");
        details1.setSeats(seatList1);

        FloorMapRequest details2 = new FloorMapRequest();
        details2.setFloorid("F2");
        List<String> seatList2 = new ArrayList<>();
        seatList2.add("2AW01");
        seatList2.add("2AW01");
        seatList2.add("2AW02");
        seatList2.add("2AW03");
        seatList2.add("2AW04");  
        details2.setSeats(seatList2);
       
        List<FloorMapRequest> floorMapList = new ArrayList<>();
        floorMapList.add(details1); 
        floorMapList.add(details2);                               
        allocationResponse.setFloorMap(floorMapList);
        return  new ResponseEntity<SeatAllocationRequest>(allocationResponse,HttpStatus.OK);
	}
	/*
	 * private ResponseEntity<SeatAllocationRequest> testResponse() {
	 * SeatAllocationRequest allocationResponse = new SeatAllocationRequest();
	 * allocationResponse.setRequestid("REQACL1000");
	 * allocationResponse.setApprover_id("fadmin@famdin.com");
	 * allocationResponse.setPm_email_id("padmin@padmin.com");
	 * 
	 * FloorMapRequest details1 = new FloorMapRequest(); details1.setFloorid("F1");
	 * List<String> seatList1 = new ArrayList<>(); seatList1.add("1AW01");
	 * seatList1.add("1AW01"); seatList1.add("1AW01"); seatList1.add("1AW01");
	 * seatList1.add("1AW01"); details1.setSeats(seatList1);
	 * 
	 * FloorMapRequest details2 = new FloorMapRequest(); details2.setFloorid("F2");
	 * List<String> seatList2 = new ArrayList<>(); seatList2.add("2AW01");
	 * seatList2.add("2AW01"); seatList2.add("2AW02"); seatList2.add("2AW03");
	 * seatList2.add("2AW04"); details2.setSeats(seatList2);
	 * 
	 * List<FloorMapRequest> floorMapList = new ArrayList<>();
	 * floorMapList.add(details1); floorMapList.add(details2);
	 * allocationResponse.setFloorMap(floorMapList); return new
	 * ResponseEntity<SeatAllocationRequest>(allocationResponse,HttpStatus.OK); }
	 */


	// pm request response details
	@RequestMapping(value = "/pmreqresdetails", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<List<PMReqRespDetails>> pmreqresdetails(@RequestParam String request_id) {
		List<PMReqRespDetails> pmreqresdetails = allocationService.getPMReqResDetails(request_id);
		return new ResponseEntity<List<PMReqRespDetails>>(pmreqresdetails,HttpStatus.OK);
	}
}
