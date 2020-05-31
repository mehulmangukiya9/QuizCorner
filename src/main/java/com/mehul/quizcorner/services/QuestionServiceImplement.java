package com.mehul.quizcorner.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.mehul.quizcorner.model.Question;
import com.mehul.quizcorner.repo.QuestionRepository;

@Component
@Service("questionService")
public class QuestionServiceImplement implements QuestionService
{
 
	@Autowired
	private QuestionRepository qrepo;
	
	@Override
	public Iterable<Question> findAll() {
		return qrepo.findAll();
	}

}
