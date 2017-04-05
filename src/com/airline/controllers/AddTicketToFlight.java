package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.FlightClass;
import com.airline.models.Gender;
import com.airline.models.Passenger;
import com.airline.models.Ticket;
import com.airline.service.FlightService;
import com.airline.service.TicketService;

/**
 * Servlet implementation class AddPilotToFlight
 */
@WebServlet("/AddTicketToFlight")
public class AddTicketToFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	TicketService ts;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTicketToFlight() {
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
		
		String fclass = request.getParameter("fClass");
		String pid = request.getParameter("pid");
		String fid = request.getParameter("fid");
		
		Ticket t = new Ticket();
		
		t.setFlightClass(FlightClass.valueOf(fclass));
		
		System.out.println(t);
		
	    ts.addTicket(pid,fid,t);
	    
	    response.sendRedirect("Tickets");
	}

}
