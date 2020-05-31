package com.mehul.quizcorner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mehul.quizcorner.services.QuestionService;

@Controller
@RequestMapping("question")
public class QuestionController 
{
	@Autowired
	private QuestionService qservice;
	
	@RequestMapping(method = RequestMethod.GET)
	public String quiz(ModelMap model)
	{
		model.put("questions", qservice.findAll());
		return "quiz.jsp";
	}
}
