package com.mvcmajor.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvcmajor.dao.UserDao;
import com.mvcmajor.entity.User;

@Controller
public class HomeController {

	@Autowired
	private UserDao userDao;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	

	@RequestMapping(path = "/registerUser", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute User user, HttpSession session) {
//		System.out.println(user);

		userDao.saveUser(user);
		session.setAttribute("msg", "Register Successfully");
		return "redirect:/register";
	}

	@RequestMapping(path = "/loginUser", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {
		User user = userDao.login(email, password);

		if (user != null) {
			session.setAttribute("userObj", user);
			return "home";
		} else {
			session.setAttribute("msg", "email & password invalid");
			return "redirect:/login";
		}
	}
}
