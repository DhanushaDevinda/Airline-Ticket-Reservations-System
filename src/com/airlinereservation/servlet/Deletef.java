package com.airlinereservation.servlet;

import java.io.IOException;

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

/**
 * Servlet implementation class Deletef
 */
@WebServlet("/Deletef")
public class Deletef extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deletef() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("flightid"));
		
		IFlightService iFlightService = new FlightServiceImp();
		
		HttpSession session = request.getSession();
		Flight flight = (Flight) session.getAttribute("currentSessionFlight");
		
		iFlightService.deleteFlight(request.getParameter("flightid"));
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showallflight.jsp");
		dispatcher.forward(request, response);
		
	}

}
