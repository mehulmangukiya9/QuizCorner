package com.mehul.quizcorner.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.mehul.quizcorner.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>
{
	@Query("SELECT u FROM Student u WHERE u.username = ?1 and u.password = ?2")
	Student findStudentByUsernameAndPassword(String username, String password);
	
	Student findByUsername(String username);
}
