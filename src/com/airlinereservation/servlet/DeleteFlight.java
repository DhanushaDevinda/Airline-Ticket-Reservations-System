package com.airlinereservation.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.airlinereservation.model.Flight;
import com.airlinereservation.service.FlightServiceImp;
import com.airlinereservation.service.IFlightService;


@WebServlet("/DeleteFlight")
public class DeleteFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public DeleteFlight() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  HttpSession session = request.getSession();
		  Flight flight = (Flight) session.getAttribute("currentSessionFlight");
		  
		  
		  IFlightService iFlightService = new FlightServiceImp();
		  
		  ArrayList<Flight> flightArrayList = iFlightService.getFlight(flight.getFlightID());
		  
		  for(Flight flightlist : flightArrayList){
		  
		  flight.setFlightNo(flightlist.getFlightNo());
		  
		  }
		 
			//String flightID = flight.getFlightID();
	//		String fid = request.getParameter("flightid");
			//String getFid = iFlightService.getFlightID(flightID);
			System.out.println(request.getParameter("flightid"));
		
			//System.out.println(flightID);
			//System.out.println(fid);
			//System.out.println(getFid);
			
		//if(fid.equals(getFid)) {	
		//	iFlightService.deleteFlight(fid);
		//	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showallflights.jsp");
		//	dispatcher.forward(request, response);
//		}
	////	else {
		//	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/deleteflight.jsp");
		//	dispatcher.forward(request, response);
	//	}
		
		session.setAttribute("currentSessionFlight", flight);

		

	}
}

