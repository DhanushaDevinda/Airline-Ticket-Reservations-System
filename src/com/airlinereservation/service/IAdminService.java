package com.airlinereservation.service;

import java.util.ArrayList;
import com.airlinereservation.model.Admin;

public interface IAdminService {
	
	public void addAdmin(Admin admin);

	public Admin updateAdmin(Admin admin);
	
	public void deleteAdmin(String nic);
	
	public Admin loginAdmin(Admin admin);
	
	public String getPassword(String nic);
	
	public void updatePassword(String nic, String adminID);
	
	public ArrayList<Admin> getAdmin(String nic);
	
	public ArrayList<String> getAdminDetails();
	public ArrayList<Admin> getAdminlogin(String email) ;
}
