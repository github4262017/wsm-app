package com.wms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.ChartDAO;

@Service
public class ChartService  {

	@Autowired
	ChartDAO chartDAO;

	public String selectChart() {
		return chartDAO.getChartResponse();
	}
}