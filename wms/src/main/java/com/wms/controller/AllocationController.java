package com.wms.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import com.wms.request.allocation.FloorMapRequest;
import com.wms.request.allocation.SeatAllocationRequest;
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
}
