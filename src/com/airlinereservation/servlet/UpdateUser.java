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

import com.airlinereservation.model.User;
import com.airlinereservation.service.UserServiceImp;
import com.airlinereservation.service.IUserService;

/**
 * Servlet implementation class UpdateAgent
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
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
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("currentSessionUser");
		
		IUserService iUserServise = new UserServiceImp();
		
		ArrayList<User> userArrayList = iUserServise.getUser(user.getEmail());
										
		for(User userlist : userArrayList){
		
		user.setUserID(userlist.getUserID());
		
		}
		
		user.setFname(request.getParameter("fname"));
		user.setLname(request.getParameter("lname"));
		user.setDob(request.getParameter("datebirth"));
		user.setCountry(request.getParameter("country"));
		user.setLanguage(request.getParameter("language"));
		user.setCountrycode(request.getParameter("countrycode"));
		user.setContactnum(request.getParameter("contactnum"));
		user.setEmail(request.getParameter("email"));
		 
		  
		iUserServise.updateUser(user);
		
		
		System.out.println(user.getUserID());
		session.setAttribute("currentSessionUser", user);
		

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showuser.jsp");
	    dispatcher.forward(request, response);
		
		
		/*
		 * String confirmString = "Profile updated!";
		 * request.setAttribute("confirmString", confirmString);
		 * 
		 * 
		 * 
		 * RequestDispatcher dispatcher =
		 * getServletContext().getRequestDispatcher("/edituser.jsp");
		 * dispatcher.forward(request, response);
		 */
	}

	
	}
