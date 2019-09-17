
package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.airlinereservation.service.ISearchflight;
import com.airlinereservation.service.SearchflightServise;
import com.airlinereservation.model.Checkin;
import com.airlinereservation.model.Flightstatus;
import com.airlinereservation.model.Searchflight;
import com.airlinereservation.model.Whatson;

/**
 * Servlet implementation class bookticket
 */
@WebServlet("/bookticket")
public class bookticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookticket() {
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
		
		ISearchflight searchf = new SearchflightServise();
		Checkin checkin = new Checkin();
		
		checkin.setName(request.getParameter("name"));
		checkin.setRefer(request.getParameter("refer"));
		checkin.setBook(request.getParameter("book"));
		checkin.setCheck(request.getParameter("check"));
		
		Flightstatus flightstatus = new Flightstatus();
		
		flightstatus.setRoute(request.getParameter("route"));
		flightstatus.setFlight(request.getParameter("flight"));
		flightstatus.setDepday(request.getParameter("depday"));
		flightstatus.setAriday(request.getParameter("ariday"));
		flightstatus.setDepair(request.getParameter("depair"));
		flightstatus.setRetair(request.getParameter("retair"));
		flightstatus.setDate(request.getParameter("date"));
		flightstatus.setSearch(request.getParameter("search"));
		
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
		
		Whatson whatson = new Whatson();
		
		whatson.setRoute(request.getParameter("route"));
		whatson.setFlight(request.getParameter("flight"));
		whatson.setDepair(request.getParameter("depair"));
		whatson.setRetair(request.getParameter("retair"));
		whatson.setDate(request.getParameter("date"));
		whatson.setSearch(request.getParameter("search"));
		
		
		searchf.addSearchflight(searchflight);
		
		HttpSession session1 = request.getSession();
		session1.setAttribute("currentSessionAgent", checkin);
		HttpSession session2 = request.getSession();
		session2.setAttribute("currentSessionFlight", flightstatus);
		HttpSession session3 = request.getSession();
		session3.setAttribute("currentSessionAgent", searchflight);
		HttpSession session4 = request.getSession();
		session4.setAttribute("currentSessionFlight", whatson);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showallcustomer.jsp");
		dispatcher.forward(request, response);
		
	
	}

}
