package com.wms.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Created by Yasin Mert on 25.02.2017.
 */
import javax.validation.Valid;

import com.wms.model.Roles;
import com.wms.model.Task;
import com.wms.model.UserTask;
import com.wms.service.RoleService;
import com.wms.service.TaskService;
import com.wms.service.UserTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wms.model.User;
import com.wms.service.UserService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@Autowired
	private TaskService taskService;

	@Autowired
	private UserTaskService userTaskService;

	@RequestMapping(value={"/","/wms","/login"}, method = RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("wms Login Page Redirection");
		modelAndView.setViewName("login");
		return modelAndView;
	}
	
	@RequestMapping(value={"/error"}, method = RequestMethod.GET)
	public ModelAndView error(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("error");
		return modelAndView;
	}
	
	@RequestMapping(value={"/maxattempt"}, method = RequestMethod.GET)
	public ModelAndView maxattempt(){
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("maxattempt");
		modelAndView.addObject("errormsg", "User Attempts Exceeded! Reach Admin Help...");
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
	public void logoutDo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("Logout Request New Build");
		HttpSession session = request.getSession(false);
		SecurityContextHolder.clearContext();
		session = request.getSession(false);
		if (session != null) {
			System.out.println("Before Session Logout" + session.getId());
			session.invalidate();
		}
		for (Cookie cookie : request.getCookies()) {
			cookie.setMaxAge(0);
		}
		System.out.println("After Session Logout" + session.getId());
		response.sendRedirect("/wms");
	}
	
	/*
	@RequestMapping(value="/registration", method = RequestMethod.GET)
	public ModelAndView registration(){
		ModelAndView modelAndView = new ModelAndView();
		User user = new User();
		modelAndView.addObject("user", user);
		modelAndView.setViewName("registration");
		return modelAndView;
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView createNewUser(@Valid User user, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		User userExists = userService.findUserByEmail(user.getEmail());
		if (userExists != null) {
			bindingResult
					.rejectValue("email", "error.user",
							"Email has already been taken"
							+ " Check your details!");
		}
		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("registration");
		} else {
			userService.saveNewUser(user);
			modelAndView.addObject("successMessage", "Registration Successful.");
			modelAndView.addObject("user", new User());
			modelAndView.setViewName("registration");
			
		}
		return modelAndView;
	}
*/

	@RequestMapping(value="/access-denied", method = RequestMethod.GET)
	public ModelAndView test(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("403");
		return modelAndView;
	}


	@RequestMapping(value="/home", method = RequestMethod.GET)
	public ModelAndView home(){
		ModelAndView modelAndView = new ModelAndView();
		Roles role = new Roles();
		Roles role2 = new Roles();
		role = roleService.findRole("ADMIN");
		role2 = roleService.findRole("USER");
		List<User> users = new ArrayList<>();
		List<User> users2 = new ArrayList<>();
		users = userService.findUserbyRole(role);
		users2 = userService.findUserbyRole(role2);
		List<Task> tasks = new ArrayList<>();
		tasks = taskService.findAll();
		int taskCount = tasks.size();
		int adminCount = users.size();
		int userCount = users2.size();
		modelAndView.addObject("adminCount", adminCount);//Authentication for NavBar
		modelAndView.addObject("userCount", userCount);//Authentication for NavBar
		modelAndView.addObject("taskCount", taskCount);//Authentication for NavBar
		//-----------------------------------------
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User loginUser = userService.findUserByEmail(auth.getName());
		System.out.println("Auth Name"+auth.getName() + "loginUser gid" + loginUser.getGid());
		modelAndView.addObject("control", loginUser.getRole().getRole());//Authentication for NavBar
		modelAndView.addObject("auth", loginUser);
		List<UserTask> userTasks = new ArrayList<>();
		userTasks = userTaskService.findByUser(loginUser);
		modelAndView.addObject("userTaskSize", userTasks.size());
		modelAndView.setViewName("home");
		return modelAndView;
	}
}
