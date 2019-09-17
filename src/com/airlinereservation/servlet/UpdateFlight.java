package com.airlinereservation.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlinereservation.model.Flight;
import com.airlinereservation.service.FlightServiceImp;
import com.airlinereservation.service.IFlightService;


@WebServlet("/UpdateFlight")
public class UpdateFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateFlight() {
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
		
		  flight.setFlightID(request.getParameter("flightid"));
		  flight.setFlightname(request.getParameter("flightname"));
		  //flight.setLeaving(request.getParameter("leave"));
		 // flight.setGoing(request.getParameter("going"));
		  flight.setDdate(request.getParameter("departure"));
		  flight.setDtime(request.getParameter("dtime"));
		  flight.setAtime(request.getParameter("atime"));
		  flight.setFirst(request.getParameter("First"));
		  flight.setBusiness(request.getParameter("business"));
		  flight.setEcon(request.getParameter("economy"));
		  
		  iFlightService.updateFlight(flight);
		 
		
		 
		  session.setAttribute("currentSessionFlight", flight);
		  
		  
		  
		  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showflight.jsp");
		  dispatcher.forward(request, response);
		 
		 
		 
	}

}
