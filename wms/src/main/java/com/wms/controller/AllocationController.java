package com.wms.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wms.model.FloorMapDetails;
import com.wms.model.allocation.AllocationDetails;
import com.wms.request.allocation.AllocationRequest;
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
	
	@RequestMapping(value = "/seatallocationRequest", method = RequestMethod.POST,consumes = {MediaType.APPLICATION_JSON_VALUE}, produces = "application/json")
	@ResponseBody
	public ResponseEntity<GenericResponse> getJsonResponse(@RequestBody SeatAllocationRequest seatAllocationRequest) {
	    System.out.println("Requestid"+seatAllocationRequest.getRequestid());
	    allocationService.getBulkAllocation(seatAllocationRequest);
		GenericResponse genericResponse = new GenericResponse();
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	
}
