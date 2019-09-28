package com.wms.controller;

/**
 * Created by Yasin wms on 25.02.2017.
 */
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wms.model.User;
import com.wms.service.UserService;
import com.wms.service.UserTaskService;

@Controller
@RequestMapping("/myprofile")
public class UserPageController {


	@Autowired
	private UserService userService;

	@Autowired
	private UserTaskService userTaskService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	@RequestMapping(value = "/inf", method = RequestMethod.GET)
	public ModelAndView showProfile() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		//POINT=7 http://stackoverflow.com/questions/22364886/neither-bindingresult-nor-plain-target-object-for-bean-available-as-request-attr
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.setViewName("user_profile");
		return modelAndView;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveProfile(@Valid User user, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView("redirect:/myprofile/inf");
		user.setPassword(userService.findUser(user.getId()).getPassword());
		user.setRole(userService.findUser(user.getId()).getRole());
		user.setActive(userService.findUser(user.getId()).getActive());
		userService.save(user);
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		return modelAndView;
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView updateProfile(@RequestParam int id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		modelAndView.addObject("user", userService.findUser(id));
		modelAndView.addObject("mode", "MODE_EDIT");
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		modelAndView.setViewName("user_profile");
		return modelAndView;
	}


	@RequestMapping(value = "/mytasks", method = RequestMethod.GET)
	public ModelAndView showMyTask(@RequestParam int id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		modelAndView.addObject("user", userService.findUser(id));
		modelAndView.addObject("usertasks", userTaskService.findByUser(userService.findUser(id)));
		modelAndView.addObject("mode", "MODE_TASKS");
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		modelAndView.setViewName("user_profile");
		return modelAndView;
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView showDashboard() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		//POINT=7 http://stackoverflow.com/questions/22364886/neither-bindingresult-nor-plain-target-object-for-bean-available-as-request-attr
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.setViewName("dashboard");
		return modelAndView;
	}

	//--------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/savepass_change", method = RequestMethod.POST)
	public ModelAndView confirmPasswordChange(@Valid User user, BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		
		String oldPassword = userService.findUser(user.getId()).getPassword();
		String postOldPassword =user.getName(); 

		System.out.println(oldPassword + " ---- " +postOldPassword+"  ----- "+ user.getPassword()) ;
		if(passwordEncoder.matches(postOldPassword, oldPassword)){
			
			user.setName(userService.findUser(user.getId()).getName());
			user.setEmail(userService.findUser(user.getId()).getEmail());
			user.setRole(userService.findUser(user.getId()).getRole());
			user.setActive(userService.findUser(user.getId()).getActive());
			user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
			userService.save(user);
			modelAndView.addObject("user", userService.findUser(user.getId()));
			modelAndView.addObject("mode", "MODE_PASS");
			modelAndView.addObject("auth", getUser());
			modelAndView.addObject("control", getUser().getRole().getRole());
			modelAndView.addObject("rule", new User());
			modelAndView.addObject("process", "SUCCESS");
			modelAndView.addObject("pw_success", "Well done! You successfully change your password.");
			modelAndView.setViewName("user_profile");
		}
		else {
			
			modelAndView.addObject("user", userService.findUser(user.getId()));
			modelAndView.addObject("mode", "MODE_PASS");
			modelAndView.addObject("auth", getUser());
			modelAndView.addObject("control", getUser().getRole().getRole());
			modelAndView.addObject("process", "ERROR");
			modelAndView.addObject("pw_error", "Error : Check your old password!");
			modelAndView.addObject("rule", new User());
			modelAndView.setViewName("user_profile");
			
		}

		return modelAndView;
	}

	@RequestMapping(value = "/change_password", method = RequestMethod.GET)
	public ModelAndView changePassword(@RequestParam int id) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		modelAndView.addObject("user", userService.findUser(id));
		modelAndView.addObject("mode", "MODE_PASS");
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", getUser().getRole().getRole());
		modelAndView.setViewName("user_profile");
		return modelAndView;
	}

	@RequestMapping(value = "/allocationrequests", method = RequestMethod.GET)
	public ModelAndView allocationrequests() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.setViewName("allocationrequests");
		return modelAndView;
	}
	@RequestMapping(value = "/allocationapprovals", method = RequestMethod.GET)
	public ModelAndView allocationapprovals() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.setViewName("allocationapprovals");
		return modelAndView;
	}
	
	@RequestMapping(value = "/utilizationStatus", method = RequestMethod.GET)
	public ModelAndView utilizationStatus() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.setViewName("utilizations_status");
		return modelAndView;
	}
	@RequestMapping(value = "/pmformview", method = RequestMethod.GET)
	public ModelAndView projMangr() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.setViewName("pm-request-form");//this is the HTML file name
		return modelAndView;
	}
	
	@RequestMapping(value = "/fa-allocation-request", method = RequestMethod.GET)
	public ModelAndView faallocationrequest(@RequestParam String requestid) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.addObject("requestid", requestid);
		modelAndView.setViewName("fa-allocation-request");//this is the HTML file name
		return modelAndView;
	}
	
	@RequestMapping(value = "/pm-emp-assignment", method = RequestMethod.GET)
	public ModelAndView pmempassignment(@RequestParam String requestid) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.addObject("requestid", requestid);
		modelAndView.setViewName("pm-emp-assignment");//this is the HTML file name
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/fa-deallocation-request", method = RequestMethod.GET)
	public ModelAndView fadeallocationrequest(@RequestParam String requestid) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("rule", new User());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("user", userService.findUser(user.getId()));
		modelAndView.addObject("mode", "MODE_INF");
		User control = userService.findUserByEmail(auth.getName());
		modelAndView.addObject("auth", getUser());
		modelAndView.addObject("control", control.getRole().getRole());//Authentication for NavBar
		modelAndView.addObject("requestid", requestid);
		modelAndView.setViewName("fa-deallocation-request");//this is the HTML file name
		return modelAndView;
	}
	
	
	private User getUser(){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findUserByEmail(auth.getName());
		return user;
	}

}







