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
import javax.servlet.http.HttpSession;

import com.airline.models.FlightClass;
import com.airline.models.Gender;
import com.airline.models.Passenger;
import com.airline.models.uRegistration;
import com.airline.service.PassengerService;
import com.airline.service.UserService;

/**
 * Servlet implementation class AddPassenger
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UserService us;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIn() {
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
		
		try
		{	    
			System.out.println("Yup!!");
			request.setAttribute("errors", false);
			
		     UserBean user = new UserBean();
		     String Uname = request.getParameter("username");
		       if(Uname=="User Name"){
		     		request.setAttribute("errors", true);
		     		request.setAttribute("uname_error", true);
		     	}
		       else{
		             user.setUserName(Uname);}
		     	
		       String Pword = request.getParameter("password");
		         if(Pword == "Password"){
		     		request.setAttribute("errors", true);
		     		request.setAttribute("pword_error", true);
		     	 }
		       else{
		               user.setPassword(Pword);}
		         
		         
   if((Boolean)request.getAttribute("errors")){
	   
	   System.out.println("Yup!!");
	   RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/login_form.jsp");
		view.forward(request, response); 
		        	 
		         }
		         
   else{
		     user = (UserBean) UserDAO.login(user);
			   		    
		     if (user.isValid())
		     {
			        
		          HttpSession session = request.getSession(true);	    
		          session.setAttribute("user",user); 
		          response.sendRedirect("airlineforms"); //logged-in page      		
		     }
			        
		     else 
		          response.sendRedirect("invalidLogin.jsp"); //error page 
          }
		} 
				
				
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
	}

}
