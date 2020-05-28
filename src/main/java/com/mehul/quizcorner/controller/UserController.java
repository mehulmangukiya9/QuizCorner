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
	
	@RequestMapping("/updateStudent")
	public String updateStudent(@RequestParam String name, @RequestParam String email, @RequestParam String username, @RequestParam String password, @RequestParam String address)
	{
		Student student = new Student(name, email, username, password, address);
		srepo.save(student);
		return "student_dashboard.jsp";
	}
	
	@RequestMapping("/viewProfile")
	public String viewStudent(@RequestParam String user_value)
	{
		Student student = srepo.findByUsername(user_value);
		System.out.println(student);
		return "view_profile.jsp";
	}
}
