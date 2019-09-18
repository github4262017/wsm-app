package com.wms.repository;

/**
 * Created by Yasin Mert on 25.02.2017.
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.wms.model.Roles;

@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Roles, Integer>{
	Roles findByRole(String role);
}
