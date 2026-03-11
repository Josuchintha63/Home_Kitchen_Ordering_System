package com.home.dto;

public class Users {
	
	private int User_id;
	private String Name;
	private String Email;
	private String Password;
	private String Role;
	private Long Phone;
	
	public Users(int user_id, String name, String email, String password, String role, Long phone) {
		super();
		User_id = user_id;
		Name = name;
		Email = email;
		Password = password;
		Role = role;
		Phone = phone;
	}
	public Users() {
		// TODO Auto-generated constructor stub
	}
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public Long getPhone() {
		return Phone;
	}
	public void setPhone(Long phone) {
		Phone = phone;
	}
	
	
	

}
