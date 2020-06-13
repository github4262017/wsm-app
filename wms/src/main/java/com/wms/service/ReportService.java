package com.wms.service;

import java.util.List;

import org.eclipse.collections.api.multimap.bag.MutableBagMultimap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.ReportsAdminDAO;
import com.wms.model.UtilizationReportWorkstation;

@Service
public class ReportService {
	@Autowired
	ReportsAdminDAO reportsAdminDAO;
	
	public MutableBagMultimap adminReportExcel() {
		return reportsAdminDAO.getTotalBuildingSeatMap();
	}
	
	public MutableBagMultimap adminReportOccupiedByISBL() {
		return reportsAdminDAO.getOccupiedByISBLDivisionMap();
	}
	
	public MutableBagMultimap adminReportOccupiedBySARD() {
		return reportsAdminDAO.getOccupiedBySARDDivisionMap();
	}
	
	public MutableBagMultimap adminReportOccupiedByInfosec() {
		return reportsAdminDAO.getOccupiedByINFOSECDivisionMap();
	}
	
	public MutableBagMultimap adminReportOccupiedByPANDC() {
		return reportsAdminDAO.getOccupiedByPANDCDivisionMap();  
	}
	
	public MutableBagMultimap adminReportOccupiedSeats() {
		return reportsAdminDAO.getOccupiedSeatsMap();  
	}
	
	public MutableBagMultimap adminReportTotalVacant() {
		return reportsAdminDAO.getTotalVacantSeatsMap();       
	}
	
	public MutableBagMultimap adminReportDivisionHeadcount(String division) {
		return reportsAdminDAO.getOccupiedByDivisionHeadCountMap(division);       
	}
}
