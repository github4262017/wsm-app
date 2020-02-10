package com.wms.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.model.RoleResponse;
import com.wms.service.SuperAdminService;

@Controller
@RequestMapping("/superadmin")
public class SuperAdminController {
	
	@Autowired
	private SuperAdminService superAdminService;

	
	// Enpoint : /superadmin/rolesinfo?id=roleId
	/*
	@RequestMapping(value = "/rolesinfo", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public ResponseEntity<RoleResponse> rolesinfo(@RequestParam int roleId) {
		RoleResponse userDetailsResponse = superAdminService.getRoleCount(roleId);
		return new ResponseEntity<RoleResponse>(userDetailsResponse,HttpStatus.OK);
	}*/
	//new method
	@RequestMapping(value = "/rolesinfo", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public ResponseEntity<RoleResponse> rolesinfo(@Valid SuperAdminRequest superAdminRequest) {
		RoleResponse superuserDetailsResponse = superAdminService.getSuperRoleCount(superAdminRequest);
		return new ResponseEntity<RoleResponse>(superuserDetailsResponse,HttpStatus.OK);
	}
	
}
