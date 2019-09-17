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

import com.airlinereservation.model.Admin;
import com.airlinereservation.service.AdminServiceImp;
import com.airlinereservation.service.IAdminService;

/**
 * Servlet implementation class UpdateAgent
 */
@WebServlet("/UpdateAgent")
public class UpdateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdmin() {
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
		
		//Admin admin = new Admin();
		IAdminService iAdminServise = new AdminServiceImp();
		
		ArrayList<Admin> adminArrayList = iAdminServise.getAdmin(admin.getNic());
										
		for(Admin adminlist : adminArrayList){
		
		admin.setAdminID(adminlist.getAdminID());
		
		}
		admin.setFname(request.getParameter("fname"));
		admin.setLname(request.getParameter("lname"));
		admin.setDob(request.getParameter("dob"));
		admin.setGender(request.getParameter("gender"));
		admin.setContactnum(request.getParameter("contactnum"));
		admin.setNic(request.getParameter("nic"));
	
		iAdminServise.updateAdmin(admin);
		
		
		session.setAttribute("currentSessionAdmin", admin);

		
		  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showadmin.jsp");
		  dispatcher.forward(request, response);
		
	}

	
	}
