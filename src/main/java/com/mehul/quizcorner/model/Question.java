package com.mehul.quizcorner.model;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "question")
public class Question 
{
	@Id
	private int id;
	private String content;
	
	@javax.persistence.Transient
	private Set<Answer> answers = new HashSet<Answer>(0);
	
	public Question(String content, Set<Answer> answers) {
		super();
		this.content = content;
		this.answers = answers;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "question")
	public Set<Answer> getAnswers() {
		return answers;
	}

	public void setAnswers(Set<Answer> answers) {
		this.answers = answers;
	}

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
