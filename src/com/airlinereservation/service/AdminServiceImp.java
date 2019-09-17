package com.airlinereservation.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.airlinereservation.model.Admin;
import com.airlinereservation.model.*;
import com.airlinereservation.conn.DBConnection;


public class AdminServiceImp implements IAdminService{

	@Override
	public void addAdmin(Admin admin) {
		
		String addAdminQuery = "INSERT INTO admin VALUES(?,?,?,?,?,?,?,?,?,?)";
		
		
		try {
			// add data to agent table
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addAdminQuery);
			
			ps.setString(1, admin.getAdminID());
			ps.setString(2, admin.getFname());
			ps.setString(3, admin.getLname());
			ps.setString(4, admin.getDob());
			ps.setString(5, admin.getGender());
			ps.setString(6, admin.getEmail());
			ps.setString(7, admin.getContactnum());
			ps.setString(8, admin.getPassword());
			ps.setString(9, admin.getNic());
			ps.setString(10, admin.getType());
			
			ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Admin updateAdmin(Admin admin) {
		
		String updateAdminQuery = "UPDATE admin SET fname = ?, lname = ?, dob = ?, gender = ?, contactnum = ?, nic = ? WHERE adminID = ?";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateAdminQuery);
			
			ps.setString(1, admin.getFname());
			ps.setString(2, admin.getLname());
			ps.setString(3,admin.getDob());
			ps.setString(4, admin.getGender());
			ps.setString(5, admin.getContactnum());
			ps.setString(6, admin.getNic());
			ps.setString(7, admin.getAdminID());
			
			ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return admin;
	}

	@Override
	public Admin loginAdmin(Admin admin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPassword(String nic) {
		String password = null;
		String getPasswordQuery = "SELECT * FROM admin WHERE nic = ?";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getPasswordQuery);
			
			ps.setString(1,nic);
			
			ResultSet resultSet = ps.executeQuery();
			
			if(resultSet.next()) {
				
				password = resultSet.getString(8);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return password;
	}

	@Override
	public void updatePassword(String nic, String password) {
		// TODO Auto-generated method stub
		
		String updateAdminPasswordQuery = "UPDATE admin SET password = ? WHERE nic = ?";
		//String updateUserRecoveryPasswordQuery = "UPDATE passwordrecovery SET password = ? WHERE userID = ?";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateAdminPasswordQuery);
			
			ps.setString(1, password);
			ps.setString(2, nic);
			
			ps.executeUpdate();
			
			
			//ps = DBConnection.getDBconnection().prepareStatement(updateUserRecoveryPasswordQuery);
			
			//ps.setString(1, password);
		//	ps.setString(2, userID);
			
		//	ps.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Override
	public ArrayList<Admin> getAdmin(String nic) {
		
		ArrayList<Admin> adminList = new ArrayList<Admin>();
		
		String getAdminQuery = "SELECT * FROM admin WHERE nic = ?";
		
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getAdminQuery);
			
			ps.setString(1, nic);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				
				Admin admin = new Admin();
				
				admin.setAdminID(resultSet.getString(1));
				admin.setFname(resultSet.getString(2));
				admin.setLname(resultSet.getString(3));
				admin.setDob(resultSet.getString(4));
				admin.setGender(resultSet.getString(5));
				admin.setEmail(resultSet.getString(6));
				admin.setContactnum(resultSet.getString(7));
				admin.setPassword(resultSet.getString(8));
				admin.setNic(resultSet.getString(9));
				admin.setType(resultSet.getString(10));
				
				
				adminList.add(admin);

			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return adminList;
	}

	@Override
	public ArrayList<String> getAdminDetails(){

		ArrayList<String> arrayList = new ArrayList<String>(); 
		
		String findAdminQuery = "SELECT * FROM admin";
		
		PreparedStatement ps;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(findAdminQuery);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(1));
				arrayList.add(resultSet.getString(2));
				arrayList.add(resultSet.getString(3));
				arrayList.add(resultSet.getString(4));
				arrayList.add(resultSet.getString(5));
				arrayList.add(resultSet.getString(6));
				arrayList.add(resultSet.getString(7));
				arrayList.add(resultSet.getString(8));
				arrayList.add(resultSet.getString(9));
				arrayList.add(resultSet.getString(10));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arrayList;
	}

	@Override
	public void deleteAdmin(String nic) {
		
		String deleteUserQuery = "DELETE FROM admin WHERE adminID = ?";
		
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(deleteUserQuery);
			ps.setString(1, nic);
			ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}



public ArrayList<Admin> getAdminlogin(String email) {
	
	ArrayList<Admin> adminList = new ArrayList<Admin>();
	
	String getAdminQuery = "SELECT * FROM admin WHERE email = ?";
	
	try {
		
		PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getAdminQuery);
		
		ps.setString(1, email);
		
		ResultSet resultSet = ps.executeQuery();
		
		while (resultSet.next()) {
			
			Admin admin = new Admin();
			
			admin.setAdminID(resultSet.getString(1));
			admin.setFname(resultSet.getString(2));
			admin.setLname(resultSet.getString(3));
			admin.setDob(resultSet.getString(4));
			admin.setGender(resultSet.getString(5));
			admin.setEmail(resultSet.getString(6));
			admin.setContactnum(resultSet.getString(7));
			admin.setPassword(resultSet.getString(8));
			admin.setNic(resultSet.getString(9));
			admin.setType(resultSet.getString(10));
			
			
			adminList.add(admin);

		}
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return adminList;
}
}