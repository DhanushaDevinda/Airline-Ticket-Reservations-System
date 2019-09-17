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
 * Servlet implementation class DeleteAdmin
 */
@WebServlet("/DeleteAdmin")
public class DeleteAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAdmin() {
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

		
		  HttpSession session = request.getSession();
		  Admin admin = (Admin) session.getAttribute("currentSessionAdmin");
		  
		  
		  IAdminService iAdminServise = new AdminServiceImp();
		  
		  ArrayList<Admin> adminArrayList = iAdminServise.getAdmin(admin.getNic());
		  
		  for(Admin adminlist : adminArrayList){
		  
		  admin.setAdminID(adminlist.getAdminID());
		  
		  }
		 
			String nic = admin.getNic();
			String Password = request.getParameter("password");
			String getPassword = iAdminServise.getPassword(nic);
			
		
			System.out.println(nic);
			System.out.println(Password);
			System.out.println(getPassword);
			
		if(Password.equals(getPassword)) {	
		iAdminServise.deleteAdmin(admin.getAdminID());
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/showalladmin.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/deleteadmin.jsp");
			dispatcher.forward(request, response);
		}
		
		session.setAttribute("currentSessionAdmin", admin);

		

	}

}
