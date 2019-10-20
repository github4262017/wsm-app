package com.wms.controller;

/**
 * Created by Yasin Mert on 25.02.2017.
 */
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wms.constant.WMSConstant;
import com.wms.model.User;
import com.wms.response.GenericResponse;
import com.wms.service.RoleService;
import com.wms.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {


	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;



	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public ModelAndView allUsers() {
		ModelAndView modelAndView = new ModelAndView();
		//POINT=7 http://stackoverflow.com/questions/22364886/neither-bindingresult-nor-plain-target-object-for-bean-available-as-request-attr
		modelAndView.addObject("users", userService.findAll());
		modelAndView.addObject("mode", "MODE_ALL");
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		modelAndView.setViewName("user");
		return modelAndView;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveUser(@Valid User user, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView("redirect:/users/all");
		user.setPassword(userService.findUser(user.getId()).getPassword());
		user.setActive(userService.findUser(user.getId()).getActive());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		userService.updateUser(user);
		return modelAndView;
	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<GenericResponse> saveUserDetails(User user) {
		GenericResponse genericResponse = new GenericResponse();
		user.setName(user.getFirstname());
		User userExists = userService.findUserByEmail(user.getEmail() + WMSConstant.EMAIL_DOMAIN);
		if (userExists != null) {
			System.out.println("User alreday exists");
			genericResponse.setErrorCode(1);
			genericResponse.setErrorMsg("User Already Exists");
			return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
		}
		System.out.println("New User Created " + user.getEmail() + user.getFirstname());
		userService.saveNewUser(user);
		genericResponse.setSuccessCode(1);
		genericResponse.setSuccessMsg("New User Created Successfully");
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView updateUser(@RequestParam int id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		modelAndView.addObject("user", userService.findUser(id));
		modelAndView.addObject("roles", roleService.findAll());
		modelAndView.addObject("mode", "MODE_UPDATE");
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		modelAndView.setViewName("user");
		return modelAndView;
	}

	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	public ResponseEntity<GenericResponse> deleteUser(@RequestParam String gid) {
		GenericResponse genericResponse = new GenericResponse();
		genericResponse.setSuccessCode(1);
		genericResponse.setSuccessMsg("User Deleted Successfully");
		userService.delete(gid);
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getUser", method = RequestMethod.GET)
	public ResponseEntity<User> getUser(@RequestParam String gid) {
		User user = userService.findUserByGID(gid);
		return new ResponseEntity<User>(user,HttpStatus.OK);
	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public ResponseEntity<GenericResponse> getUser(User user) {
		GenericResponse genericResponse = new GenericResponse();
		String email = user.getEmail();
		if(!email.contains(WMSConstant.EMAIL_DOMAIN)) {
			user.setEmail(user.getEmail() + WMSConstant.EMAIL_DOMAIN);
		}else {
			user.setEmail(user.getEmail());
		}
		User userExists = userService.findUserByEmail(user.getEmail());
		if (userExists != null && !user.getGid().equals(userExists.getGid())) {
			System.out.println("User Already exists");
			genericResponse.setErrorCode(1);
			genericResponse.setErrorMsg("User Already Exists");
			return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
		}
		userService.updateUser(user);
		genericResponse.setSuccessCode(1);
		genericResponse.setSuccessMsg("User Updated Successfully");
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}

	private User getUser(){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		return user;
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public ResponseEntity<GenericResponse> confirmPasswordChange(User user) {
		GenericResponse genericResponse = userService.changePassword(user);
		return new ResponseEntity<GenericResponse>(genericResponse,HttpStatus.OK);
	}
}







