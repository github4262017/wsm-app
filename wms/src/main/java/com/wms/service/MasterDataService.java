package com.wms.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.allocation.AllocationDAO;
import com.wms.model.EmailModel;
import com.wms.model.EmployeeDetails;
import com.wms.model.FloorMapDetails;
import com.wms.model.RunningNumberRequest_id;
import com.wms.model.allocation.AllocationDetails;
import com.wms.model.allocation.BulkAllocation;
import com.wms.model.allocation.PMReqRespDetails;
import com.wms.model.allocation.SeatAllocation;
import com.wms.request.allocation.AllocationRequest;
import com.wms.request.allocation.AssignEmpInfo;
import com.wms.request.allocation.EmpBulkAssign;
import com.wms.request.allocation.EmpFloorMapReq;
import com.wms.request.allocation.EmployeeSeatAsign;
import com.wms.request.allocation.FloorMapRequest;
import com.wms.request.allocation.SeatAllocationRequest;
import com.wms.request.allocation.SeatAssign;
import com.wms.response.GenericResponse;

@Service
@Transactional
public class MasterDataService {

	
	@Autowired
	MasterDataDAO masterDataDAO;

	//Project Details
		public List<EmployeeDetails> geProjectDetails() {
			return masterDataDAO.getProjectDetails();
		}
}
