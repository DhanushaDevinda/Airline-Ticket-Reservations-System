package com.airlinereservation.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airlinereservation.model.Admin;
import com.airlinereservation.model.User;
import com.airlinereservation.service.AdminServiceImp;
import com.airlinereservation.service.IAdminService;
import com.airlinereservation.service.IUserService;
import com.airlinereservation.service.UserServiceImp;

/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
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
		
		String uname = (request.getParameter("username"));
		String pass = (request.getParameter("password"));	
		
		  User user = new User(); IUserService iUserServise = new UserServiceImp();
		  
		  ArrayList<User> userArrayList = iUserServise.getUser(uname);
		  
		  for(User userlist : userArrayList){
		  
		  user.setPassword(userlist.getPassword());
		  
		  } 
		  
		  if(user.getPassword() != null) {
		  if(user.getPassword().equals(pass)) {
		  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/searchflight.jsp");
		  dispatcher.forward(request, response);
		  }
		  
		  else {
			  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/usersignin.jsp");
			  dispatcher.forward(request, response);
		  }
		  
		  }

		 
			
		  else {
			
			  Admin admin = new Admin(); IAdminService iAdminServise = new AdminServiceImp();
			  
			  ArrayList<Admin> adminArrayList = iAdminServise.getAdminlogin(uname);
			  
			  for(Admin adminlist : adminArrayList){
			  
			  admin.setPassword(adminlist.getPassword());
			  admin.setType(adminlist.getType());
			  
			  }
			  
			  System.out.println(admin.getPassword());
			  System.out.println(admin.getType());
			  System.out.println(pass);
			  System.out.println(user.getPassword());
			  
			  if(admin.getPassword().equals(pass) && admin.getType().equals("Admin")) {	
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addadmin.jsp");
				    dispatcher.forward(request, response);
				}
			  else {
				  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/usersignin.jsp");
				  dispatcher.forward(request, response);
			  }
			  
		  }
	}

}
