package com.airlinereservation.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.airlinereservation.conn.DBConnection;
import com.airlinereservation.model.Flight;

public class FlightServiceImp implements IFlightService {

	//Insert method
	@Override
	public void addFlight(Flight flight) {
			
		String addFlightQuery = "INSERT INTO flight (flightNo, flightID, flightname, leaving, going, img, ddate, dtime, atime, first, business, econ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		try {
			// add data to agent table
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addFlightQuery);
			
			ps.setString(1, flight.getFlightNo());
			ps.setString(2, flight.getFlightID());
			ps.setString(3, flight.getFlightname());
			ps.setString(4, flight.getLeaving());
			ps.setString(5, flight.getGoing());
			ps.setString(6, flight.getImg());
			ps.setString(7, flight.getDdate());
			ps.setString(8, flight.getDtime());
			ps.setString(9, flight.getAtime());
			ps.setString(10, flight.getFirst());
			ps.setString(11, flight.getBusiness());
			ps.setString(12,flight.getEcon());
			
			ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	//Display method
	@Override
	public ArrayList<Flight> getFlight(String flightID) {
		
		ArrayList<Flight> flightList = new ArrayList<Flight>();
		
		String getFlightQuery = "SELECT * FROM flight WHERE flightID = ?";
		
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getFlightQuery);
			
			ps.setString(1, flightID);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				
				Flight flight = new Flight();
				
				flight.setFlightNo(resultSet.getString(1));
				flight.setFlightID(resultSet.getString(2));
				flight.setFlightname(resultSet.getString(3));
				flight.setLeaving(resultSet.getString(4));
				flight.setGoing(resultSet.getString(5));
				flight.setDdate(resultSet.getString(7));
				flight.setDtime(resultSet.getString(8));
				flight.setAtime(resultSet.getString(9));
				flight.setFirst(resultSet.getString(10));
				flight.setBusiness(resultSet.getString(11));
				flight.setEcon(resultSet.getString(12));
				flight.setImg(resultSet.getString(6));
				
				flightList.add(flight);

			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flightList;
	}
	
	//Update flight
	@Override
	public Flight updateFlight(Flight flight) {
		
		String updateFlightQuery = "UPDATE flight SET flightID = ?, flightname = ?, ddate = ?, dtime = ?, atime = ?, first = ?, business = ?, econ = ? WHERE flightNo = ?";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateFlightQuery);
			
			ps.setString(1, flight.getFlightID());
			ps.setString(2, flight.getFlightname());
			ps.setString(3,flight.getDdate());
			ps.setString(4, flight.getDtime());
			ps.setString(5, flight.getAtime());
			ps.setString(6, flight.getFirst());
			ps.setString(7, flight.getBusiness());
			ps.setString(8, flight.getEcon());
			ps.setString(9, flight.getFlightNo());
			
			ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flight;
	}



	//Delete flight
	@Override
	public void deleteFlight(String flightID) {
		
		String deleteFlightQuery = "DELETE FROM flight WHERE flightID = ?";
		
		try {
			
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(deleteFlightQuery);
			ps.setString(1, flightID);
			ps.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}
	
	
	//Get flight id method to delete a flight
	@Override
	public String getFlightID(String flightID) {
		String flightid = null;
		String getflightIDQuery = "SELECT * FROM flight WHERE flightID = ?";
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(getflightIDQuery);
			
			ps.setString(1,flightID);
			
			ResultSet resultSet = ps.executeQuery();
			
			if(resultSet.next()) {
				
				flightid = resultSet.getString(8);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return flightid;
	}
	
	

}
