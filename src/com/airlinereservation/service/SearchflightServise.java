package com.airlinereservation.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.airlinereservation.model.Searchflight;
import com.airlinereservation.conn.DBConnection;


public class SearchflightServise implements ISearchflight{
	
	@Override
	public void addSearchflight(Searchflight searchflight) {
		
		//INSERT INTO flightseats VALUES
		
		
		String bookticket ="INSERT INTO searchflight (ticketno, Email, Airport1, Airport2, Depdate, Retdate, Adult, Child, Infant, Classes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			// add data to user table
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(bookticket);
			
			
		    ps.setString(1, searchflight.getTicketno());
		    ps.setString(2, searchflight.getEmail());
			ps.setString(3, searchflight.getAirport1());
			ps.setString(4, searchflight.getAirport2());
			ps.setString(5, searchflight.getDepdate());
			ps.setString(6, searchflight.getRetdate());
			ps.setString(7, searchflight.getAdult());
			ps.setString(8, searchflight.getChild());
			ps.setString(9, searchflight.getInfant());
			ps.setString(10, searchflight.getClasses());
			ps.executeUpdate();
			
			// add data to useraccount table
			/*
			 * ps = DBConnection.getDBconnection().prepareStatement(addUserAccountQuery);
			 * 
			 * ps.setString(1, user.getUserID()); ps.setString(2, user.getUserName());
			 * ps.setString(3, user.getPassword());
			 * 
			 * ps.executeUpdate();
			 */
			
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	
}

	@Override
	public Searchflight updateSearchflight(Searchflight searchflight) {
		// TODO Auto-generated method stub
		
		String updateSearchflightQuery = "UPDATE searchflight SET Email = ?, Airport1 = ?, Airport2 = ?, Depdate = ?, Retdate = ?, Adult = ?, Child = ?, Infant = ?, Classes = ? WHERE Email = ?";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateSearchflightQuery);
			
			ps.setString(1, searchflight.getEmail());
			ps.setString(2, searchflight.getAirport1());
			ps.setString(3, searchflight.getAirport2());
			ps.setString(4, searchflight.getDepdate());
			ps.setString(5, searchflight.getRetdate());
			ps.setString(6, searchflight.getAdult());
			ps.setString(7, searchflight.getChild());
			ps.setString(8, searchflight.getInfant());
			ps.setString(9, searchflight.getClasses());
			ps.setString(10, searchflight.getEmail());
			ps.execute();
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return searchflight;
	}

	@Override
	public ArrayList<Searchflight> getSearchflight(String nic) {
		// TODO Auto-generated method stub
		ArrayList<Searchflight> searchflightList = new ArrayList<Searchflight>();
		
		String getSearchflightQuery = "SELECT * FROM searchflight WHERE nic= ?";
		
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getSearchflightQuery);
			
			ps.setString(1, nic);
			
			ResultSet resultSet = ps.executeQuery();
		
			while (resultSet.next()) {
				
				Searchflight flight = new Searchflight();
				flight.setEmail(resultSet.getString(1));
				flight.setAirport1(resultSet.getString(2));
				flight.setAirport2(resultSet.getString(3));
				flight.setDepdate(resultSet.getString(4));
				flight.setRetdate(resultSet.getString(5));
				flight.setAdult(resultSet.getString(6));
				flight.setChild(resultSet.getString(7));
				flight.setInfant(resultSet.getString(8));
				flight.setClasses(resultSet.getString(9));
								
				searchflightList.add(flight);

			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return searchflightList;
	}
	

	@Override
	public void deleteSearchflight(String email) {
		// TODO Auto-generated method stub
		String deleteSearchflightQuery = "DELETE FROM searchflight WHERE email = ?";
				
				try {
					
					PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(deleteSearchflightQuery);
					ps.setString(1, email);
					ps.executeUpdate();
					
				} catch (ClassNotFoundException | SQLException e) {
		
					e.printStackTrace();
				}
	}
}
