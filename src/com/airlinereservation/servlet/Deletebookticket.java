package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlinereservation.model.Searchflight;
import com.airlinereservation.service.ISearchflight;
import com.airlinereservation.service.SearchflightServise;


/**
 * Servlet implementation class DeleteAgent
 */
@WebServlet("/Deletebookticket")
public class Deletebookticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Deletebookticket() {
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
		//Agent agent = new Agent();
		
		HttpSession session1 = request.getSession();
		Searchflight searchflight = (Searchflight) session1.getAttribute("currentSessionAgent");

		
		ISearchflight isearchflight = new SearchflightServise();
		
		//String email = "buddika@gmail.com";
		
		String email = searchflight.getEmail();
		//String currentpassword = request.getParameter("password");
		//String getPassword = isearchflight.getPassword(nic);
		
		//if(getPassword.equals(currentpassword)) {
		//	iagentService.deleteAgent(nic);
		isearchflight.deleteSearchflight(email);
		
		
		//agent.setEmail(request.getParameter("username"));
		//agent.setPassword(request.getParameter("password"));
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchflight.jsp");
		dispatcher.forward(request, response);
		
		
	

}
}