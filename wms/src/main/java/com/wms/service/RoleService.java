package com.wms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wms.model.Roles;
import com.wms.repository.RoleRepository;
@Service("roleService")
public class RoleService {

	
	@Autowired
    private RoleRepository roleRepository;
	
	
	public RoleService(RoleRepository roleRepository) {
		this.roleRepository = roleRepository;
	}
	
	public List<Roles> findAll(){
		List<Roles> roles = new ArrayList<>();
		roles = roleRepository.findAll();
		return roles;
	}
	
	public Roles findRole(int id){
		return roleRepository.findById(id).get();
	}
	
	public void save(Roles role){
		roleRepository.save(role);
	}
	
	public void delete(int id){
		roleRepository.deleteById(id);

	}

	public Roles findRole(String role) {
		// TODO Auto-generated method stub
		return roleRepository.findByRole(role);
	}

}
