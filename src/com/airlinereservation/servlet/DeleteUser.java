package com.airlinereservation.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlinereservation.model.User;
import com.airlinereservation.service.IUserService;
import com.airlinereservation.service.UserServiceImp;

/**
 * Servlet implementation class DeleteUser
 */
@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUser() {
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
		  User user = (User)session.getAttribute("currentSessionUser");
		  
		  
		  IUserService iuserServise = new UserServiceImp();
		  
		  ArrayList<User> userArrayList = iuserServise.getUser(user.getEmail());
		  
		  for(User userlist : userArrayList){
		  
		  user.setUserID(userlist.getUserID());
		  
		  }
		  String email = user.getEmail();
			String Password = request.getParameter("password");
		//	String getPassword = iuserServise.getPassword(email);
			
			System.out.println(email);
			System.out.println(Password);
		//	System.out.println(getPassword);
			
		
			iuserServise.deleteUser(user.getUserID());
		//	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showalladmin.jsp");
			//dispatcher.forward(request, response);

		
		session.setAttribute("currentSessionUser", user);
	}

}
