package com.airline.controllers;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.service.FlightService;
import com.airline.service.PassengerService;
import com.airline.service.PilotService;
import com.airline.service.TicketService;

/**
 * Servlet implementation class AddFlightTicketToPassenger
 */
@WebServlet("/CancelPilot")
public class CancelPilot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	PilotService pls;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelPilot() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String plid = request.getParameter("plid");
		
		pls.cancelTicket(plid);
		
		
		response.sendRedirect("Flights");
	}

}
