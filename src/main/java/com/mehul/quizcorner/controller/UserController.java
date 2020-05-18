package com.mehul.quizcorner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mehul.quizcorner.model.Student;
import com.mehul.quizcorner.repo.StudentRepository;

@Controller
public class UserController 
{
	@Autowired
	StudentRepository srepo;
	
	@RequestMapping("/home")
	public String home()
	{
		return "home.jsp";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam String username, @RequestParam String pswd)
	{
		Student student = srepo.findStudentByUsernameAndPassword(username, pswd);
		if(student != null)
		{
			return "dashboard.jsp";
		}
		else
		{
			return "home.jsp";
		}
	}
}
