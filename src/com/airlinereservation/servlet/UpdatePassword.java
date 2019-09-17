package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlinereservation.model.Admin;
import com.airlinereservation.service.AdminServiceImp;
import com.airlinereservation.service.IAdminService;


/**
 * Servlet implementation class UpdatePassword
 */
@WebServlet("/UpdatePassword")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePassword() {
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
		Admin admin = (Admin) session.getAttribute("currentSessionAdmin");
		
		IAdminService iadminService = new AdminServiceImp();
		
		
		String nic = admin.getNic();
		String email = request.getParameter("email");
		String currentPassword = request.getParameter("curpassword");
		String getPassword = iadminService.getPassword(nic);
		String newPassword = request.getParameter("newpassword");

		
		if(getPassword.equals(currentPassword)) {
		iadminService.updatePassword(nic,newPassword);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showalladmin.jsp");
		dispatcher.forward(request, response);
		}
		
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/changepassword.jsp");
			dispatcher.forward(request, response);	
		}
		//session.setAttribute("currentSessionAdmin", admin);
		
		//session.setAttribute("currentSessionAdmin", admin);
	}

}
