package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlinereservation.model.Flight;
import com.airlinereservation.service.FlightServiceImp;
import com.airlinereservation.service.IFlightService;


@WebServlet("/AddFlight")
@MultipartConfig(maxFileSize=16177216)//up to 16mb
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddFlight() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				  Flight flight = new Flight(); 
				  IFlightService iflightService = new FlightServiceImp();
				  
				  flight.setFlightID(request.getParameter("flightid"));
				  flight.setFlightname(request.getParameter("flightname"));
				  flight.setLeaving(request.getParameter("leave"));
				  flight.setGoing(request.getParameter("going"));
				  flight.setImg(request.getParameter("img"));
				  flight.setDdate(request.getParameter("departure"));
				  flight.setDtime(request.getParameter("dtime"));
				  flight.setAtime(request.getParameter("atime"));
				  flight.setFirst(request.getParameter("First"));
				  flight.setBusiness(request.getParameter("business"));
				  flight.setEcon(request.getParameter("economy"));
				  
				  iflightService.addFlight(flight);
				 
				
				  HttpSession session = request.getSession();
				  session.setAttribute("currentSessionFlight", flight);
				  
				  
				  
				  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showflight.jsp");
				  dispatcher.forward(request, response);
				 
				 
				 
			}
}
