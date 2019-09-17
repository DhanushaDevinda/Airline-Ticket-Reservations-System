package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlinereservation.model.Searchflight;
import com.airlinereservation.service.ISearchflight;
import com.airlinereservation.service.SearchflightServise;

/**
 * Servlet implementation class Updatebookticket
 */
@WebServlet("/Updatebookticket")
public class Updatebookticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatebookticket() {
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
		// TODO Auto-generated method stub
		
		ISearchflight isearchflight = new SearchflightServise();
		Searchflight searchflight = new Searchflight();
		
		searchflight.setEmail(request.getParameter("email"));
		searchflight.setAirport1(request.getParameter("airport1"));
		searchflight.setAirport2(request.getParameter("airport2"));
		searchflight.setDepdate(request.getParameter("depdate"));
		searchflight.setRetdate(request.getParameter("retdate"));
		searchflight.setAdult(request.getParameter("adult"));
		searchflight.setChild(request.getParameter("child"));
		searchflight.setInfant(request.getParameter("infant"));
		searchflight.setClasses(request.getParameter("classes"));
		
		isearchflight.updateSearchflight(searchflight);

		
//		HttpSession session1 = request.getSession();
//		session1.setAttribute("currentSessionAgent", searchflight);
		
		
		/*
		 * String confirmString = "Profile updated!";
		 * request.setAttribute("confirmString", confirmString);
		 */
		
		/*
		 * RequestDispatcher dispatcher =
		 * getServletContext().getRequestDispatcher("/profile.jsp");
		 * dispatcher.forward(request, response);
		 */
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showallcustomer.jsp");
		dispatcher.forward(request, response);
	}

}