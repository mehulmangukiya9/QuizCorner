package com.mehul.quizcorner.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mehul.quizcorner.model.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer>
{
	
}
