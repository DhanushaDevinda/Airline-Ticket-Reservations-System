package com.airlinereservation.service;

import java.util.ArrayList;

import com.airlinereservation.model.Admin;
import com.airlinereservation.model.User;

public interface IUserService {
	public void addUser(User user); 
	
	public User updateUser(User user);
	
	public void deleteUser(String userId);
	
	public ArrayList<User> getUser(String email);
}
