package com.mehul.quizcorner.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "question")
public class Question 
{
	@Id
	private int id;
	private String content;
	
	@Override
	public String toString() {
		return "Question [id=" + id + ", content=" + content + "]";
	}
	
	public Question() {
		super();
	}
	
	public Question(String content) {
		super();
		this.content = content;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
