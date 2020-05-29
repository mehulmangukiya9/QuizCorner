package com.mehul.quizcorner.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mehul.quizcorner.model.Student;
import com.mehul.quizcorner.repo.StudentRepository;

@Controller
@SessionAttributes({"user"})
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
	public String login(@RequestParam String username, @RequestParam String pswd, Model model)
	{
		Student student = srepo.findStudentByUsernameAndPassword(username, pswd);
		if(student != null)
		{
//			String msg = "login accessed";
//			model.addAttribute("user", msg);
			model.addAttribute("user", student);
			return "student_dashboard.jsp";
		}
		else
		{
			return "home.jsp";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status)
	{
		status.setComplete();
		return "home.jsp";
	}
	
	@RequestMapping("/updateStudent")
	public String updateStudent(@RequestParam int student_id, @RequestParam String name, @RequestParam String email, @RequestParam String username, @RequestParam String password, @RequestParam String address)
	{
		Student student = new Student(student_id, name, email, username, password, address);
		srepo.save(student);
		return "student_dashboard.jsp";
	}
	
	@RequestMapping("/registerStudent")
	public String registerStudent(@RequestParam String name, @RequestParam String email, @RequestParam String username, @RequestParam String password, @RequestParam String address)
	{
		Student student = new Student(name, email, username, password, address);
		srepo.save(student);
		return "home.jsp";
	}
}
