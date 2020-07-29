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
		public UploadJob(UploadJobDetails IO1lol0IO, BatchJobTriggerDAO OOI00l1Il) {
			this.uploadJobDetails = IO1lol0IO;
			this.batchJobTriggerDAO = OOI00l1Il;
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
			String OIl0ol0IO = uploadJobDetails.getFile_path();
			System.out.println("FilePath" + OIl0ol0IO);
			File file = new File(OIl0ol0IO);
			
			List<EmployeeSeatAssignDetails> oII0lliIi = new ArrayList<EmployeeSeatAssignDetails>();
			List<EmployeeSeatAsign> I1IoIloI0 =new ArrayList<EmployeeSeatAsign>();
			List<EmployeeSeatAssignDetails> IIIoOl1Io = null;
			try (Reader reader = new FileReader(file);) {
				@SuppressWarnings("unchecked")
				CsvToBean<EmployeeSeatAssignDetails> Ili01lOII = new CsvToBeanBuilder<EmployeeSeatAssignDetails>(reader)
						.withType(EmployeeSeatAssignDetails.class).withIgnoreLeadingWhiteSpace(true).build();
				IIIoOl1Io = Ili01lOII.parse();
				
				Iterator<EmployeeSeatAssignDetails> Io10OllI1 = IIIoOl1Io.iterator();
				while (Io10OllI1.hasNext()) {
	
					EmployeeSeatAssignDetails ioO0OllI0 = Io10OllI1.next();
					
					if (ioO0OllI0.getFloor_id() == null || ioO0OllI0.getSeat_number().isEmpty()) {
						System.out.println("getRequest_id()"+ioO0OllI0.getRequest_id());
						oII0lliIi.add(ioO0OllI0);
						Io10OllI1.remove();   
					}else {
						createListToWorkstationStatus(I1IoIloI0, ioO0OllI0);
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
			System.out.println("File Size in a batch EmployeeSeatAsignDetails"+ oII0lliIi.size()); 
			System.out.println("File Size in a batch EmployeeSeatAsignDetails"+ oII0lliIi.size()+" From list"+IIIoOl1Io.get(0).getSeat_number());
			

			try {     
				batchJobTriggerDAO.batchUpdateWorkstationStatusAssign(I1IoIloI0,  I1IoIloI0.size()); //Update Current Status of the seats
			
				uploadJobDetails.setStatus(SchedulerConstant.BULKUPLOAD_PROCESSED_STATUS);
				batchJobTriggerDAO.updateStatus(uploadJobDetails);
				batchJobTriggerDAO.bulkUploadSeatAsign(IIIoOl1Io,IIIoOl1Io.size());  
				IIIoOl1Io.get(0).getRequest_id();

			} catch (Exception e) {
				System.out.println("IOException in update insert" + e);		  
				e.printStackTrace();
			}  
	
		}

			private void seatAllocation() {
			String OIl0ol0IO = uploadJobDetails.getFile_path();
			System.out.println("FilePath" + OIl0ol0IO);
			File lIl0il0IO = new File(OIl0ol0IO);
	
			List<AllocationSheetDetails> oII0lliIi = new ArrayList<AllocationSheetDetails>();
			List<AllocationSheetDetails> iI1lIloIO = null;
			List<SeatAllocation> iiOoilOII =new ArrayList<SeatAllocation>();  
			try (Reader reader = new FileReader(lIl0il0IO);) {
				@SuppressWarnings("unchecked")
				CsvToBean<AllocationSheetDetails> Ili01lOII = new CsvToBeanBuilder<AllocationSheetDetails>(reader)
						.withType(AllocationSheetDetails.class).withIgnoreLeadingWhiteSpace(true).build();
				iI1lIloIO = Ili01lOII.parse();
	
				Iterator<AllocationSheetDetails> ii00il1II = iI1lIloIO.iterator();
	
				while (ii00il1II.hasNext()) {
	
					AllocationSheetDetails ioO0OllI0 = ii00il1II.next();
					//System.out.println("emptyRow.getFloor_id()"+emptyRow.getFloor_id());
					if (ioO0OllI0.getFloor_id() == null || ioO0OllI0.getSeat_number().isEmpty()) {
						System.out.println("Allocation getRequest_id :"+ioO0OllI0.getRequest_id());  
						oII0lliIi.add(ioO0OllI0);
						ii00il1II.remove();
						//createListToWorkstationAllocation(seatAllocation, emptyRow); 
					}
					else {
						//mandatoryMissedList.add(emptyRow);
						createListToWorkstationAllocation(iiOoilOII, ioO0OllI0);   
						System.out.println("emptyRow.getReq_id()"+ioO0OllI0.getRequest_id()); 
						
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
			System.out.println("seatAllocation.getReq_id()"+iiOoilOII.get(0).getRequest_id()); 
			System.out.println("File Size in a batch"+ iiOoilOII.size());
			    
			batchJobTriggerDAO.batchInsert(iI1lIloIO, iI1lIloIO.size());
			//batchJobTriggerDAO.batchUpdateAllocateWorkstationStatus(UploadSheetDetailsList,3);  
			batchJobTriggerDAO.batchUpdateAllocateWorkstation(iiOoilOII,iiOoilOII.size());
			uploadJobDetails.setStatus(SchedulerConstant.BULKUPLOAD_PROCESSED_STATUS);
			batchJobTriggerDAO.updateStatus(uploadJobDetails);		
			
			AllocationRequest I0I0OlOII= new AllocationRequest();
			I0I0OlOII.setRequest_id(uploadJobDetails.getRequest_id());
			I0I0OlOII.setStatus(uploadJobDetails.getStatus()); 
			batchJobTriggerDAO.bulkUploadSeatAllocation(I0I0OlOII);
		} 
		private void createListToWorkstationStatus(List<EmployeeSeatAsign> I1IoIloI0,
				EmployeeSeatAssignDetails ioO0OllI0) { 
			EmployeeSeatAsign l0i00l1Io = new EmployeeSeatAsign();
			l0i00l1Io.setFloor_id(ioO0OllI0.getFloor_id());
			l0i00l1Io.setRequest_id(ioO0OllI0.getRequest_id());
			l0i00l1Io.setSeat_number(ioO0OllI0.getSeat_number());
			l0i00l1Io.setProject_id(ioO0OllI0.getProject_id());
			l0i00l1Io.setEmp_id(ioO0OllI0.getEmp_id());
			l0i00l1Io.setStatus(String.valueOf(WMSConstant.SEAT_STATUS_ASSIGNED));
			I1IoIloI0.add(l0i00l1Io);
		}   
		private void createListToWorkstationAllocation(List<SeatAllocation> I1IoIloI0,
				AllocationSheetDetails ioO0OllI0) {  
			SeatAllocation l0i00l1Io = new SeatAllocation(); 
			System.out.println("emptyRow.getFloor"+ioO0OllI0.getFloor_id());
			System.out.println("emptyRow.getEmp_id"+ioO0OllI0.getEmp_id());
			System.out.println("emptyRow.getRequest_id"+ioO0OllI0.getRequest_id());
			l0i00l1Io.setFloor_id(ioO0OllI0.getFloor_id());
			l0i00l1Io.setRequest_id(ioO0OllI0.getRequest_id()); 
			l0i00l1Io.setSeat_number(ioO0OllI0.getSeat_number());
			l0i00l1Io.setProject_id(ioO0OllI0.getProject_id());
			l0i00l1Io.setEmp_id(ioO0OllI0.getEmp_id()); 
			l0i00l1Io.setStatus(String.valueOf(WMSConstant.SEAT_STATUS_ASSIGNED));
			I1IoIloI0.add(l0i00l1Io);
		}	
		

		
}
