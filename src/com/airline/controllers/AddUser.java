package com.airline.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.FlightClass;
import com.airline.models.Gender;
import com.airline.models.Passenger;
import com.airline.models.uRegistration;
import com.airline.service.PassengerService;
import com.airline.service.UserService;

/**
 * Servlet implementation class AddPassenger
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UserService us;
	
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
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("!!!!!!!!!!!!!!!!got here!!!!!!!!!!!!!!!");
		
		String fName = request.getParameter("fname");
		String lName = request.getParameter("lname");
		String dob_raw = request.getParameter("db");
		String gender = request.getParameter("gend");
		String designation = request.getParameter("desig");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		uRegistration u = new uRegistration();
		
		u.setFirstName(fName);
		u.setLastName(lName);
		
		String[] dobArr = dob_raw.split("\\/");
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.YEAR, Integer.parseInt(dobArr[2]));
		cal.set(Calendar.MONTH,Integer.parseInt(dobArr[0]) - 1);
		cal.set(Calendar.DAY_OF_MONTH,Integer.parseInt(dobArr[1]));
		
		Date dob = cal.getTime();
		
		u.setDob(dob);
		
		u.setGender(Gender.valueOf(gender));
		
		u.setDesignation(designation);
		
		u.setUserName(userName);
		
		u.setPassword(password);
		
		System.out.println(u);
		
		us.addUser(u);
		
		
		 response.sendRedirect("login");
		
	}

}
