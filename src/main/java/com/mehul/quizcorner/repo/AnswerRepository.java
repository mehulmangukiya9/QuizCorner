package com.mehul.quizcorner.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mehul.quizcorner.model.Answer;

public interface AnswerRepository extends JpaRepository<Answer, Integer>
{
	
}
