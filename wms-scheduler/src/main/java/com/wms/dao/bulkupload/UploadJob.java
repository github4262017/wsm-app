package com.wms.dao.bulkupload;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import com.wms.constant.SchedulerConstant;
import com.wms.constant.WMSConstant;
import com.wms.dao.bulkupload.allocation.AllocationSheetDetails;
import com.wms.dao.bulkupload.assign.EmployeeSeatAssignDetails;
import com.wms.dao.bulkupload.deallocation.EmployeeSeatDeallocate;
import com.wms.dao.bulkupload.deallocation.EmployeeSeatDeallocationDetails;
import com.wms.model.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.EmployeeSeatAsign; 

public class UploadJob implements Runnable {  
        
		@Value("${wms.batchupdate.size}")
		private int batchupdateSize;		
		
		private BatchJobTriggerDAO batchJobTriggerDAO;
		private UploadJobDetails uploadJobDetails;
		private final static Logger LOGGER = LoggerFactory.getLogger(UploadJob.class);
		public UploadJob(UploadJobDetails uploadJobDetails, BatchJobTriggerDAO batchJobTriggerDAO) {
			this.uploadJobDetails = uploadJobDetails;
			this.batchJobTriggerDAO = batchJobTriggerDAO;
		}   
	
		@Override
		public void run() {
			System.out.println("Processing Request ["+uploadJobDetails.getRequest_id() + "] for upload Type [ " +uploadJobDetails.getUpload_type()+" ]");
			if(uploadJobDetails.getUpload_type().equals(SchedulerConstant.JOB_ALLOCATION)) {
				seatAllocation();
			}
			else if(uploadJobDetails.getUpload_type().equals(SchedulerConstant.JOB_ASSIGN)){
				seatAssignment();
			}			
		}
	
		private void seatAssignment() {
			String filePath = uploadJobDetails.getFile_path();
			System.out.println("FilePath" + filePath);
			File file = new File(filePath);
			
			List<EmployeeSeatAssignDetails> mandatoryMissedList = new ArrayList<EmployeeSeatAssignDetails>();
			List<EmployeeSeatAsign> employeeSeatAsign =new ArrayList<EmployeeSeatAsign>();
			List<EmployeeSeatAssignDetails> seatEmployeeList = null;
			try (Reader reader = new FileReader(file);) {
				@SuppressWarnings("unchecked")
				CsvToBean<EmployeeSeatAssignDetails> csvToBean = new CsvToBeanBuilder<EmployeeSeatAssignDetails>(reader)
						.withType(EmployeeSeatAssignDetails.class).withIgnoreLeadingWhiteSpace(true).build();
				seatEmployeeList = csvToBean.parse();
				
				Iterator<EmployeeSeatAssignDetails> seatEmployeeListClone = seatEmployeeList.iterator();
				while (seatEmployeeListClone.hasNext()) {
	
					EmployeeSeatAssignDetails emptyRow = seatEmployeeListClone.next();
					
					if (emptyRow.getFloor_id() == null || emptyRow.getSeat_number().isEmpty()) {
						System.out.println("getRequest_id()"+emptyRow.getRequest_id());
						mandatoryMissedList.add(emptyRow);
						seatEmployeeListClone.remove();   
					}else {
						createListToWorkstationStatus(employeeSeatAsign, emptyRow);
					}
				}
	
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println("FileNotFoundException" + e);
				e.printStackTrace();
			} catch (IOException e) {
				System.out.println("IOException" + e);				
				e.printStackTrace();
			}
			System.out.println("File Size in a batch EmployeeSeatAsignDetails"+ mandatoryMissedList.size()); 
			System.out.println("File Size in a batch EmployeeSeatAsignDetails"+ mandatoryMissedList.size()+" From list"+seatEmployeeList.get(0).getSeat_number());
			
			//batchJobTriggerDAO.batchInsertEmployeeSeatAsign(seatEmployeeList, 3);
			//batchJobTriggerDAO.batchUpdateWorkstationStatusAssign(seatEmployeeList,batchupdateSize); // Added for updating the table
			try {     
				batchJobTriggerDAO.batchUpdateWorkstationStatusAssign(employeeSeatAsign,  employeeSeatAsign.size()); //Update Current Status of the seats
				//batchJobTriggerDAO.batchUpdateWorkstationAssign(employeeSeatAsign, employeeSeatAsign.size()); 
				uploadJobDetails.setStatus(SchedulerConstant.BULKUPLOAD_PROCESSED_STATUS);
				batchJobTriggerDAO.updateStatus(uploadJobDetails);
				batchJobTriggerDAO.bulkUploadSeatAsign(seatEmployeeList,seatEmployeeList.size());  
				seatEmployeeList.get(0).getRequest_id();
				//batchJobTriggerDAO.updatePMRequestSeatsAssign(employeeSeatAsign);
				//batchJobTriggerDAO.updateFARequestSeatsAssign(employeeSeatAsign);
			} catch (Exception e) {
				System.out.println("IOException in update insert" + e);		  
				e.printStackTrace();
			}  
			//batchJobTriggerDAO.getPMRequestToAsignSeat(uploadJobDetails.getRequest_id());		
		}

			private void seatAllocation() {
			String filePath = uploadJobDetails.getFile_path();
			System.out.println("FilePath" + filePath);
			File file = new File(filePath);
	
			List<AllocationSheetDetails> mandatoryMissedList = new ArrayList<AllocationSheetDetails>();
			List<AllocationSheetDetails> UploadSheetDetailsList = null;
			List<SeatAllocation> seatAllocation =new ArrayList<SeatAllocation>();  
			try (Reader reader = new FileReader(file);) {
				@SuppressWarnings("unchecked")
				CsvToBean<AllocationSheetDetails> csvToBean = new CsvToBeanBuilder<AllocationSheetDetails>(reader)
						.withType(AllocationSheetDetails.class).withIgnoreLeadingWhiteSpace(true).build();
				UploadSheetDetailsList = csvToBean.parse();
	
				Iterator<AllocationSheetDetails> UploadSheetDetailsListClone = UploadSheetDetailsList.iterator();
	
				while (UploadSheetDetailsListClone.hasNext()) {
	
					AllocationSheetDetails emptyRow = UploadSheetDetailsListClone.next();
					//System.out.println("emptyRow.getFloor_id()"+emptyRow.getFloor_id());
					if (emptyRow.getFloor_id() == null || emptyRow.getSeat_number().isEmpty()) {
						System.out.println("Allocation getRequest_id :"+emptyRow.getRequest_id());  
						mandatoryMissedList.add(emptyRow);
						UploadSheetDetailsListClone.remove();
						//createListToWorkstationAllocation(seatAllocation, emptyRow); 
					}
					else {
						//mandatoryMissedList.add(emptyRow);
						createListToWorkstationAllocation(seatAllocation, emptyRow);   
						System.out.println("emptyRow.getReq_id()"+emptyRow.getRequest_id()); 
						
					}
				}
	
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				System.out.println("FileNotFoundException" + e);
				e.printStackTrace();
			} catch (IOException e) {
				System.out.println("IOException" + e);
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("seatAllocation.getReq_id()"+seatAllocation.get(0).getRequest_id()); 
			System.out.println("File Size in a batch"+ seatAllocation.size());
			    
			batchJobTriggerDAO.batchInsert(UploadSheetDetailsList, UploadSheetDetailsList.size());
			//batchJobTriggerDAO.batchUpdateAllocateWorkstationStatus(UploadSheetDetailsList,3);  
			batchJobTriggerDAO.batchUpdateAllocateWorkstation(seatAllocation,seatAllocation.size());
			uploadJobDetails.setStatus(SchedulerConstant.BULKUPLOAD_PROCESSED_STATUS);
			batchJobTriggerDAO.updateStatus(uploadJobDetails);		
			
			AllocationRequest aR= new AllocationRequest();
			aR.setRequest_id(uploadJobDetails.getRequest_id());
			aR.setStatus(uploadJobDetails.getStatus()); 
			batchJobTriggerDAO.bulkUploadSeatAllocation(aR);
		} 
		private void createListToWorkstationStatus(List<EmployeeSeatAsign> employeeSeatAsign,
				EmployeeSeatAssignDetails emptyRow) { 
			EmployeeSeatAsign seatAsign = new EmployeeSeatAsign();
			seatAsign.setFloor_id(emptyRow.getFloor_id());
			seatAsign.setRequest_id(emptyRow.getRequest_id());
			seatAsign.setSeat_number(emptyRow.getSeat_number());
			seatAsign.setProject_id(emptyRow.getProject_id());
			seatAsign.setEmp_id(emptyRow.getEmp_id());
			seatAsign.setStatus(String.valueOf(WMSConstant.SEAT_STATUS_ASSIGNED));
			employeeSeatAsign.add(seatAsign);
		}   
		private void createListToWorkstationAllocation(List<SeatAllocation> employeeSeatAsign,
				AllocationSheetDetails emptyRow) {  
			SeatAllocation seatAsign = new SeatAllocation(); 
			System.out.println("emptyRow.getFloor"+emptyRow.getFloor_id());
			System.out.println("emptyRow.getEmp_id"+emptyRow.getEmp_id());
			System.out.println("emptyRow.getRequest_id"+emptyRow.getRequest_id());
			seatAsign.setFloor_id(emptyRow.getFloor_id());
			seatAsign.setRequest_id(emptyRow.getRequest_id()); 
			seatAsign.setSeat_number(emptyRow.getSeat_number());
			seatAsign.setProject_id(emptyRow.getProject_id());
			seatAsign.setEmp_id(emptyRow.getEmp_id()); 
			seatAsign.setStatus(String.valueOf(WMSConstant.SEAT_STATUS_ASSIGNED));
			employeeSeatAsign.add(seatAsign);
		}	
		
	/*
	 * private void seatDeallocation() { String filePath =
	 * uploadJobDetails.getFile_path(); System.out.println("FilePath" + filePath);
	 * File file = new File(filePath);
	 * 
	 * List<EmployeeSeatDeallocationDetails> mandatoryMissedList = new
	 * ArrayList<EmployeeSeatDeallocationDetails>(); List<EmployeeSeatDeallocate>
	 * employeeSeatDeallocate =new ArrayList<EmployeeSeatDeallocate>();
	 * List<EmployeeSeatDeallocationDetails> seatEmployeeList = null; try (Reader
	 * reader = new FileReader(file);) {
	 * 
	 * @SuppressWarnings("unchecked") CsvToBean<EmployeeSeatDeallocationDetails>
	 * csvToBean = new CsvToBeanBuilder<EmployeeSeatDeallocationDetails>(reader)
	 * .withType(EmployeeSeatDeallocationDetails.class).withIgnoreLeadingWhiteSpace(
	 * true).build(); seatEmployeeList = csvToBean.parse();
	 * 
	 * Iterator<EmployeeSeatDeallocationDetails> seatEmployeeListClone =
	 * seatEmployeeList.iterator(); while (seatEmployeeListClone.hasNext()) {
	 * 
	 * EmployeeSeatDeallocationDetails emptyRow = seatEmployeeListClone.next();
	 * 
	 * if (emptyRow.getFloor_id() == null || emptyRow.getSeat_number().isEmpty()) {
	 * mandatoryMissedList.add(emptyRow); seatEmployeeListClone.remove(); }else {
	 * //createListToWorkstationStatus(employeeSeatAsign, emptyRow); } }
	 * 
	 * } catch (FileNotFoundException e) { // TODO Auto-generated catch block
	 * System.out.println("FileNotFoundException" + e); e.printStackTrace(); } catch
	 * (IOException e) { System.out.println("IOException" + e); e.printStackTrace();
	 * } System.out.println("File Size in a batch SeatDeallocateDetails"+
	 * mandatoryMissedList.size()); System.out.println("Deallocate RequestTble");
	 * batchJobTriggerDAO.updateDeallocationSeat(employeeSeatDeallocate);
	 * batchJobTriggerDAO.updateUnAssignedSeat(employeeSeatDeallocate);
	 * batchJobTriggerDAO.updateFAallocatedStatus(employeeSeatDeallocate);
	 * batchJobTriggerDAO.updatePMallocatedStatus(employeeSeatDeallocate);
	 * batchJobTriggerDAO.batchUpdateDeAllocateWorkstationStatus(
	 * employeeSeatDeallocate, 3);
	 * 
	 * }
	 */
		//Update wms_allocation_seats as Allocated
		
}
