package com.akyuz.entity;

import lombok.Data;

@Data
public class Student {
	
	private int id;
	private String name;
	private String email;
	private String dob;
	private String adress;
	private String phno;
	private String gender;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Student(String name, String email, String dob, String adress, String phno, String gender, String password) {
	
		this.name = name;
		this.email = email;
		this.dob = dob;
		this.adress = adress;
		this.phno = phno;
		this.gender = gender;
		this.password = password;
	}
	public Student() {
		
	}
	
	
	
}
