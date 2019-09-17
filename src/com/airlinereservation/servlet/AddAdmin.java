package com.airlinereservation.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airlinereservation.conn.DBConnection;
import com.airlinereservation.model.Admin;
import com.airlinereservation.service.AdminServiceImp;
import com.airlinereservation.service.IAdminService;
/**
 * Servlet implementation class AddAdmin
 */
@WebServlet("/AddAdmin")
public class AddAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdmin() {
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
		
		Admin admin = new Admin();
		IAdminService iadminService = new AdminServiceImp();
	
		
		admin.setFname(request.getParameter("fname"));
		admin.setLname(request.getParameter("lname"));
		admin.setDob(request.getParameter("dob"));
		admin.setGender(request.getParameter("gender"));
		admin.setEmail(request.getParameter("email"));
		admin.setContactnum(request.getParameter("contactnum"));
		admin.setPassword(request.getParameter("pass"));
		admin.setNic(request.getParameter("nic"));
		admin.setType(request.getParameter("type"));
		
		iadminService.addAdmin(admin);
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("currentSessionAdmin", admin);

		
		
		  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showadmin.jsp");
		  dispatcher.forward(request, response);
		 
	}

}
