package com.wms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.controller.SuperAdminRequest;
import com.wms.dao.SuperAdminDAO;
import com.wms.model.RoleResponse;

@Service
@Transactional
public class SuperAdminService {

	@Autowired
	SuperAdminDAO superAdminDAO;

	public RoleResponse getRoleCount(int roleId) {
		return superAdminDAO.executeRoleCount(roleId);
	}
	
	public RoleResponse getSuperRoleCount(SuperAdminRequest superAdminRequest) {
		return superAdminDAO.getSuperRoleCount(superAdminRequest);
	}

}
