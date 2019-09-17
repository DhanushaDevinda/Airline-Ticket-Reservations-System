package com.airlinereservation.service;

import com.airlinereservation.model.Admin;
import com.airlinereservation.model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.airlinereservation.conn.DBConnection;

public class UserServiceImp implements IUserService {
	public void addUser(User user) {
		
		String addAdminQuery = "INSERT INTO user (userID, fname, lname, dob, country, language, email, countrycode, contactnum, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		
		try {
			// add data to agent table
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addAdminQuery);
			
			ps.setString(1, user.getUserID());
			ps.setString(2, user.getFname());
			ps.setString(3, user.getLname());
			ps.setString(4, user.getDob());
			ps.setString(5, user.getCountry());
			ps.setString(6, user.getLanguage());
			ps.setString(7, user.getEmail());
			ps.setString(8, user.getCountrycode());
			ps.setString(9, user.getContactnum());
			ps.setString(10, user.getPassword());
			
			ps.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	  @Override
	  public User updateUser(User user) {
		  
			 String updateUserQuery ="UPDATE user SET fname = ?, lname = ?, dob = ?, country = ?, language = ?, countrycode = ?, contactnum = ? WHERE userID = ?" ;
			 
			  
			  try { PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateUserQuery);
			  
			 
			  ps.setString(1, user.getFname());
			  ps.setString(2, user.getLname());
			  ps.setString(3,user.getDob());
			  ps.setString(4, user.getCountry());
			  ps.setString(5, user.getLanguage());
			  ps.setString(6, user.getCountrycode());
			  ps.setString(7, user.getContactnum());
			  ps.setString(8, user.getUserID());
			  ps.executeUpdate();
			  
			  } catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
			  
			  return user; 
			  }
			 
	  
	  @Override public void deleteUser(String userId) {
	  
	  String deleteUserQuery = "DELETE FROM user WHERE userID = ?";
	  
	  try {
	  
	  PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(deleteUserQuery);
	  ps.setString(1, userId); ps.executeUpdate();
	  
	  } catch (ClassNotFoundException | SQLException e) {
	  e.printStackTrace(); } 
	  }
	  
	 
	
	 public ArrayList<User> getUser(String email) {
	  
	  ArrayList<User> userList = new ArrayList<User>();
	  
	  String getAdminQuery = "SELECT * FROM user WHERE email = ?";
	  
	  try {
	  
	  PreparedStatement ps =
	  DBConnection.getDBconnection().prepareStatement(getAdminQuery);
	  
	  ps.setString(1, email);
	  
	  ResultSet resultSet = ps.executeQuery();
	  
	  while (resultSet.next()) {
	  
	  User user = new User();
	  
	  user.setUserID(resultSet.getString(1));
	  user.setFname(resultSet.getString(2));
	  user.setLname(resultSet.getString(3));
	  user.setDob(resultSet.getString(4));
	  user.setCountry(resultSet.getString(5));
	  user.setLanguage(resultSet.getString(6));
	  user.setEmail(resultSet.getString(7));
	  user.setCountrycode(resultSet.getString(8));
	  user.setContactnum(resultSet.getString(9));
	  user.setPassword(resultSet.getString(10));
	 
	  userList.add(user);
	  
	  }
	  
	  } catch (ClassNotFoundException | SQLException e) { 
	  // TODO Auto-generated
	  e.printStackTrace(); 
	  }
	  
	  return userList; }
	 
}

