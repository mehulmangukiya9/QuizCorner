package com.mehul.quizcorner.services;

import com.mehul.quizcorner.model.Question;

public interface QuestionService 
{
	public Iterable<Question> findAll();
}
