package com.airlinereservation.service;

import java.util.ArrayList;
import com.airlinereservation.model.Flight;

public interface IFlightService {

	public void addFlight(Flight flight);
	public Flight updateFlight(Flight flight);
	public void deleteFlight(String flightID);
	public String getFlightID(String flightID);
	public ArrayList<Flight> getFlight(String flightID);
	

}
