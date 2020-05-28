package com.mehul.quizcorner.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "students")
public class Student 
{
	@Id
	private int student_id;
	private String name;
	private String email;
	private String username;
	private String password;
	private String address;
	
	public Student() {
		super();
	}
	
	public Student(int student_id, String name, String email, String username, String password, String address) {
		super();
		this.student_id = student_id;
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.address = address;
	}
	
	public Student(String name, String email, String username, String password, String address) {
		super();
		this.name = name;
		this.email = email;
		this.username = username;
		this.password = password;
		this.address = address;
	}
	
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", name=" + name + ", email=" + email + ", username=" + username
				+ ", password=" + password + ", address=" + address + "]";
	}
	
}
