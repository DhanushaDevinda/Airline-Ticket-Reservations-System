package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
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
		
		User user = new  User();
		IUserService iuserService = new UserServiceImp();
		
			user.setFname(request.getParameter("fname"));
			user.setLname(request.getParameter("lname"));
			
			user.setDob(request.getParameter("datebirth"));
			user.setCountry(request.getParameter("country"));
			
			user.setLanguage(request.getParameter("language"));
			user.setEmail(request.getParameter("email"));
			
			user.setCountrycode(request.getParameter("countrycode"));
			user.setContactnum(request.getParameter("contactnum"));
			
			user.setPassword(request.getParameter("password1"));
			
			iuserService.addUser(user);
			
			HttpSession session = request.getSession();
			session.setAttribute("currentSessionUser", user);

			System.out.println(request.getParameter("countrycode"));
			System.out.println(request.getParameter("password1"));
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showuser.jsp");
			dispatcher.forward(request, response);
			
	}

}
