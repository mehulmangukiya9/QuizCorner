package com.mehul.quizcorner.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "answer")
public class Answer 
{
	@Id
	private int id;
	private boolean correct;
	private String content;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Answer() 
	{
		super();
	}

	public Answer(boolean correct, String content) 
	{
		super();
		this.correct = correct;
		this.content = content;
	}
	
}
