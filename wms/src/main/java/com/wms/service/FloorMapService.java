package com.wms.service;

import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.dao.floormap.FloorMapDAO;
import com.wms.model.floormap.FloorMapInfo;

@Service
@Transactional
public class FloorMapService {

	
	@Autowired
	FloorMapDAO floorMapDAO;

	public Map<String,FloorMapInfo> getFloorMapDetails(String floorID,String projectID,String requestid) {
		return floorMapDAO.getFloorMapDetails(floorID,projectID,requestid);
	}
	
}
