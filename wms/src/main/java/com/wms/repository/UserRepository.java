package com.wms.repository;

/**
 * Created by Yasin Mert on 25.02.2017.
 */
import com.wms.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wms.model.User;

import java.util.List;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Integer> {
	 User findByEmail(String email);
	List<User> findByRole(Role role);
}
