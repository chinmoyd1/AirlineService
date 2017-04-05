package com.airline.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.models.uRegistration;
import com.airline.service.UserService;

/**
 * Servlet implementation class FancyForms
 */
@WebServlet("/PilotAdd")
public class PilotAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PilotAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session= request.getSession();
		
		if(session!=null){  
			UserBean user =(UserBean) session.getAttribute("user");
		
		PrintWriter out = response.getWriter();
		out.println("Welcome " + user.getFirstName() + " " + user.getLastName() + "!");
		
		
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/add_pilot_form.jsp");
		view.forward(request, response); 
		
		}
		  else{    
	            response.sendRedirect("login");  
	        }  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
