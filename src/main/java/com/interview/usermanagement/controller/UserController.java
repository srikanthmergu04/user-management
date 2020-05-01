package com.interview.usermanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.interview.usermanagement.dao.UserRepository;
import com.interview.usermanagement.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/")
	public ModelAndView getHomePage(ModelAndView modelAndView) {

		modelAndView.setViewName("index");

		return modelAndView;

	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView getSingUpPage(ModelAndView modelAndView) {

		modelAndView.addObject("user", new User());
		modelAndView.setViewName("signup");

		return modelAndView;

	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") User user, ModelAndView modelAndView) {

		userRepository.save(user);
		modelAndView.addObject("user", user);
		modelAndView.setViewName("user");

		return modelAndView;

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView modelAndView) {
		modelAndView.addObject("user", new User());
		modelAndView.setViewName("login");
		return modelAndView;
	}
	
	@RequestMapping(value = "/validateUser", method = RequestMethod.POST)
	public ModelAndView validateUser(@ModelAttribute("user") User user, ModelAndView modelAndView) {
		User userObj = userRepository.findByUserName(user.getUserName());

		if (user.getPassword().equals(userObj.getPassword())) {
			modelAndView.setViewName("loginSuccess");
		} else {
			modelAndView.setViewName("loginError");
		}
		return modelAndView;
	}
	
}
