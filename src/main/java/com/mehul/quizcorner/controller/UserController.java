package com.mehul.quizcorner.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String login(@RequestParam String username, @RequestParam String pswd, Model model, HttpSession session)
	{
		Student student = srepo.findStudentByUsernameAndPassword(username, pswd);
		if(student != null)
		{
			String msg = "login accessed";
			session.setAttribute("user", msg);
			model.addAttribute("username", student.getName());
			return "student_dashboard.jsp";
		}
		else
		{
			return "home.jsp";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "home.jsp";
	}
}
