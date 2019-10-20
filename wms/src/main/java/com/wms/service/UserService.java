package com.wms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.wms.constant.WMSConstant;
import com.wms.model.Roles;
import com.wms.model.User;
import com.wms.repository.RoleRepository;
import com.wms.repository.UserRepository;

@Service("userService")
public class UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
	@Value("${wms.user.default.password}")
	private String userDefaultPwd;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        users = userRepository.findAll();
        return users;
    }

    public User findUser(int id) {
        return userRepository.findById(id).get();
    }

    public void delete(String gid) {
    	User selectUser = userRepository.findByGid(gid);
        userRepository.delete(selectUser);
    }

    public void save(User user) {
    	User selectUser = userRepository.findByGid(user.getGid());
		user.setPassword(selectUser.getPassword());
		user.setId(selectUser.getId());
		user.setName(user.getFirstname());
		if(!user.getEmail().contains("@sony.com")) {
			user.setEmail(user.getEmail() + WMSConstant.EMAIL_DOMAIN);
		}else {
			user.setEmail(user.getEmail());
		}
		user.setRole(roleRepository.findById(user.getRole().getId()));
		user.setActive(selectUser.getActive());
        userRepository.save(user);
    }


    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User findUserByGID(String gid) {
        return userRepository.findByGid(gid);
    }

    public void saveUser(User user) {    
       
        user.setPassword(bCryptPasswordEncoder.encode(userDefaultPwd));
		//user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(1);
        user.setEmail(user.getEmail() + WMSConstant.EMAIL_DOMAIN);
        Roles userRole = roleRepository.findById(user.getRole().getId());
        user.setRole(userRole);
        userRepository.save(user); 
    }

    public List<User> findUserbyRole(Roles role) {
        return userRepository.findByRole(role);
    }
}
