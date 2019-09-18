package com.wms.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

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

    public void delete(int id) {
        userRepository.deleteById(id);
    }

    public void save(User user) {
        userRepository.save(user);
    }


    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }


    public void saveUser(User user) {

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(1);
        Roles userRole = roleRepository.findByRole("USER");
        user.setRole(userRole);
        userRepository.save(user);
    }

    public List<User> findUserbyRole(Roles role) {
        return userRepository.findByRole(role);
    }
}
