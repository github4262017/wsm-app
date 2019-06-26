package com.wms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.ChartDAO;
import com.wms.model.UtilizationReport;

@Service
public class ChartService  {

	@Autowired
	ChartDAO chartDAO;

	public String selectChart() {
		return chartDAO.getChartResponse();
	}
	
	public List<UtilizationReport> selectUtilization() {
		return chartDAO.getUtilization();
	}
}